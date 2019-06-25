// opcode 선언
var opcodes = {
    READ: 10,
    WRITE: 11,
    LOAD: 20,
    STORE: 21,
    ADD: 30,
    SUBTRACT: 31,
    DIVIDE: 32,
    MULTIPLY: 33,
    BRANCH: 40,
    BRANCHNEG: 41,
    BRANCHZERO: 42,
    HALT: 43
};

// 메모리, 주소부 등 컴퓨터 동작 원리에 필요한 변수 선언 및 초기화
var memory = [],
    instructionCounter = 0,
    instructionRegister = 0,
    operator = 0,
    operand = 0,
    nextCounter = 0,
    accumulator = 0,
    halted = false,
    debug = false;

// 버튼 및 textarea 원소값 받아와서 변수에 정의
var btnLoad = document.getElementById('btn-load'),
    btnExec = document.getElementById('btn-exec'),
    btnDebug = document.getElementById('btn-debug'),
    btnClear = document.getElementById('btn-clear'),
    code = document.querySelector('#code textarea'),
    output = document.querySelector('#output textarea');

// 메모리 0 값으로 초기 설정
for(var i = 0; i < 100; i++) {
    memory.push(0);
}

// 지속적으로 메모리 덤프를 업데이트 하기 위한 함수
setInterval(function() {
    var dump = 'REGISTERS : ' +
    	'\naccumulator : ' + format(accumulator) +
        '\ninstructionCounter : ' + format(instructionCounter) + 
        '\nnextCounter : ' + format(nextCounter) +
        '\ninstructionRegister : ' + format(instructionRegister) + 
        '\noperationcode : ' + format(operator) + 
        '\noperand : ' + format(operand) + 
        '\n\n\t0\t1\t2\t3\t4\t5\t6\t7\t8\t9\n';
    
    for(var i1 = 0; i1 < 10; i1++) {
        dump += i1 * 10;
        
        for(var i2 = 0; i2 < 10; i2++) {
            dump += '\t' + format(memory[i1 * 10 + i2]);
        }
        
        dump += '\n'
    }
    
    document.querySelector('#dump textarea').innerText = dump;
}, 100);

// Load into memory 버튼 클릭 시 code에 작성한 값들을 메모리에 올림
btnLoad.addEventListener('click', function() {
    btnDebug.innerText = 'Debug';
    
    debug = false;
    var lines = code.value.split('\n');

    if(isValid(lines)) {
    	
        consoleStatus('Program loading completed');

        memory.forEach(function(value, index) {
            if(index < lines.length) {
                memory[index] = ~~lines[index].substring(4);
            } else {
                memory[index] = 0;
            }
        });

    } else {
        error();
    }
});

// Execute 버튼 클릭 시 메모리에 있는 값들을 수행
btnExec.addEventListener('click', function() {
    if(debug) {
        alert('You are already debugging. Please click "Load into memory" to stop debugging.');
        return;
    }
    
    consoleStatus('Program execution begins');

    halted = false;
    instructionCounter = 0;
    nextCounter = 0;
    accumulator = 0;

    // 정지상태가 아니라면 다음 명령을 계속 수행
    while(!halted) {
        execInstruction();
    }
});

// Debug 버튼 클릭 시 한줄씩 디버깅
btnDebug.addEventListener('click', function() {
    if(!debug) {
        debug = true;
        halted = false;
        instructionCounter = 0;
        nextCounter = 0;
        accumulator = 0;
        
        btnDebug.innerText = 'Next Line';
    }
    
    execInstruction();
});

// 콘솔 창 초기화
btnClear.addEventListener('click', function() {
    output.value = '*** Welcome to Simpletron! ***\n' + 
    '*** Please enter your program one instruction ***\n' +
    '*** (or data word) at a time. I will type the ***\n' +
    '*** location number and a question mark (?) ***\n' +
    '*** You then type the word for that location. ***\n' +
    '*** your program ***\n\n';
});

// 다음 명령 수행
function execInstruction() {
    instructionCounter = nextCounter;

    if(instructionCounter === memory.length) {
        halt();
    }
    
    instructionRegister = ~~(memory[instructionCounter]);
    operator = ~~(instructionRegister / 100);
    operand = instructionRegister % 100;

    nextCounter = instructionCounter + 1;

    switch(operator) {
        case opcodes.READ:
            memory[operand] = parseInt(prompt('Input from -9999 to 9999'), 10) || 0;
            break;
        case opcodes.WRITE:
            consoleWrite_no('Result : ') + consoleWrite(memory[operand]);
            break;
        case opcodes.LOAD:
            accumulator = memory[operand];
            break;
        case opcodes.STORE:
            memory[operand] = accumulator;
            break;
        case opcodes.ADD:
            accumulator += memory[operand];
            break;
        case opcodes.SUBTRACT:
            accumulator -= memory[operand];
            break;
        case opcodes.MULTIPLY:
            accumulator *= memory[operand];
            break;
        case opcodes.DIVIDE:
            if(accumulator === 0) {
                consoleStatus('FATAL ERROR: division by zero');
                halt();
            } else {
                accumulator /= memory[operand];    
            }
            break;
        case opcodes.BRANCH:
            nextCounter = operand;
            break;
        case opcodes.BRANCHNEG:
            if(accumulator < 0) {
                nextCounter = operand;
            }
            break;
        case opcodes.BRANCHZERO:
            if(accumulator === 0) {
                nextCounter = operand;
            }
            break;
        case opcodes.HALT:
            halt();
            break;
        default:
            consoleStatus('FATAL ERROR: invalid operation code');
            halt();
            break;
    }

    // 누산기안에 값이 overflow 혹은 underflow 인지 체크
    if(accumulator > 9999) {
        consoleStatus('FATAL ERROR: accumulator overflow');
        halt();
    } else if(accumulator < -9999) {
        consoleStatus('FATAL ERROR: accumulator underflow');
        halt();
    }

    var loc = -1;
    var flow = 0;

    // 메모리 안에 있는 값이 overflow 혹은 underflow 인지 체크
    for(var i = 0; i < memory.length && loc === -1; i++) {
        if(Math.abs(memory[i]) > 9999) {
            loc = i;
            flow = Math.sign(memory[i]);
        }
    }

    if(loc > -1) {
        consoleStatus('FATAL ERROR: ' + (flow === -1 ? 'under' : 'over') + 'flow at memory location ' + loc);
        halt();
    }
}

// 맨 처음에 정의해준 주소부 등 SML 변수가 유효한지 확인
function isValid(lines) {
    // 모든 라인이 정확한 형식인지 확인
    if(lines.filter(function(value) {
        return !value.match(/^\d{2}: (\+|-)?\d{4}$/ig);
    }).length) {
        return false;
    } else {
        var valid = true;

        // 메모리 위치가 올바른지 확인
        lines.forEach(function(value, index) {
            var num = parseInt(value.substring(0, 2), 10);

            if(index === 0) {
                if(num !== 0) {
                    valid = false;
                }
            } else {
                var prev = parseInt(lines[index - 1].substring(0, 2), 10);

                if(num - prev !== 1) {
                    valid = false;
                }
            }
        });

        return valid;
    }

    return true;
}

// 코드가 심플트론 룰에 적합하지 않다면 에러를 발생
function error() {
    alert('The code does not match the SML syntax rules. Please check it and try again.');
}

// 프로그램 정지
function halt() {
    consoleStatus('Program halted');
    halted = true;
    debug = false;
    
    btnDebug.innerText = 'Debug';
}

//콘솔에 작성되도록 해주는 함수 (줄바꿈 없이)
function consoleWrite_no(val) {
    output.value += val;
    output.scrollTop = output.scrollHeight;
}

// 콘솔에 작성되도록 해주는 함수
function consoleWrite(val) {
    output.value += val + '\n';
    output.scrollTop = output.scrollHeight;
}

// 콘솔에 작성되는 문장의 형식을 지정
function consoleStatus(val) {
    consoleWrite('*** ' + val + ' ***');
}

// 메모리 덤프에 값을 넣을 때 양수, 음수를 판별하여 부호를 설정함
function format(num) {
    var sign = (num >= 0 ? '+' : '-');
    
    num = Math.abs(num) + '';
    
    while(num.length < 4) {
        num = '0' + num;
    }
    
    return sign + num;
}
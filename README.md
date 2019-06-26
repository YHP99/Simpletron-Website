## Step 1
Add the boardUpload folder to WebContent so that the QnA bulletin works well.

## Step 2
Create a database and create a table using board.sql in board folder.

## Step 3
Change the user and password same with your database
1. META-INF -> context.xml
2. WEB-INF -> classes -> sboard -> DBConnectionMgr.java
3. WEB-INF -> classes -> slogin -> DBConnectionMgr.java

Also if you don't use mysql for database, you must change the database driver in these files.

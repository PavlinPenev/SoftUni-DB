BACKUP DATABASE SoftUni
TO DISK = 'D:\SoftUniDB.bak'
--Execute the backup(first 2 lines) and proceed with further queries
DROP DATABASE SoftUni
RESTORE DATABASE SoftUni 
FROM DISK = 'D:\SoftUniDB.bak'
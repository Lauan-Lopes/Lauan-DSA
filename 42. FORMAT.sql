
USE ContosoRetailDW



SELECT 
	GETDATE(),
	FORMAT(GETDATE(),'yyyy/MM/dd HH:mm'),
	FORMAT(GETDATE(),'yyyy-MM-dd HH:mm:ss'),
	FORMAT(GETDATE(),'yyyy-MM'),
	FORMAT(GETDATE(),'yyyy-MMM')
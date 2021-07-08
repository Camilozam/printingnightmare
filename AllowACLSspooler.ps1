$Path = "C:\Windows\System32\spool\drivers"

$Acl = (Get-Item $Path).GetAccessControl('Access')

$Ar = New-Object  System.Security.AccessControl.FileSystemAccessRule("System", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")

$Acl.AddAccessRule($Ar)

Set-Acl $Path $Acl
## Create New Users in Active Directory On Prem ##
$Name = 'John Doe'
$GivenName = 'John'
$Surname = 'Doe'
$SamAccountName = 'jdoe'
$UserPrincipalName = 'jdoe@yourdomain.com'
$AccountPassword = 'Jdoe54321'
New-ADUser -Name $Name -GivenName $GivenName  -Surname $Surname -SamAccountName $SamAccountName -UserPrincipalName $UserPrincipalName -AccountPassword (ConvertTo-SecureString $AccountPassword -AsPlainText -Force) -Enabled $true -Path "OU=Users,OU=Site,OU=City,OU=Offices,DC=YourDC,DC=org"

$CurrentDomain = Get-ADDomain
$RootDN = $CurrentDomain.DistinguishedName

function OrgKit-CreateOU
{
New-ADOrganizationalUnit -Name $OUName -Path $OUPath -Description $OUDescription
}

# Corp Groups
$OUName = "Corp Groups"
$OUPath = $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Root DNs
$OUName = "Root"
$OUPath = "OU=Corp Groups," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

#---------

# Corp Users
$OUName = "Corp Users"
$OUPath = $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Service Accounts
$OUName = "Service Accounts"
$OUPath = "OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Service Accounts\Tier0
$OUName = "Tier0"
$OUPath = "OU=Service Accts,OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Service Accounts\Tier1
$OUName = "Tier1"
$OUPath = "OU=Service Accts,OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Service Accounts\Tier2
$OUName = "Tier2"
$OUPath = "OU=Service Accts,OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Shared Mailboxes
$OUName = "Shared Mailboxes"
$OUPath = "OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Employees
$OUName = "Employees"
$OUPath = "OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Employees\Site1
$OUName = "Site1"
$OUPath = "OU=Employees,OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Employees\Site1\Test Users
$OUName = "Test Users"
$OUPath = "OU=Site1,OU=Employees,OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Users\Privileged
$OUName = "Privileged"
$OUPath = "OU=Corp Users," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

#---------

# Corp Workstations
$OUName = "Corp Workstations"
$OUPath = $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\Computers
$OUName = "Computers"
$OUPath = "OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\Computers\Site1
$OUName = "Site1"
$OUPath = "OU=Computers,OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\Computers\Site1\Test Computers
$OUName = "Test Computers"
$OUPath = "OU=Site1,OU=Computers,OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\Training Lab
$OUName = "Training Lab"
$OUPath = "OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\PAW
$OUName = "PAW"
$OUPath = "OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\PAW\Tier0
$OUName = "Tier0"
$OUPath = "OU=PAW,OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\PAW\Tier1
$OUName = "Tier1"
$OUPath = "OU=PAW,OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Workstations\PAW\Tier2
$OUName = "Tier2"
$OUPath = "OU=PAW,OU=Corp Workstations," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

#---------

# Corp Servers
$OUName = "Corp Servers"
$OUPath = $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Servers\Tier0
$OUName = "Tier0"
$OUPath = "OU=Corp Servers," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Servers\Tier1
$OUName = "Tier1"
$OUPath = "OU=Corp Servers," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

# Corp Servers\Tier2
$OUName = "Tier2"
$OUPath = "OU=Corp Servers," + $RootDN
$OUDescription = ""
OrgKit-CreateOU

#---------

# z AD ACLs
$OUName = "z AD ACLs"
$OUPath = $RootDN
$OUDescription = ""
OrgKit-CreateOU
$CurrentDomain = Get-ADDomain
$RootDN = $CurrentDomain.DistinguishedName

function OrgKit-CreateOU {
    param (
        [string]$OUName,
        [string]$OUPath,
        [string]$OUDescription = ""
    )
    New-ADOrganizationalUnit -Name $OUName -Path $OUPath -Description $OUDescription
}

$OUs = @(
    @{Name="Corp Groups"; Path=$RootDN},
    @{Name="Root"; Path="OU=Corp Groups,$RootDN"},
    @{Name="Corp Users"; Path=$RootDN},
    @{Name="Service Accounts"; Path="OU=Corp Users,$RootDN"},
    @{Name="Tier0"; Path="OU=Service Accounts,OU=Corp Users,$RootDN"},
    @{Name="Tier1"; Path="OU=Service Accounts,OU=Corp Users,$RootDN"},
    @{Name="Tier2"; Path="OU=Service Accounts,OU=Corp Users,$RootDN"},
    @{Name="Shared Mailboxes"; Path="OU=Corp Users,$RootDN"},
    @{Name="Employees"; Path="OU=Corp Users,$RootDN"},
    @{Name="Site1"; Path="OU=Employees,OU=Corp Users,$RootDN"},
    @{Name="Test Users"; Path="OU=Site1,OU=Employees,OU=Corp Users,$RootDN"},
    @{Name="Privileged"; Path="OU=Corp Users,$RootDN"},
    @{Name="Corp Workstations"; Path=$RootDN},
    @{Name="Computers"; Path="OU=Corp Workstations,$RootDN"},
    @{Name="Site1"; Path="OU=Computers,OU=Corp Workstations,$RootDN"},
    @{Name="Test Computers"; Path="OU=Site1,OU=Computers,OU=Corp Workstations,$RootDN"},
    @{Name="Training Lab"; Path="OU=Corp Workstations,$RootDN"},
    @{Name="PAW"; Path="OU=Corp Workstations,$RootDN"},
    @{Name="Tier0"; Path="OU=PAW,OU=Corp Workstations,$RootDN"},
    @{Name="Tier1"; Path="OU=PAW,OU=Corp Workstations,$RootDN"},
    @{Name="Tier2"; Path="OU=PAW,OU=Corp Workstations,$RootDN"},
    @{Name="Corp Servers"; Path=$RootDN},
    @{Name="Tier0"; Path="OU=Corp Servers,$RootDN"},
    @{Name="Tier1"; Path="OU=Corp Servers,$RootDN"},
    @{Name="Tier2"; Path="OU=Corp Servers,$RootDN"},
    @{Name="z AD ACLs"; Path=$RootDN}
)

foreach ($ou in $OUs) {
    OrgKit-CreateOU -OUName $ou.Name -OUPath $ou.Path
}

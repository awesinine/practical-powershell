# Active Directory Cheatsheet :heart:

## DCPROMO replacements
Install-ADDSForest
Install-ADDSDomain
Install-ADDSDomainController
Uninstall-ADDSDomainController

## CSVDE replacements
Get-ADObject | Export-CSV
Import-CSV | New-ADObject

## DSGET replacements
Get-ADComputer
Get-ADObject -LDAPFilter '(objectClass=contact)' 
Get-ADReplicationSubnet
Get-ADGroup
Get-ADOrganizationalUnit
Get-ADReplicationSite
Get-ADDomainController
Get-ADUser
Get-ADObject -SearchBase (Get-ADDomain).QuotasContainer -Filter *
Get-ADObject -SearchBase (Get-ADForest).PartitionsContainer -LDAPFilter '(objectClass=crossRef)'
Get-ADComputer
Search-ADAccount

## DSQUERY replacements
Get-ADObject -LDAPFilter '(objectClass=contact)'
Get-ADReplicationSubnet
Get-ADGroup
Get-ADOrganizationalUnit
Get-ADReplicationSite
Get-ADDomainController
Get-ADUser
Search-ADAccount
Get-ADObject -SearchBase (Get-ADDomain).QuotasContainer -Filter *
Get-ADObject -SearchBase (Get-ADForest).PartitionsContainer -LDAPFilter '(objectClass=crossRef)'
Get-ADObject

## DSADD replacements
New-ADComputer
New-ADObject -Type contact
New-ADGroup
New-ADOrganizationalUnit
New-ADUser

## DSMOVE replacements
Move-ADObject
Rename-ADObject

## DSMOD replacements
Set-ADComputer
Set-ADObject
Set-ADGroup
Set-ADOrganizationalUnit
Set-ADObject
Set-ADUser
DSet-ADObject
Set-ADObject

## DSRM replacements
Remove-ADComputer
Remove-ADGroup
Remove-ADGroupMember
Remove-ADUser
Remove-ADOrganizationalUnit
Remove-ADObject

## DSMACLS replacements
Get-ACL
Set-ACL

## REPADMIN replacements
Get-ADReplicationFailure
Get-ADReplicationQueueOperation
Sync-ADObject
Get-ADReplicationConnection
Get-ADReplicationAttributeMetadata
Get-ADReplicationPartnerMetadata
Get-ADReplicationUpToDatenessVectorTable
Set-ADReplicationSite
Get-ADObject
Set-ADObject
Get-ADDomainControllerPasswordReplicationPolicy
Add-ADDomainControllerPasswordReplicationPolicy
Remove-ADDomainControllerPasswordReplicationPolicy
Get-ADAccountResultantPasswordReplicationPolicy
Get-ADDomainControllerPasswordReplicationPolicyUsage


## NLTEST replacements
Test-ComputerSecureChannel -Repair
Test-ComputerSecureChannel
Reset-ComputerMachinePassword
Get-ADDomainController
Get-ADDomain | Select-Object PDCEmulator
Get-ADDomainController
(Get-WMIObject Win32_ComputerSystem).Domain
Get-ADTrust
Stop-Computer

## NETDOM replacements
Add-Computer
Rename-Computer
Add-Computer
Add-Computer
Reset-ComputerMachinePassword
Remove-Computer
Rename-Computer
Test-ComputerSecureChannel -Repair
Test-ComputerSecureChannel
Get-ADComputer -Filter "operatingSystem -notlike '*server*'"
Get-ADComputer -Filter "operatingSystem -like '*server*'"
Get-ADDomainController
Get-ADOrganizationalUnit
Get-ADDomain | Select-Object PDCEmulator
NGet-ADForest | Select-Object DomainNamingMaster, SchemaMaster
Get-ADDomain | Select-Object InfrastructureMaster, PDCEmulator, RIDMaster
Get-ADTrust

## Group Policy
GInvoke-GPUpdate
Get-GPResultantSetOfPolicy

# IP

## IPCONFIG replacement
Test-Connection
Get-NetIPConfiguration
Get-NetIPConfiguration -Detailed
Clear-DnsClientCache
Get-DnsClientCashe
Register-DnsClient

## NETSTAT replacements
Get-NetTCPConnection
Get-NetRoute

# DNS
## NSLOOKUP replacement
Resolve-DNSName

## DNSCMD replacements

Get-DnsServer
Set-DnsServer
Get-DnsServerZone
Get-DnsServerStatistics
Clear-DnsServerStatistics
Clear-DnsServerCache
Start-DnsServerScavenging
Get-DnsServerForwarder
Set-DnsServerForwarder
Add-DnsServerForwarder
Remove-DnsServerForwarder
Set-DnsServerConditionalForwarderZone
Add-DnsServerConditionalForwarderZone

Get-DnsServerZone
Add-DnsServerPrimaryZone
Add-DnsServerSecondaryZone
Add-DnsServerStubZone
Remove-DnsServerZone
Get-DnsServerScavenging
Set-DnsServerScavenging

Set-DnsServerSecondaryZone
Export-DnsServerZone
Add-DnsServerResourceRecord
Add-DnsServerResourceRecordA
Add-DnsServerResourceRecordAAAA
Add-DnsServerResourceRecordCName
Add-DnsServerResourceRecordDS
Add-DnsServerResourceRecordMX
Add-DnsServerResourceRecordPtr
Remove-DnsServerResourceRecord
Set-DnsServerResourceRecordAging
Get-DnsServerResourceRecord
Add-DnsServerTrustAnchor
Remove-DnsServerTrustAnchor
Get-DnsServerTrustAnchor
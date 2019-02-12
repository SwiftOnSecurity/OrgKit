
# OrgKit - Group Policy
This is a set of logically grouped Group Policy Objects designed for import into Active Directory. These policies can be used on existing infrastructure, but they are designed for use during the initial deployment of domain infrastructure.

> Security policies in OrgKit are fairly modern and may block access to aging or misconfigured network devices like SAN or NAS appliances. Please understand the individual security settings before using them.

****

## Purpose
With over 12000 individual policies to select from and innumerable ways to approach the task, fully implementing a managed environment with Group Policy can be a large undertaking.

For this reason, every company's configuration becomes bespoke, based on administrator preferences, and only fully supportable by them. There is no durable, comprehensive public baseline of Group Policy. Although considerably aging compared to modern management tools, there remains no reasonable and supportable replacement for this technology, and it's indispensable to the durable network.

Group Policy's incredible power also means most organizations have admins who are afraid to, or prevented from, fully exploring and utilizing it. OrgKit's mission is to be a referenceable public proof of a highly-detailed implementation, rather than a listing of best-practices and what-ifs.

## Implementation
You will need to review and then assign each Group Policy to the appropriate OUs yourself.

Certain GPOs may require additional customization for them to function in your environment. For example, you may need to put in your Office365 Tenant GUID for certain OneDrive restrictions to be properly assigned.

[Do not edit the default Group Policies](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc779159(v=ws.10))

## Design notes
This design goes against common advice to limit Group Policy Object numbers as much as possible. There is a large risk here as administrators may not understand the complex interplay of precedence and the full end-result of their selections.
However, this is based on my personal preference in maintaining a domain with logical separation of settings. This allows categories to be not applied to testing machines or limit the scope of change approvals. Change processes in large organizations inform many decisions about the heavy segmentation of policies between many Group Policy Objects.

With the (general) separation of User and Computer policies, this design leaves open the option for Group Policy Loopback Processing in training lab environments.

Most policy comments will include a unique identifier called 'OrgKitID'. This allows you to quickly identify a policy and its current recommended status via web search.

## Policies - MSFT Baseline

###MSFT1809-Bitlocker
###MSFT1809-Defender
###MSFT1809-Desktop-Security
###MSFT1809-IE11-Machine
###MSFT1809-IE11-User
###MSFT1809-User
###MSFT2016-Office-Computer
###MSFT2016-Office-User
###MSFT2019-CredentialGuard
###MSFT2019-Domain Controllers
###MSFT2019-Servers

## Policies - OrgKit
Note: This is a roadmap vision and does not list the GPOs currently available.

### Client-Auditing

### Client-Browser-Chrome
Settings for Chrome and Firefox.

### Client-Browser-Edge
Settings for Edge.

### Client-Browser-IE
Settings for Internet Explorer.

### Client-Browser-Firefox
Settings for Firefox.

### Client-Antivirus-Defender
Settings for Windows Defender on the client. This should not be disabled, even if a different antivirus is installed. If needed, Defender will be automatically disabled on the systems. Defender should never be administratively disabled.

OrgKitGpoId: f77e39ce-afae-4705-b2f6-43b15ab8ad86

### Client-Experience-Computer

### Client-Experience-User

### Client-MicrosoftOffice
User experience settings for Office.

### Client-MicrosoftOffice-Security
Security settings for Office.

### Client-Security-Auditing
Windows audit security settings.

### Client-Security-Computer

### Client-Security-User

### Client-EngineerQFE
Applied to the 'Domain Users' and 'Domain Computer' OU. Allows designated Helpdesk Engineers to add new "quick-fix engineering" changes to Group Policy, without having the power to edit the primary policies, which have final engineering control by Windows System Engineers.

### Client-Maintenance
Settings which configure maintenance tasks and run periodic tasks on client machines to maintain them.

### Domain
A limited set of domain-wide settings which are required for all machines. Things such as enabling a minimum protocol negotiation level.

### DomainControllers
Domain Controllers security settings and configuration for communicating with clients.

### DomainControllers-Pilot
Domain Controllers policy which will be applied to a subset of domain controllers first, for incremental testing.

### DomainControllers-Auditing
Directory Controller-specific Active Directory, system integrity auditing settings, and log forwarding, which are much more stringent than on a normal server or client PC.

### Client-WSUS

### Server-Experience

### Server-Maintenance

### Server-Antivirus-Defender
Servers may need specialized antivirus settings due to performance concerns and troubleshooting, so this policy is separated out.

### Server-Security-Audit

### Server-Security

### Server-Security-Tier0

### Server-Security-Tier1

### Server-Security-Tier2

### Server-WSUS

### Pilot-Server

### Pilot-Client

### PAW-Tier0

### PAW-Tier1

### PAW-Tier2

### LAPS
Controls 'Microsoft Local Administrator Password Solution' deployed to client machines
https://technet.microsoft.com/en-us/mt227395.aspx
https://www.starwindsoftware.com/blog/deploying-microsoft-laps


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

## Design notes
This design goes against common advice to limit Group Policy Object numbers as much as possible. There is a large risk here as administrators may not understand the complex interplay of precedence and the full end-result of their selections.
However, this is based on my personal preference in maintaining a domain with logical separation of settings. This allows categories to be not applied to testing machines or limit the scope of change approvals. Change processes in large organizations inform many decisions about the heavy segmentation of policies between many Group Policy Objects.

With the (general) separation of User and Computer policies, this design leaves open the option for Group Policy Loopback Processing in training lab environments.

Most policy comments will include a unique identifier called 'OrgKitID'. This allows you to quickly identify a policy and its current recommended status via web search.

## Policies
Note: This is a roadmap vision and does not list the GPOs currently available.

### POLICY-Domain
A limited set of domain-wide settings which are required for all machines. Things such as enabling a minimum protocol negotiation level.

### POLICY-DomainControllers
Domain Controllers security settings and configuration for communicating with clients.

### POLICY-DomainControllers-Pilot
Domain Controllers policy which will be applied to a subset of domain controllers first, for incremental testing.

### POLICY-DomainControllers-Auditing
Directory Controller-specific Active Directory, system integrity auditing settings, and log forwarding, which are much more stringent than on a normal server or client PC.

### POLICY-Client-Auditing
Applied to the Domain Computers OU to configure audit settings and log forwarding.

### POLICY-Client-Computer
Applied to the Domain Computers OU, does not include user-level policies.

### POLICY-Client-Computer-Security
Applied to the Domain Computers OU, does not include user-level policies.

### POLICY-Client-User
Applied to the Domain Users OU, does not include computer-level policies.

### POLICY-Client-User-Security
Applied to the Domain Users OU, does not include computer-level policies.

### POLICY-Client-EngineerQFE
Applied to the 'Domain Users' and 'Domain Computer' OU. Allows designated Helpdesk Engineers to add new "quick-fix engineering" changes to Group Policy, without having the power to edit the primary policies, which have final engineering control by Windows System Engineers.

### POLICY-Client-Maintenance
Settings which configure maintenance tasks and run periodic tasks on client machines to maintain them.

### POLICY-Client-Office
User experience settings for Office.

### POLICY-Client-Office-Security
Security settings for Office.

### POLICY-Client-AntivirusDefender
Settings for Windows Defender on the client. This should not be disabled, even if a different antivirus is installed. If needed, Defender will be automatically disabled on the systems. Defender should never be administratively disabled.

OrgKitGpoId: f77e39ce-afae-4705-b2f6-43b15ab8ad86

### POLICY-Client-Security-Audit
Windows audit security settings.

### POLICY-Client-WSUS

### POLICY-Browser-EdgeIE
Settings for Edge and Internet Explorer.

### POLICY-Browser-ChromeFirefox
Settings for Chrome and Firefox.

### POLICY-Server-Experience

### POLICY-Server-Maintenance

### POLICY-Server-AntivirusDefender
Servers may need specialized antivirus settings due to performance concerns and troubleshooting, so this policy is separated out.

### POLICY-Server-Audit

### POLICY-Server-Security

### POLICY-Server-Security-Tier0

### POLICY-Server-Security-Tier1

### POLICY-Server-Security-Tier2

### POLICY-Server-WSUS

### POLICY-Pilot-Server

### POLICY-Pilot-Client

### POLICY-PAW-Tier0

### POLICY-PAW-Tier1

### POLICY-PAW-Tier2

### POLICY-LAPS
Controls 'Microsoft Local Administrator Password Solution' deployed to client machines
https://technet.microsoft.com/en-us/mt227395.aspx
https://www.starwindsoftware.com/blog/deploying-microsoft-laps

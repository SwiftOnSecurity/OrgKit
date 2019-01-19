
# OrgKit - Group Policy
This is a set of logically grouped Group Policy Objects designed for import into Active Directory.

## Purpose
As Windows and networks have changed, some best-practices in Group Policy design have changed or been relaxed. Based on experience in running Group Policy in operation, in this set there is greater-than-required separation of policies, to allow more targetted troubleshooting and future customization.

Additionally, there exists expansion abilities for Desktop Engineers to insert temporary shims, without having ability to edit the main GPO, or impacting priviledged desktops.

## Implementation
You will need to review and then assign each Group Policy to the appropriate OUs yourself.

Certain GPOs may require additional customization for them to function in your environment. For example, you may need to put in your Office365 Tenant GUID for certain OneDrive restrictions to be properly assigned.

## Design notes
This design goes against common advice to limit Group Policy Object numbers as much as possible. There is a large risk here as administrators may not understand the complex interplay of precedence and the full end-result of their selections.
However, this is based on my personal preference in maintaining a domain with logical separation of settings. This allows categories to be not applied to testing machines. This is to increase long-term operational flexibility and testing abilities.

With the (general) separation of User and Computer policies, this design leaves open the option for Group Policy Loopback Processing in training lab environments.

Every Group Policy where it's possible to include a note, includes a unique identifier. This allows you to quickly identify a policy and its current recommended status.

## Policies
Note: This is a roadmap vision and does not list the GPOs currently avaliable.

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

### POLICY-Client-Security-Audit


### POLICY-Client-LAPS

### POLICY-Client-WSUS

### POLICY-Browser-EdgeIE

### POLICY-Browser-ChromeFirefox

### POLICY-Server-Experience

### POLICY-Server-Maintenance

### POLICY-Server-Antivirus

### POLICY-Server-Security-Audit

### POLICY-Server-Security-Baseline

### POLICY-Server-Security-Tier0

### POLICY-Server-Security-Tier1

### POLICY-Server-Security-Tier2

### POLICY-Server-LAPS

### POLICY-Server-WSUS

### POLICY-Pilot-Server

### POLICY-Pilot-Client

### POLICY-PAW-Tier0

### POLICY-PAW-Tier1

### POLICY-PAW-Tier2



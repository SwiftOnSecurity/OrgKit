
# OrgKit - Group Policy
This is a set of logically grouped Group Policy Objects designed for import into Active Directory.

## Purpose
As Windows and networks have changed, some best-practices in Group Policy design have changed or been relaxed. Based on experience in running Group Policy in operation, in this set there is greater-than-required separation of policies, to allow more targetted troubleshooting and future customization.

Additionally, there exists expansion abilities for Desktop Engineers to insert temporary shims, without having ability to edit the main GPO, or impacting priviledged desktops.

## Implementation
You will need to review and then assign each Group Policy to the appropriate OUs yourself.

Certain GPOs may require additional customization for them to function in your environment. For example, you may need to put in your Office365 Tenant GUID for certain OneDrive restrictions to be properly assigned.

## Design notes
With the (general) separation of User and Computer policies, this design leaves open the option for Group Policy Loopback Processing in training lab environments.

This will likely be simplified but for now it's a provisional roadmap.

## Policies
Note: This is a roadmap and does not list the GPOs currently avaliable.

### POLICY-Domain

### POLICY-DC

### POLICY-DC-Audit

### POLICY-Client-Experience-Computer

### POLICY-Client-Experience-User

### POLICY-Client-Experience-EngineerQFE

### POLICY-Client-Maintenance

### POLICY-Client-Office

### POLICY-Client-Antivirus

### POLICY-Client-Security-Audit

### POLICY-Client-Security-Computer

### POLICY-Client-Security-User

### POLICY-Client-Security-EngineerQFE

### POLICY-Client-Security-Office

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



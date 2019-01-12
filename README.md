# OrgKit
Provision a brand-new company with proper defaults in Windows, Office365, and Azure.

## Mission
OrgKit is designed to provide a series of templates to "boot-up" a new highly-documented IT environment for a mid-size organization, serve as a public example of what's possible, and allow informed decisions about this.

The specific target is a company having to start-over after a complete network compromise, or the spin-up of a new subsidiary business.

## Design decisions
It's important to note that the reason a comprehensive repository of Microsoft product configuration guidance for organizations is so rare is because the entire ecosystem is designed to be customized per-organization. However, most organizations are not equipped nor understand the breadth of what this really means. This divergent configuration history of their customers, along with fears about having to support it, then prevents Microsoft providing strong defaults and guidance in a generic form.

### Powershell DSC
Strictly, Powershell DSC is the correct tool to build and maintain a Windows environment with this level of centralized design and vision. It is a great set of abilities, and it will likely be included in the future. However, this project is aimed at Windows administrators who will already be intidated by the breadth of new technologies and concepts, and need to run the system over a long-term with other staff.

Powershell DSC is currently a specialized skill designed to revert anything done outside its central control. It requires whole-organization buy-in, and for that reason, the kind of use-cases for this set of guidance cannot rely on it.

### Group Policy

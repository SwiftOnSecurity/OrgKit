# OrgKit
Provision a brand-new company with proper defaults in Windows, Office365, and Azure.

## Mission
OrgKit is designed to provide a series of templates to "boot-up" a new highly-documented IT environment for a mid-size organization, serve as a public example of what's possible, be a gold-standard implementation, and allow informed decisions by companies who do not know what's really done by other businesses.

The specific target is a company having to start-over after a complete network compromise, or the spin-up of a new subsidiary business.

## Preliminary sources
If you want to jump ahead, here's some of the work I will be citing in addition to my own, and which you can go ahead and use yourself

- [Center for Internet Security](https://www.cisecurity.org/) baselines
- [PAW](https://github.com/unassassinable/PAW) by [Rich "unassassinable"](https://github.com/unassassinable)
- [win10-secure-baseline-gpo](https://github.com/mxk/win10-secure-baseline-gpo) by [Maxim Khitrov "mxk"](https://github.com/mxk)
- [Win10-Initial-Setup-Script](https://github.com/Disassembler0/Win10-Initial-Setup-Script) by ["Disassembler0"](https://github.com/Disassembler0)
- [awesome-windows-domain-hardening](https://github.com/PaulSec/awesome-windows-domain-hardening) by ["PaulSec"](https://github.com/PaulSec)
- [Windows-Secure-Host-Baseline](https://github.com/nsacyber/Windows-Secure-Host-Baseline) by [The NSA](https://github.com/nsacyber)
- [windows-event-forwarding](https://github.com/palantir/windows-event-forwarding) by [Palantir](https://github.com/palantir)

## Design decisions
It's important to note that the reason a comprehensive repository of Microsoft product configuration guidance for organizations is so rare is because the entire ecosystem is designed to be customized per-organization. However, most organizations are not equipped nor understand the breadth of what this really means. This divergent configuration history of their customers, along with fears about having to support it, then prevents Microsoft providing strong defaults and guidance in a generic form.

### Powershell DSC
Strictly, Powershell DSC is the correct tool to build and maintain a Windows environment with this level of centralized design and vision. It is a great set of abilities, and it will likely be included in the future. However, this project is aimed at Windows administrators who will already be intidated by the breadth of new technologies and concepts, and need to run the system over a long-term with other staff.

Powershell DSC is currently a specialized skill designed to revert anything done outside its central control. It requires whole-organization buy-in, and for that reason, the kind of use-cases for this set of guidance cannot rely on it.

### Group Policy

## Project operations
None of this project is sold as unique work or groundbreaking. Where possible, it will reference the existing work of others, or heavily credit them in adaptation - with their permission.
Many IT organizations have a set of capabilities similar to this. They press a button and can build an entire company, just like this. However, it is properitary work product their staff cannot publicly share. This is intended to remediate that.

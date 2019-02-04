== Needed ADMX files ==
- [Microsoft Windows ADMX](https://support.microsoft.com/en-us/help/3087759/how-to-create-and-manage-the-central-store-for-group-policy-administra)
- [Microsoft Office 2016+ ADMX](https://www.microsoft.com/en-us/download/details.aspx?id=49030)
- [Microsoft OneDrive ADMX](https://docs.microsoft.com/en-us/onedrive/use-group-policy)
- [Microsoft Security Compliance Toolkit](https://www.microsoft.com/en-us/download/details.aspx?id=55319)
-- Download the latest Windows baseline version and install the Templates folder ADMX and ADML
- [Google Chrome ADMX](https://support.google.com/chrome/a/answer/187202?hl=en)
- [Mozilla Firefox ADMX](https://github.com/mozilla/policy-templates/blob/master/README.md)

== Domain OU layout ===
````
FOREST ROOT

\ Corp Groups

\ Corp Users
--\ Service
----\ Tier0
----\ Tier1
----\ Tier2
--\ Shared Mailbox
--\ Employee
----\ Site1
-------\ Test Users
--\ Privileged

\ Corp Workstations
--\ Workstations
----\ Site1
-------\ Test Workstations
----\ Training Lab
--\ PAW
----\ Tier0
----\ Tier1
----\ Tier2

\ Domain Controllers
--\ Pilot controllers

\ Servers
--\ Tier0
--\ Tier1
--\ Tier2

\ z Access Control Lists
````

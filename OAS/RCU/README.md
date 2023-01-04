# Repository Creation Utility (RCU) 
[Use RCU CLI](https://docs.oracle.com/en/middleware/fusion-middleware/12.2.1.4/rcuug/running-repository-creation-utility-command-line.html#GUID-0D3A2959-7CC8-4001-997E-718ADF04C5F2)

Oracle Analytics Server will install several schemas on the RCU Database and uses them to store various product metadata. Make sure there was no schema naming conflict before RCU create repository

```
<YourSchemaPrefix>_BIPLATFORM -- Oracle Analytics
<YourSchemaPrefix>_IAU        -- Audit Service
<YourSchemaPrefix>_IAU_APPEND -- Audit Service Append
<YourSchemaPrefix>_IAU_VIEWER -- Audit Service Viewer
<YourSchemaPrefix>_MDS        -- Metadata Services
<YourSchemaPrefix>_OPSS       -- Oracle Platform Security Services
<YourSchemaPrefix>_STB        -- Service Table
<YourSchemaPrefix>_WLS        -- WebLogic services
```
# RCU DB
- [DB Certification](https://docs.oracle.com/en/middleware/bi/analytics-server/administer-oas/certification-rcu-databases.html)
- Autonomous DB is not certified as RCU DB




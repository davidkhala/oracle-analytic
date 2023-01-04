# Repository Creation Utility (RCU) 
[Use RCU CLI](https://docs.oracle.com/en/middleware/fusion-middleware/12.2.1.4/rcuug/running-repository-creation-utility-command-line.html#GUID-0D3A2959-7CC8-4001-997E-718ADF04C5F2)

Oracle Analytics Server in Marketplace will install several schemas on the RCU Database and uses them to store various product metadata.

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
## Sample: use Oracle Base DB in OCI as RCU DB
1. Provision
    - [Set Up an Oracle Cloud Database (VM DB or BM DB)](https://docs.oracle.com/en/middleware/bi/analytics-server/deploy-oas-cloud/deploy-oracle-analytics-server-oracle-cloud.html#GUID-C8C5D819-5EB5-4EE2-98EF-F6093E850B0E)
    - The ODB must be deployed in the same region as Oracle Analytics Server
    - DB connection string must be in format `<hostname or IP address>:<port>:<PDB_name>.<DB_domain>`
    - Prepare an existing user with `SYSDBA` privileges for OAS Domain Configuration. You can reuse default user `sys`
2. Please test database connection and database administrator credentials before deployment. 



# OAS Installation
Prerequisite
- Setup a DB as [RCU DB](https://github.com/davidkhala/oracle-analytic/blob/main/OAS/RCU/README.md)
  - The RCU DB must be deployed in the same region as Oracle Analytics Server
- Opt-in Oracle Analytics Server Domain Configuration is a must for new OAS deployment
    - Skip only when creating an additional Oracle Analytics Server compute instance to scale out an existing Oracle Analytics Server deployment.
- DB connection string must be in format `<hostname or IP address>:<port>:<PDB_name>.<DB_domain>`
- DB Admin user
  - Use Oracle DB as RCU DB
    - it can be `sys`
    - Alternatively, you can use another user granted as `SYSDBA` privilege
      - SQL `grant SYSDBA to <user>;`.
  - Please test database connection and database administrator credentials before deployment.
- schema creation
    - Database Schema Password: A valid password must be specified. Password should be alpha numeric only and can contain the following special characters: $, # , _ .Password should not start with a number or a special character.
    - Database Schema Prefix: A valid prefix can contain only alpha-numeric characters. It should not start with a number and should not contain any special characters.

Post-install
- Run [./oas.sh cleanup](https://github.com/davidkhala/oracle-PaaS-collection/blob/main/analytic/OAS/oas.sh) post deploy 

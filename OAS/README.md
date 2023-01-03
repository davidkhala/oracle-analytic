# OAS Installation
Points need to know more than Launch stack from OCI MarketPlace
- [Setup RCU DB](https://github.com/davidkhala/oracle-analytic/blob/main/OAS/RCU.md)
-  Opt-in Oracle Analytics Server Domain Configuration is a must for new OAS deployment
    - Skip only when creating an additional Oracle Analytics Server compute instance to scale out an existing Oracle Analytics Server deployment.
- DB Admin user
    - it cannot be `sys`, `sys as sysdba`
    - it should be granted as `SYSDBA` by `grant SYSDBA to <user>;`
- schema creation
    - **Database Schema Password**: A valid password must be specified. Password should be alpha numeric only and can contain the following special characters: $, # , _ .Password should not start with a number or a special character.
    - **Database Schema Prefix**: A valid prefix can contain only alpha-numeric characters. It should not start with a number and should not contain any special characters.

- Troubleshoot domain server
    - Articulate user `oracle` to satisfy /u01/app/oas-scripts/create_oas_domain.sh
    - `sudo passwd oracle`. By default it is nopassword
    - `oracle is not in the sudoers file`
        
- Run [./oas.sh cleanup](https://github.com/davidkhala/oracle-PaaS-collection/blob/main/analytic/OAS/oas.sh) post deploy 

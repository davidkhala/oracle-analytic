# OAS in OCI MarketPlace
OAS on OCI MarketPlace is for customer who can use public cloud but they want to manage the instance by themselves.
[PDF: Deploy](https://docs.oracle.com/en/middleware/bi/analytics-server/deploy-oas-cloud/deploying-oracle-analytics-server-oracle-cloud.pdf)

## Troubleshoot
1. Found end lines in `/var/log/oas_create_domain.log`
```
[VALIDATION] [ERROR]:Password contains invalid characters
[VALIDATION] [SUGGESTION]:Ensure password contains only alphanumeric, underscore (_), dollar ($) or pound (#) characters
```
- The password of Analytics Administrator cannot include others special characters than above

1. Found end lines in `/var/log/oas_create_domain.log`
```
[VALIDATION] [ERROR]:Incorrect Oracle connect string.  Wrong number of : separated fields in '138.2.80.190:1521/DBSystem_pdb1.public.insecure.oraclevcn.com'
[VALIDATION] [SUGGESTION]:For a simple database use the format hostname:port:servicename 
For Application Cluster (RAC) Database use the format host1:port1^host2:port2@servicename
```
- The Oracle connect string cannot accept the typical connection string format. Please follow above guidelines. 
3. Found end lines in `/var/log/oas_create_domain.log`
```
[VALIDATION] [ERROR]:PreReq Check for create new schema failed.
```
- Please manually validate (dry-run) RCU createRepository process by RCU CLI
  ```
  export password=<password of user sys in RCU>;
  export connectString=<connect string to RCU DB>;
  curl https://raw.githubusercontent.com/davidkhala/oracle-analytic/main/OAS/RCU/cli.sh | bash -s create -validate
  ```


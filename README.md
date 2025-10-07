# Migrating Database from EC2 to the RDS server
## Overview

This project provides a step-by-step guide for migrating a database from an EC2 instance to an Amazon RDS server. The migration process ensures minimal downtime and data integrity.

## Prerequisites

- AWS account with access to EC2 and RDS services
- IAM permissions for database migration
- Source database running on EC2 (e.g., MySQL, PostgreSQL)
- Target RDS instance configured and accessible
- AWS CLI installed and configured

## Migration Steps

1. **Backup the Source Database**
    - SSH into your EC2 instance.
    - Run the appropriate dump command (e.g., `mysqldump` for MySQL).
    - Example:
      ```bash
      mysqldump -u [username] -p[password] [database_name] > backup.sql
      ```

2. **Transfer the Backup File**
    - Use `scp` or AWS S3 to transfer `backup.sql` to a local machine or directly to the RDS instance.

3. **Restore the Backup to RDS**
    - Connect to the RDS instance using a database client.
    - Run the restore command:
      ```bash
      mysql -h [RDS-endpoint] -u [username] -p[password] [database_name] < backup.sql
      ```

4. **Update Application Configuration**
    - Change database connection strings in your application to point to the RDS endpoint.

5. **Testing**
    - Verify data integrity and application functionality.
    - Perform queries to ensure all data has been migrated.

6. **Cleanup**
    - Remove backup files from EC2 and local machines.
    - Revoke unnecessary permissions.

## info

```
Migration Date: [Insert Date]
Source: EC2 Instance ([Instance ID])
Target: RDS Instance ([RDS Endpoint])
Database Type: [MySQL/PostgreSQL/Other]
Backup File: backup.sql
Migration Tool: [mysqldump/pg_dump/Other]
```

## Troubleshooting

- **Connection Issues:** Ensure security groups allow traffic between EC2 and RDS.
- **Authentication Errors:** Verify database credentials.
- **Performance:** For large databases, consider using AWS Database Migration Service (DMS).

## References

- [AWS RDS Documentation](https://docs.aws.amazon.com/rds/index.html)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/index.html)
- [AWS Database Migration Service](https://aws.amazon.com/dms/)

## License

This project is licensed under the MIT License.
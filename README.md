# Docker Environment
Sample of Docker Compose files 
- Apache Tomcat
- MongoDB
- Mongo Express

## Docker Compose
To start services:

```docker-compose -f <filename.yml> up```

## Apache Tomcat:
 - To access: http://localhost:8080/[contextpath]
## Mongo Express
  - To access: http://localhost:8081/

## MongoDB
To backup db:

    docker exec my-mongo sh -c 'exec mongodump -d <dbname> --gzip --archive' > <filename>.gz
or

    docker exec my-mongo sh -c 'exec mongodump -d <dbname> -o <backup_path>' 

To restore db, run below command inside docker container:

    mongorestore --drop --gzip --archive=<dbarchivefile.gz> --db <dbname>
or

    mongorestore --db <newdbname> <jsonfilesdir>

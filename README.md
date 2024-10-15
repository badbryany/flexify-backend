# Flexify-Backend

## Requirements

- docker-compose

## Run / Setup

befor runing you need to make the **.env** files like described below

```shell
# for build / initial start
docker-compose up --build

# after that
docker-compose down

# for resetting the database
docker-compose down -v
```

## Files

### database/

- init.sql
  - every exercise and the tables that are created
- Dockerfile
- **.env** required
  -looks something like:
  ```
    POSTGRES_USER=docker
    POSTGRES_PASSWORD=mySecretPassword
    POSTGRES_DB=flexify_db
  ```

### backend/

- server.js -> source code of server
- README.md -> Documentation of API
- package.json -> packages
- ./uploads -> folder for the users profile pictures
- Dockerfile
- **.env** required
  -looks something like:

  ```
    DB_HOST=postgres
    DB_USER=docker
    DB_PASSWORD=mySecretpassword
    DB_NAME=flexify
    DB_PORT=5432

  ```

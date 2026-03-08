# MySQL 8

Relational database server.

## jrun example

```ucl
jail "hypha-mysql-8" {
  setup {
    mysql {
      type = "ansible";
      url  = "hub://mysql/8";
    }
  }
  forward {
    mysql { host = 4306; jail = 3306; }
  }
}
```

## Variables

| Variable               | Description                           | Default   |
|------------------------|---------------------------------------|-----------|
| `MYSQL_BIND_ADDRESS`   | MySQL bind address (`bind-address`)   | `0.0.0.0` |
| `MYSQL_DB`             | Database to create                    | `testdb`  |
| `MYSQL_TEST_USER`      | Test user to create (`'%'` host)      | `test`    |
| `MYSQL_TEST_PASSWORD`  | Password for test user                | `test`    |

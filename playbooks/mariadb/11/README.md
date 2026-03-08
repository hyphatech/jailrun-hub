# MariaDB 11

Relational database server.

## jrun example

```ucl
jail "hypha-mariadb-11" {
  setup {
    mariadb {
      type = "ansible";
      url  = "hub://mariadb/11";
    }
  }
  forward {
    mariadb { host = 5306; jail = 3306; }
  }
}
```

## Variables

| Variable               | Description                           | Default   |
|------------------------|---------------------------------------|-----------|
| `MARIADB_BIND_ADDRESS` | MariDB bind address (`bind-address`)  | `0.0.0.0` |
| `MARIADB_DB`           | Database to create                    | `testdb`  |
| `MARIA_TEST_USER`      | Test user to create (`'%'` host)      | `test`    |
| `MARIA_TEST_PASSWORD`  | Password for test user                | `test`    |

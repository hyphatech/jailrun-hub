# PostgreSQL 16

Relational database server.

## jrun example

```ucl
jail "hypha-postgres-16" {
  setup {
    pg {
      type = "ansible";
      url  = "hub://postgres/16";
    }
  }
  forward {
    pg { host = 6432; jail = 5432; }
  }
}
```

## Variables

| Variable                    | Description                              | Default                  |
|-----------------------------|------------------------------------------|--------------------------|
| `PACKAGES`                  | Additional packages to install via `pkg` | `[]`                     |
| `POSTGRES_LISTEN_ADDRESSES` | `listen_addresses` in `postgresql.conf`  | `*`                      |
| `POSTGRES_HBA_RULE`         | Line appended to `pg_hba.conf`           | `host all all all trust` |
| `POSTGRES_DB`               | Database name to create                  | `testdb`                 |

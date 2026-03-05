# jailrun-hub

A curated collection of versioned Ansible playbooks for [jrun](https://github.com/hyphatech/jailrun).
Ready to plug into jails via `setup`:

```ucl
jail "example" {
  setup {
    nginx {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/nginx/latest/playbook.yml";
    }
  }
}
```

## Jail Playbooks

| Playbook | Description |
| --- | --- |
| [`ffmpeg-7`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/ffmpeg/7) | [FFmpeg](https://ffmpeg.org/) multimedia framework (encode/decode/transcode). |
| [`imagor`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/imagor/latest) | [Imagor](https://github.com/cshum/imagor) image processing service. |
| [`mariadb-11`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/mariadb/11) | [MariaDB](https://mariadb.org/) 11 database server. |
| [`mysql-8`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/mysql/8) | [MySQL](https://www.mysql.com/) 8 database server. |
| [`nginx`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/nginx/latest) | [Nginx](https://nginx.org/) web server with a basic default config. |
| [`postgres-16`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/postgres/16) | [PostgreSQL](https://www.postgresql.org/) 16 database server. |
| [`redis`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/redis/latest) | [Redis](https://github.com/redis/redis) in-memory data store. |

## Base Playbooks

| Playbook | Description |
| --- | --- |
| [`xfce`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/xfce/latest) | [XFCE](https://www.xfce.org/) lightweight desktop environment. |
| [`kde`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/kde/latest) | [Plasma (KDE)](https://kde.org/plasma-desktop/) desktop environment (KDE project). |

## Layout

Playbooks are versioned and stored under:

- `playbooks/<name>/<version>/playbook.yml`
- `playbooks/<name>/<version>/README.md`

Examples:

- `playbooks/nginx/latest/playbook.yml`
- `playbooks/postgres/16/playbook.yml`

## Contributing

- Add new services under `playbooks/<name>/<version>/`.
- Keep a `README.md` next to each `playbook.yml` with:
  - a 1-line description
  - a copy/paste `jrun` example
  - a variables table (or `None.`)

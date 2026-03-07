# jrun-hub

A curated collection of Ansible playbooks for [jrun](https://github.com/hyphatech/jailrun), ready to provision your jails and VM bases.

## Jail Playbooks

### Databases

| Playbook | Description |
| --- | --- |
| [`influxdb`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/influxdb/1) | [InfluxDB](https://www.influxdata.com/) time-series database. |
| [`mariadb-11`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/mariadb/11) | [MariaDB](https://mariadb.org/) 11 database server. |
| [`mysql-8`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/mysql/8) | [MySQL](https://www.mysql.com/) 8 database server. |
| [`postgres-16`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/postgres/16) | [PostgreSQL](https://www.postgresql.org/) 16 database server. |
| [`redis`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/redis/latest) | [Redis](https://github.com/redis/redis) in-memory data store. |

### Media

| Playbook | Description |
| --- | --- |
| [`ffmpeg-7`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/ffmpeg/7) | [FFmpeg](https://ffmpeg.org/) multimedia framework (encode/decode/transcode). |
| [`imagor`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/imagor/latest) | [Imagor](https://github.com/cshum/imagor) image processing service. |

### Web

| Playbook | Description |
| --- | --- |
| [`nginx`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/nginx/latest) | [Nginx](https://nginx.org/) web server with a basic default config. |

### Development

| Playbook | Description |
| --- | --- |
| [`astronvim`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/astronvim/latest) | [AstroNvim](https://astronvim.com/) aesthetically pleasing and feature-rich Neovim configuration. |
| [`clojure`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/clojure/latest) | [Clojure](https://clojure.org/) dynamic, functional dialect of Lisp on the JVM. |
| [`ocaml`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/ocaml/latest) | [OCaml](https://ocaml.org/) general-purpose functional language with a powerful type system. |

## Base Playbooks

### Desktop

| Playbook | Description |
| --- | --- |
| [`kde`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/kde/latest) | [Plasma (KDE)](https://kde.org/plasma-desktop/) desktop environment (KDE project). |
| [`xfce`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/xfce/latest) | [XFCE](https://www.xfce.org/) lightweight desktop environment. |

## Layout

Playbooks are versioned and stored under:
- `playbooks/<name>/<version>/playbook.yml`
- `playbooks/<name>/<version>/README.md`

Examples:
- `playbooks/nginx/latest/playbook.yml`
- `playbooks/postgres/16/playbook.yml`

## Contributing

- Add new playbooks under `playbooks/<name>/<version>/`.
- Keep a `README.md` next to each `playbook.yml` with:
  - a 1-line description
  - a copy/paste `jrun` example
  - a variables table (or `None.`)

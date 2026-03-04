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

## Playbooks

| Playbook | Description |
|---|---|
| [`imagor`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/imagor/latest) | [Imagor](https://github.com/cshum/imagor) image processing service. |
| [`nginx`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/nginx/latest) | [Nginx](https://nginx.org/) web server with a basic default config. |
| [`postgres16`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/postgres/16) | [PostgreSQL](https://www.postgresql.org/) 16 database server. |
| [`mysql8`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/mysql/8) | [MySQL](https://www.mysql.com/) 8 database server. |
| [`redis`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/redis/latest) | [Redis](https://github.com/redis/redis) in-memory data store. |
| [`ffmpeg7`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/ffmpeg/7) | [FFmpeg](https://ffmpeg.org/) multimedia framework (encode/decode/transcode). |

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

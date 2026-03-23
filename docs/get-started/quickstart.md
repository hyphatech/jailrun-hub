---
icon: material/rocket-launch-outline
---

# Quick Start

[Jailrun](https://jail.run) uses [Ansible](https://docs.ansible.com/) for all provisioning. Every jail setup is a playbook you can read, modify, and version. But not every playbook needs to be written from scratch.

Jailrun Hub is a curated collection of ready-to-use playbooks for common services — PostgreSQL, Redis, Nginx, Imagor, and more. Point a setup step at a Hub playbook using the `hub://` shorthand:

```ucl
jail "hypha-nginx" {
  setup {
    nginx {
      type = "ansible";
      url  = "hub://nginx/rolling";
      vars { NGINX_LISTEN_PORT = "88"; }
    }
  }
  forward {
    http { host = 8888; jail = 88; }
  }
}
```

This is equivalent to a full URL:

```ucl
url = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/nginx/rolling/playbook.yml";
```

## Pinning versions

Pin to a tag for reproducible builds:

```ucl
url = "hub://nginx/rolling@v1.0.0";
```

```ucl
url = "https://github.com/hyphatech/jailrun-hub/blob/v1.0.0/playbooks/nginx/rolling/playbook.yml";
```

## Passing variables

Pass extra variables into the playbook with `vars` — each Hub playbook documents what it accepts. Works the same way with local playbooks:

```ucl
setup {
  core {
    type = "ansible";
    file = "setup.yml";
    vars { APP_ENV = "production"; }
  }
}
```

## Composing playbooks

Setup isn't limited to a single playbook. You can stack them — mixing Hub playbooks with your own, composing layer by layer:

```ucl
setup {
  nginx {
    type = "ansible";
    url  = "hub://nginx/rolling";
    vars { NGINX_LISTEN_PORT = "80"; }
  }
  app {
    type = "ansible";
    file = "playbooks/deploy-app.yml";
  }
}
```

!!! note
    Playbooks run in the order they're defined.

## Versioning convention

Playbooks named `rolling` install packages directly from the standard FreeBSD package repositories. The installed version follows whatever is current in those repos — which are updated quarterly — and may change when you reprovision a jail in a future quarter.

Playbooks with a pinned version (e.g. `imagor/1.6`, `hugo/0.157`) build the package from source at that exact version, giving you fully reproducible provisioning regardless of when you run it.

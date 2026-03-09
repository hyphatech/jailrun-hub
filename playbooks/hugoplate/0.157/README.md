# Hugoplate (Hugo 0.157 and Tailwind 4)

Popular Hugo + Tailwind CSS Starter and Boilerplate.

## jrun example

```ucl
jail "hypha-hugoplate" {
  setup {
    hugo {
      type = "ansible";
      url  = "hub://hugoplate/0.157";
      vars {
        HUGO_SITE_DIR = "/srv/project";
      }
    }
  }
  mount {
    src { host = "~/Projects/hugo"; jail = "/srv/project"; }
  }
  exec {
    build {
      cmd = "hugo --source /srv/project --watch --poll 1s";
      dir = "/srv/project";
    }
  }
}
```

### Serving with Hugo's built-in server

Hugo includes a simple web server for development:

```ucl
jail "hypha-hugoplate" {
  setup {
    hugo {
      type = "ansible";
      url  = "hub://hugoplate/0.157";
      vars { HUGO_SITE_DIR = "/srv/project"; }
    }
  }
  mount {
    src { host = "~/Projects/hugo"; jail = "/srv/project"; }
  }
  forward {
    http { host = 1313; jail = 1313; }
  }
  exec {
    build {
      cmd = "hugo server --source /srv/project --bind 0.0.0.0 --port 1313 --poll 1s";
      dir = "/srv/project";
    }
  }
}
```

### Serving with nginx

For a production-like setup, use nginx to serve the generated static files:

```ucl
jail "hypha-hugoplate" {
  setup {
    hugo {
      type = "ansible";
      url  = "hub://hugo/0.157";
      vars {
        HUGO_SITE_DIR = "/srv/project";
        HUGO_BASE_URL = "http://localhost:8080";
      }
    }
  }
  mount {
    src { host = "~/Projects/hugo"; jail = "/srv/project"; }
  }
  exec {
    build {
      cmd = "hugo --source /srv/project --watch --poll 1s";
      dir = "/srv/project";
    }
  }
}
jail "hypha-nginx" {
  depends ["hypha-hugo"]
  setup {
    nginx {
      type = "ansible";
      url  = "hub://nginx/rolling";
      vars {
        NGINX_ROOT = "/srv/project/public";
        NGINX_INDEX_FILE = "index.html";
      }
    }
  }
  mount {
    src { host = "~/Projects/hugo"; jail = "/srv/project"; }
  }
  forward {
    http { host = 8080; jail = 80; }
  }
}
```

## Variables

| Variable          | Default                 | Description                                       |
|-------------------|-------------------------|---------------------------------------------------|
| `PACKAGES`        | `[]`                    | Additional packages to install via `pkg`          |
| `HUGO_VERSION`    | `0.157.0`               | Hugo version to install                           |
| `HUGO_EXTENDED`   | `true`                  | Build the extended edition (SCSS/PostCSS support) |
| `HUGO_SITE_DIR`   | `/usr/local/www/hugo`   | Directory for the Hugo project                    |
| `HUGO_BASE_URL`   | `http://localhost`      | Site base URL                                     |

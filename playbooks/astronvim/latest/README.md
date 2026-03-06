# AstroNvim (latest)

Aesthetically pleasing and feature-rich Neovim configuration.

## jrun example

```ucl
jail "hypha-astronvim" {
  setup {
    astronvim {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/astronvim/latest/playbook.yml";
    }
  }
}
```

## Variables

| Variable | Default | Description |
|---|---|---|
| `ASTRONVIM_HOME` | `/root` | Home directory for the user AstroNvim is installed for |

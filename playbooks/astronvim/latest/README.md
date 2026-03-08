# AstroNvim (latest)

Aesthetically pleasing and feature-rich Neovim configuration.

## jrun example

```ucl
jail "hypha-astronvim" {
  setup {
    astronvim {
      type = "ansible";
      url  = "hub://astronvim/latest";
    }
  }
}
```

## Variables

| Variable | Default | Description |
|---|---|---|
| `ASTRONVIM_HOME` | `/root` | Home directory for the user AstroNvim is installed for |

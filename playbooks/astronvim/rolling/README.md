# AstroNvim (rolling)

Aesthetically pleasing and feature-rich Neovim configuration.

## jrun example

```ucl
jail "hypha-astronvim" {
  setup {
    astronvim {
      type = "ansible";
      url  = "hub://astronvim/rolling";
    }
  }
}
```

## Variables

| Variable         | Description                                    | Default |
|------------------|------------------------------------------------|---------|
| `PACKAGES`       | Additional packages to install via `pkg`       | `[]`    |
| `ASTRONVIM_HOME` | Home directory AstroNvim is installed into     | `/root` |

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

| Variable           | Default                                  | Description                                            |
|--------------------|------------------------------------------|--------------------------------------------------------|
| `PACKAGES`         | Additional packages to install via `pkg` | `[]`                                                   |
| `ASTRONVIM_HOME`   | `/root`                                  | Home directory for the user AstroNvim is installed for |

# KDE Plasma + SDDM (rolling)

Base system playbook with KDE Plasma desktop and SDDM.

## jrun example

```ucl
base {
  setup {
    desktop {
      type = "ansible";
      url  = "hub://kde/rolling";
    }
  }
}
```

## Note

Start the VM in a graphical QEMU session after applying the base config:

```bash
jrun start --base base.ucl --mode graphic
```

## Variables

| Variable                | Description                                                    | Default      |
|-------------------------|----------------------------------------------------------------|--------------|
| `PACKAGES`              | Additional packages to install via `pkg`                       | `[]`         |
| `DESKTOP_USER`          | Desktop login username                                         | `hypha`      |
| `DESKTOP_PASSWORD_HASH` | Password hash for `DESKTOP_USER` (FreeBSD `crypt(3)` `$6$...`) | *(required)* |
| `DESKTOP_PACKAGES`      | Package list installed via `pkg`                               | *(list)*     |
| `X_RESOLUTION`          | Max EFI framebuffer resolution (`efi_max_resolution`)          | `1024x768`   |

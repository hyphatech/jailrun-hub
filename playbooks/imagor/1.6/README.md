# Imagor (1.6)

Image processing server (Go + libvips), commonly used for on-the-fly resizing, format conversion, and optimization.

## jrun example

```ucl
jail "hypha-imagor" {
  setup {
    imagor {
      type = "ansible";
      url  = "hub://imagor/1.6";
    }
  }
  forward {
    http { host = 9000; jail = 8000; }
  }
  exec {
    imagor {
      cmd = "imagor";
      env {
        IMAGOR_UNSAFE = "1";
      }
    }
  }
}
```

## Variables

| Variable    | Description                              | Default  |
|-------------|------------------------------------------|----------|
| `PACKAGES`  | Additional packages to install via `pkg` | `[]`     |

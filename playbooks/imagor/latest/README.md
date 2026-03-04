# Imagor (latest)

Image processing server (Go + libvips), commonly used for on-the-fly resizing, format conversion, and optimization.

## jrun example

```ucl
jail "hypha-imagor" {
  setup {
    imagor {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/imagor/latest/playbook.yml";
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

None.

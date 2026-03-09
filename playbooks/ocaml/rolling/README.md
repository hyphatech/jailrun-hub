# OCaml (rolling)

General-purpose functional language with a powerful type system and native compilation.

## jrun example

```ucl
jail "hypha-ocaml" {
  setup {
    ocaml {
      type = "ansible";
      url  = "hub://ocaml/rolling";
    }
  }
}
```

## Variables

| Variable   | Description                              | Default |
|------------|------------------------------------------|---------|
| `PACKAGES` | Additional packages to install via `pkg` | `[]`    |

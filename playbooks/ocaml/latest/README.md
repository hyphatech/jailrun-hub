# OCaml (latest)

General-purpose functional language with a powerful type system and native compilation.

## jrun example

```ucl
jail "hypha-ocaml" {
  setup {
    ocaml {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/ocaml/latest/playbook.yml";
    }
  }
}
```

## Variables

None.

# Clojure (latest)

Dynamic, functional dialect of Lisp on the JVM.

## jrun example

```ucl
jail "hypha-clojure" {
  setup {
    clojure {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/clojure/latest/playbook.yml";
    }
  }
}
```

## Variables

None.

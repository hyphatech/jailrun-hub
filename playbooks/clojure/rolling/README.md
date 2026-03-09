# Clojure (rolling)

Dynamic, functional dialect of Lisp on the JVM.

## jrun example

```ucl
jail "hypha-clojure" {
  setup {
    clojure {
      type = "ansible";
      url  = "hub://clojure/rolling";
    }
  }
}
```

## Variables

| Variable           | Default                                  | Description |
|--------------------|------------------------------------------|-------------|
| `PACKAGES`         | Additional packages to install via `pkg` | `[]`        |

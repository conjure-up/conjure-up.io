# Create a working directory

You'll need to be in an empty directory where your conjure-up spell will reside.

```
$ mkdir <spell>
```

# Create your conjure-up spell

A basic spell consists of a `config.json`, `metadata.json`, and a `README.md`.

## config.json

**conjure-up** is driven by the `config.json` which includes necessary items such as
the location of bundles to run.

Refer to the [config specification](/docs/config-specification) for more information.

## metadata.json

This file allows you to define which services are allowed to be place on a certain type of
machine/container. For example, maybe you only want to allow **nova-compute** to be placed
on Bare Metal or a KVM.

Refer to the [metadata specification](/docs/metadata-specification) for more information.

## README.md

Like any other readme, place information pertaining to your spell.

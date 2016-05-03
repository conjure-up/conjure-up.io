# Create a working directory

You'll need to be in an empty directory where you package contents will reside.

```
$ mkdir my-package
```

The syntax of `my-package` should keep the same convention of other Debian style
packages. Do not use things like spaces, and underscores, also, keep the package name
short and to the point.

# Initialize

A basic package consists of a `config.json`, `metadata.json`, and a `README.md`. To accomplish
this run the following:

```
$ conjure-craft init
```

# Update config

**conjure-up** is driven by the `config.json` which includes necessary items such as
the location of bundles to run.

Edit `config.json` and replace the **change-me** values with your own. Refer to the
[config specification](/docs/config-specification) for information on what these options
mean.

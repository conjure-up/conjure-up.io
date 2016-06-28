# Usage

**conjure-up** supports summoning spells from several remote repositories and from a local directory on your filesystem.

## Examples

### Charmstore

Deploy **conjure-up** enabled spells from jujucharms.com

```
$ conjure-up ~conjure/openstack-novalxd
```

This will pull the conjure-up enabled spell from https://jujucharms.com/u/conjure/openstack-novalxd

### GitHub/BitBucket

Not quite ready to push your spell to the charm registry? That's ok, simply push
your spell to GitHub and conjure-up can deploy from there:

```
$ conjure-up juju-solutions/bundle-observable-kubernetes
```

This would pull from GitHub repo https://github.com/juju-solutions/bundle-observable-kubernetes

### Remote Web Server

**conjure-up** will also support downloading directly from a webserver. For
example, if you have your spell zipped up and stored at
http://example.com/my-conjure-spell.zip you could install it like so:

```
$ conjure-up http://example.com/my-conjure-spell.zip
```

### Local Filesystem

Passing in either the directory path of the spell or if the current working directory is a spell:

```
$ conjure-up ~/spells/openstack/openstack-novalxd
```

Or from **cwd**

```
$ ~/spells/openstack/openstack-novalxd> conjure-up .
```

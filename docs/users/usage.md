# Usage

**conjure-up** includes several spells in addition to supporting summoning spells from several remote repositories and from a local directory on your filesystem.

## Examples

### GitHub/BitBucket

Not quite ready to push your spell to the charm registry? That's ok, simply push
your spell to GitHub and conjure-up can deploy from there:

```
$ conjure-up battlemidget/ghost
```

This would pull from GitHub repo https://github.com/battlemidget/ghost

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

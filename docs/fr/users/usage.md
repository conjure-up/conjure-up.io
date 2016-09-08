<!-- lang: EN
# Usage
-->

# Utilisation

<!-- lang: EN
**conjure-up** includes several spells in addition to supporting summoning 
spells from several remote repositories and from a local directory on your 
filesystem.
-->

**conjure-up** inclus plusieurs sort supplémentaires pour supporter 
l'invocation de sorts depuis plusieurs dépôts distants et à partir d'un
répertoire local sur votre système de fichier.

<!-- lang: EN
## Examples
-->

## Exemples

<!-- lang: EN
### GitHub/BitBucket
-->

### GitHub/BitBucket

<!-- lang: EN
Not quite ready to push your spell to the charm registry? That's ok, simply push
your spell to GitHub and conjure-up can deploy from there:
-->

Pas tout à fait prêt à pousser votre sort dans le registre de charmes ? C'est bon, il 
suffit de pousser votre sort sur GitHub et conjure-up peut le déployer à partir de là :

```
$ conjure-up juju-solutions/bundle-observable-kubernetes
```

<!-- lang: EN
This would pull from GitHub repo https://github.com/juju-solutions/bundle-observable-kubernetes
-->

Il sera tirer à partir du dépôt GitHub 
https://github.com/juju-solutions/bundle-observable-kubernetes

<!-- lang: EN
### Remote Web Server
-->

### Serveur Web distant

<!-- lang: EN
**conjure-up** will also support downloading directly from a webserver. For
example, if you have your spell zipped up and stored at
http://example.com/my-conjure-spell.zip you could install it like so:
-->

**conjure-up** supportera également le téléchargement direct à partir d'un 
serveur web. Par exemple, si vous avez votre sort zippé et stocké sur 
http://example.com/my-conjure-spell.zip vous pourrez l'installer comme ceci :

```
$ conjure-up http://example.com/my-conjure-spell.zip
```

<!-- lang: EN
### Local Filesystem
-->

### Le système de fichier Local

<!-- lang: EN
Passing in either the directory path of the spell or if the current working directory is a spell:
-->

En passant soit le chemin du répertoire du sort ou si le répertoire de travail courant est un sort:

```
$ conjure-up ~/spells/openstack/openstack-novalxd
```

<!-- lang: EN
Or from **cwd**
-->

Ou depuis **cwd**

```
$ ~/spells/openstack/openstack-novalxd> conjure-up .
```

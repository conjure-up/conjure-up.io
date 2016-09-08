# Introduction

<!-- lang:EN
**conjure-up** is a thin layer spanning a few different underlying
technologies - [Juju]("https://jujucharms.com"), [MAAS](http://maas.io), and
[LXD](http://linuxcontainers.org).
-->

**conjure-up** est une fine couche couvrant quelques différentes technologies 
sous-jacentes - [Juju](https://jujucharms.com), [MAAS](http://maas.io), et
[LXD](http://linuxcontainers.org).

<!-- lang: EN
{% hint %}
Its primary goal is to simplify deployment.
{% endhint %}
-->

{% hint %}
Son but premier est de simplifier le déploiement.
{% endhint %}

<!-- lang: EN
**conjure-up** provides you with a streamlined, turnkey solution. In order to
provide that streamlined approach, **conjure-up** makes use of processing
scripts. These scripts are executed at 3 different times in the deployment, just
after a Juju bootstrap, just before a Juju deploy, and right after a Juju
deploy.
-->

**conjure-up** vous offre une solution clé en main simplifiée. Afin de fournir
cette approche rationalisée, **conjure-up** fait usage de traitement de scripts.
Ces scripts sont exécutés à 3 moments différents pendant le déploiement : juste
après un bootstrap Juju, juste avant un déploiement Juju et juste après un 
déploiement Juju.

<!-- lang: EN
Processing scripts give you the flexibility to alter LXD profiles in order to
expose additional network interfaces to Neutron services, import images into
Glance once the service is available, or notifying the Deployment status screen
that your solution is ready and can be viewed at a specific URL.
-->

Le traitement des scripts vous donne la possibilité de modifier les profiles LXD
afin d'exposer les interfaces réseaux supplémentaires aux services Neutron, 
d'importer des images dans Glance une fois que le service disponible, ou 
notifiant l'écran de status de déploiement que votre solution est prête et peut 
être vue sur une URL spacifique.   

<!-- lang: EN
With these powerful concepts you can package up the solution that can then be
provided to coworkers who can easily deploy your solutions in any Public Cloud,
MAAS, or LXD.
-->

Avec ces concepts puissants, vous pouvez empaqueter la solution qui peut ensuite 
être fournie à des collègues qui pourront facilement déployer vos solutions sur
n'importe quel Cloud Public, sur MaaS, ou LXD. 

<!-- lang: EN
# Running in Headless Mode
-->

# Exécution en Mode Acéphale

<!-- lang: EN
**conjure-up** is meant to be a teaching tool in addition to a full blown
application deployment tool. By Default **conjure-up** will walk you through the
entire deployment process and help you understand what it is you are deploying.
-->

**conjure-up** est destiné à être un outils d'enseignement en plus d'un outil
épanouï de déploiement d'applications. Par défaut, **conjure-up** vous guidera
à travers l'ensemble du processus de déploiement et vous aidera à comprendre 
ce que vous déployez.

<!-- lang: EN
Where this doesn't make sense is if you are wanting to deploy your application
in an automated fashion. For example, integrating the deployment with a Jenkins
CI server.
-->

Il y a des moments où cela n'a pas de sens, si vous êtes désireux de déployer
votre application de manière automatisée. Par exemple, en intégrant le déploiement
avec un serveur Jenkins CI.

<!-- lang: EN
For these cases **conjure-up** provides a headless mode.
-->

Pour ce type de cas, **conjure-up** fournit un mode acéphale.

<!-- lang: EN
## Usage
-->

## Utilisation

<!-- lang: EN
To deploy in a headless mode you'll need to have credentials defined if
deploying to a Public Cloud or make sure LXD is configured if deploying to
Localhost.
-->

Pour déployer en mode acéphale, vous aurez besoin d'avoir des informations 
d'identification définies si le déploiement doit se faire sur un nuage public 
ou assurez-vous que LXD est configuré si le déploiement doit se faire sur localhost.

<!-- lang: EN
### Examples
-->

### Exemples

<!-- lang: EN
To deploy OpenStack to a Localhost provider:
-->

Pour déployer OpenStack sur un fournisseur Localhost :

```
$ conjure-up openstack localhost
```

<!-- lang: EN
The key argument is **to** where this indicates which provider to deploy to.
-->

L'argument clé est **vers** qui indique sur quel fournisseur il faut déployer.

<!-- lang: EN
If we want to deploy to a cloud like AWS:
-->

Si nous voulons déployer vers un nuage comme AWS :

```
$ conjure-up observable-kubernetes aws
```

<!-- lang: EN
> Keep in mind you'll need to have credentials defined, see
> [Juju credentials](https://jujucharms.com/docs/devel/credentials) for more
> details.
-->

> Gardez à l'esprit que vous aurez besoin d'avoir des informations 
> d'identification définies, voir la page de manuel 
> [Informations d'identification Juju](https://jujucharms.com/docs/devel/credentials) 
> pour plus de détails.

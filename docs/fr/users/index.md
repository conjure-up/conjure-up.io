<!-- lang: EN
# Getting Started
-->

# Bien débuter

<!-- lang: EN
## Hardware Requirements
-->

## Configuration Matérielle requise

<!-- lang: EN
### Public Cloud
-->

### Nuages Publics

<!-- lang: EN
For **Public Cloud** deployments hardware requirements(_constraints_) are handled by the
Spell authors and will automatically be allocated during deploy.
-->

Pour les déploiements sur des **Nuages Publics**, la configuration matérielle requise (_contrainte_)
est traitée par les auteurs de sorts et sera automatiquement attribuée lors du déploiement.

<!-- lang: EN
### Localhost
-->

### Machine Locale

<!-- lang: EN
For **localhost** deployments the following setup is recommended:

 * 2 cores
 * 16G RAM
 * 32G Swap
 * 250G SSD with a seperate block device for ZFS. Our recommendation for that device is 100G.

-->

Pour les déploiements sur une **machine locale (_localhost_)**, la configuration suivante 
est recommandée :

  * 2 coeurs
  * 16 Go de RAM
  * 32 Go de Swap
  * 250 Go SSD avec un périphérique de bloc séparé pour ZFS. Notre recommandation pour ce pérophérique est de 100 Go

<!-- lang: EN
## Configure LXD/ZFS
-->

## Configurer LXD/ZFS

<!-- lang: EN
If you plan on using the **localhost** provider a properly configured network
bridge is required and optionally(**but highly recommended**)
configuring ZFS. Skip if you plan on using any other public cloud.
-->

Si vous prévoyez d'utiliser le fournisseur **localhost**, un pont réseau 
correctement configuré est nécessaire et éventuellement (**mais fortement
recommandé**) une configuration ZFS. Passez cette étape si vous prévoyez
d'utiliser tout autre nuage public.

```bash
$ sudo lxd init
```

<!-- lang: EN
> LXD will go through a series of questions including the setup of ZFS and a
> network bridge. Make sure to utilize your seperate block device for the ZFS
> pool here.
-->

> LXD passera par une série de questions, y compris l'installation de ZFS et 
> un pont réseau. Assurez-vous d'utiliser votre périphérique de bloc séparé 
> pour le pool ZFS à ce moment là.

<!-- lang: EN
{% hint %}
There may be times where <strong>conjure-up</strong> will error out due to not
finding a suitable <strong>lxdbr0</strong> bridge device. Since LXD is socket activated you
may need to run <strong><i>lxc finger</i></strong> and re-try <strong>conjure-up</strong> installation.
{% endhint %}
-->

{% hint %}
Il peut y avoir des moments où <strong>conjure-up</strong> sortiea en erreur
car il n'aura pas réussi à trouver un dispositif de pont <strong>lxdbr0</strong> 
approprié. Puisque LXD est un connecteur activé, vous devrez peut-être exécuter 
<strong><i>lxc finger</i></strong> et ré-essayer l'installation de <strong>conjure-up</strong>.
{% endhint %}

<!-- lang: EN
## Installing conjure-up
-->

## Installer conjure-up

<!-- lang: EN
We are currently in a pre-release phase. In order to help test conjure-up we ask
that you install from the PPA until otherwise noted:
-->

Nous sommes actuellement dans une phase de pré-release. Afin d'aider à tester conjure-up, 
nous demandons que vous l'installiez à partir du PPA jusqu'à indication contraire :

```bash
$ sudo apt-add-repository ppa:conjure-up/next
```

<!-- lang: EN
Juju is one of the underlying technologies used and is also currently in beta. Please use their PPA until otherwise noted:
-->

Juju est l'une des technologies sous-jacentes utilisées et est également
actuellement en version bêta. Merci d'utiliser leur PPA jusqu'à indication contraire :

```bash
$ sudo apt-add-repository ppa:juju/devel
```

<!-- lang: EN
Finally, update your apt cache and install necessary packages:
-->

Enfin, metter à jour votre cache _apt_ et installez les paquets nécessaires :

```bash
$ sudo apt update
$ sudo apt install conjure-up
```

<!-- lang: EN
## Summon a Spell
-->

## Invoquer un sort

<!-- lang: EN
To deploy solutions such as OpenStack you will summon a spell:
-->

Pour déployer des solutions comme OpenStack, vous devez invoquer un sort :

```bash
$ conjure-up openstack
```

<!-- lang: EN
To see a list of all available spells run:
-->

Pour voir la liste de tous les sorts disponibles, exécutez :

```bash
$ conjure-up
```

<!-- lang
> Several remote locations are supported please see [Usage](usage.md) for further details.
--> 

> Plusieurs sites distants sont pris en charge, merci de lire
> la page [Utilisation](usage.md) pour plus de détails.

<!-- lang: EN
## Uninstalling
-->

## Désinstallation

<!-- lang: EN
**conjure-up** uses Juju under the hood and to remove a deployment requires the use of `juju help commands`.
-->

**conjure-up** utilise Juju sous le capot et supprimer un 
déploiement nécessite l'utilisation des commandes d'aide de Juju (`juju help commands`).

<!-- lang: EN
> You'll need to be familiar with Juju [controllers](https://jujucharms.com/docs/devel/controllers) and [models](https://jujucharms.com/docs/devel/models)
-->

> Vous aurez besoin d'être familier avec les [contrôleurs](https://jujucharms.com/docs/devel/controllers) et les [modèles](https://jujucharms.com/docs/devel/models) Juju.

<!-- lang: EN
The basics of removing a deployed spell are as follows:
-->

Les bases de la suppression d'un sort déployé sont les suvantes :

<!-- lang: EN
```
# Deploy openstack
$ conjure-up openstack

# List Juju information
$ juju controllers
CONTROLLER  MODEL    USER         CLOUD/REGION
teddy*      default  admin@local  localhost/localhost

$ juju models
MODEL       OWNER        STATUS     LAST CONNECTION
controller  admin@local  available  never connected
default*    admin@local  available  just now

# Remove the default model is houses our OpenStack deployment
$ juju destroy-model default

# Or destroy the entire environment and start over
$ juju kill-controller teddy
```
-->

```bash
# Deployer openstack
$ conjure-up openstack

# Lister les informations Juju
$ juju controllers
CONTROLLER  MODEL    USER         CLOUD/REGION
teddy*      default  admin@local  localhost/localhost

$ juju models
MODEL       OWNER        STATUS     LAST CONNECTION
controller  admin@local  available  never connected
default*    admin@local  available  just now

# Supprimer le modèle par défaut qui abrite notre déploiement OpenStack
$ juju destroy-model default

# Ou détruire tout l'environnement et recommencer
$ juju kill-controller teddy
```

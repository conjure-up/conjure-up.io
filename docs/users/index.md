# Getting Started

## Hardware Requirements

### Public Cloud
For **Public Cloud** deployments hardware requirements(_constraints_) are handled by the
Spell authors and will automatically be allocated during deploy.

### Localhost
For **localhost** deployments the following setup is recommended:

 * 2 cores
 * 16G RAM
 * 32G Swap
 * 250G SSD with a seperate block device for ZFS. Our recommendation for that device is 100G.

## Configure LXD/ZFS

If you plan on using the **localhost** provider a properly configured network
bridge is required and optionally(**but highly recommended**)
configuring ZFS. Skip if you plan on using any other public cloud.

```bash
$ sudo lxd init
```

> LXD will go through a series of questions including the setup of ZFS and a
> network bridge. Make sure to utilize your seperate block device for the ZFS
> pool here.

{% hint %}
There may be times where <strong>conjure-up</strong> will error out due to not
finding a suitable <strong>lxdbr0</strong> bridge device. Since LXD is socket activated you
may need to run <strong><i>lxc finger</i></strong> and re-try <strong>conjure-up</strong> installation.
{% endhint %}


## Installing conjure-up

We are currently in a pre-release phase. In order to help test conjure-up we ask
that you install from the PPA until otherwise noted:

```bash
$ sudo apt-add-repository ppa:conjure-up/next
```

Juju is one of the underlying technologies used and is also currently in beta. Please use their PPA until otherwise noted:

```bash
$ sudo apt-add-repository ppa:juju/devel
```

Finally, update your apt cache and install necessary packages:

```bash
$ sudo apt update
$ sudo apt install conjure-up
```

## Summon a Spell

To deploy solutions such as OpenStack you will summon a spell:

```bash
$ conjure-up openstack
```

> Several remote locations are supported please see [Usage](usage.md) for further details.

## Uninstalling

**conjure-up** uses Juju under the hood and to remove a deployment requires the use of `juju help commands`.

> You'll need to be familiar with Juju [controllers](https://jujucharms.com/docs/devel/controllers) and [models](https://jujucharms.com/docs/devel/models)

The basics of removing a deployed spell are as follows:

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


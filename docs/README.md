# Introduction

**conjure-up** is a thin layer spanning a few different underlying
technologies - [Juju](https://jujucharms.com), [MAAS](http://maas.io), and
[LXD](http://linuxcontainers.org).

{% hint %}
Its primary goal is to simplify deployment.
{% endhint %}

**conjure-up** provides you with a streamlined, turnkey solution. In order to
provide that streamlined approach, **conjure-up** makes use of processing
scripts. These scripts are executed at 3 different times in the deployment, just
after a Juju bootstrap, just before a Juju deploy, and right after a Juju
deploy.

Processing scripts give you the flexibility to alter LXD profiles in order to
expose additional network interfaces to Neutron services, import images into
Glance once the service is available, or notifying the Deployment status screen
that your solution is ready and can be viewed at a specific URL.

With these powerful concepts you can package up the solution that can then be
provided to coworkers who can easily deploy your solutions in any Public Cloud,
MAAS, or LXD.

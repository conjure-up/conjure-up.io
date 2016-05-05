# Welcome

Documentation is broken up in to 2 sections, Users and Developers.
Those looking for how to use <strong>conjure-up</strong> should browse
the **Users** documentation, and those wanting to build
**conjure-up** packages should browse the
**Developers** section.

## What is conjure-up?

**conjure-up** is a thin layer spanning a few different underlying
technologies - <a href="https://jujucharms.com">Juju</a>, <a
href="http://maas.io">MAAS</a>, and <a
href="http://linuxcontainers.org">LXD</a>.

Its primary goal is to simplify deployment. **conjure-up** is completely Juju
bundle driven, meaning, we leave the application modeling up to you and the
community. However, in the solutions like OpenStack and Bigdata we want to
provide you with a streamlined, turnkey solution. In order to provide that
streamlined approach, **conjure-up** makes use of processing scripts. These
scripts are executed at 3 different times in the deployment, just after a Juju
bootstrap, just before a Juju deploy, and right after a Juju deploy.

Processing scripts give you the flexibility to alter LXD profiles in order to
expose additional network interfaces to Neutron services, import images into
Glance once the service is available, or notifying the Deployment status screen
that your solution is ready and can be viewed at a specific URL.

With these powerful concepts you can package up the solution that can then be
provided to coworkers who can easily deploy your solutions in any Public Cloud,
MAAS, or LXD.

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

Its primary goal is to simplify deployment. In order to provide a
streamlined approach, **conjure-up** makes use of processing scripts. These
scripts are executed at different times in the deployment. This gives the spell
author full control over customizing a full turnkey solution that suits their needs.

Processing scripts give you the flexibility to alter LXD profiles in order to
expose additional network interfaces to Neutron services, import images into
Glance once the service is available, or notifying the Deployment status screen
that your solution is ready and can be viewed at a specific URL.

With these powerful concepts you can package up the solution that can then be
provided to coworkers who can easily deploy your solutions in any Public Cloud,
MAAS, or LXD.

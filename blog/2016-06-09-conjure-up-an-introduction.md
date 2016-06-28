![Conjure-up Image](https://insights.ubuntu.com/wp-content/uploads/6bf6/splash600px.png)

Have a big software project you want to get in front of users with the least amount of barriers? Maybe it has a lot of dependencies, target runtimes, and/or micro-service type relationships. Don’t feel like writing a book’s worth of install and configuration documentation? Wish you could just tell folks to just conjure-up your project? As if it was a magical spell? Hear about the latest platform but don’t have time to figure out how to begin to deploy it just to give it a try?

Conjure-up is a power tool for getting users using Big Software
---------------------------------------------------------------

The Ubuntu Solutions Engineering team is pleased to announce the first pre-release of conjure-up 2.0! Conjure-up lets you summon up big-software as a “spell” - a model of a software stack, including all the extra know-how to get you from bits on disk to a fully usable, configured, related deployment. Start using big software instead of learning how to deploy it.

-   Want OpenStack? Done, no problem.
-   What about Big Data? Like magic.
-   Deep Learning? Yep, just like that.
-   Kubernetes? Like butter.

Seems simple? It is, with conjure-up. But wait, that sounds way too easy. What’s the catch? After picking a spell, conjure-up presents you with a list of targets to deploy to including:

-   Major public clouds like EC2, Azure or GCE
-   A local (and super fast) deployment with LXD containers
-   Bare metal in a MAAS cluster

From there conjure-up can work in two ways:

1.  Walkthrough mode: where each spell will present you with a series of panels describing software components and their associated configurations. Users can accept the defaults or modify as needed to fit their particular use case.
2.  Default (headless) mode: where a spell can be deployed with all default options, placement and relations bypassing all the walkthrough panels.

Enough with the sales pitch, you're itching to give it a try right? Let’s get started!

Getting conjure-up
------------------

Since this is a pre-release adding our PPA is required. 2.0 GA will ship in Universe.

    $ sudo apt-add-repository ppa:conjure/next
    $ sudo apt update
    $ sudo apt install conjure-up

Usage
-----

    $ conjure-up openstack

Release Notes
-------------

Several bug fixes and new features were introduced in this release. For a full list of what’s changed visit the [Releases page](https://github.com/ubuntu/conjure-up/releases/tag/2.0.0.1).

Feature highlights
------------------

-   Ability to summon spells from various remote repositories, such as the Juju charm store, GitHub, BitBucket, and privately managed web servers.
-   2 modes of deployments, an Interactive mode which walks you through the entire deploy process. Second, a headless mode for a non-interactive approach to deploying big-software.

Want to get involved?
---------------------

Please visit our website or join us on IRC to participate in this project:

-   [Website](http://conjure-up.io/)
-   [GitHub](https://github.com/ubuntu/conjure-up)
-   [IRC](http://webchat.freenode.net/?channels=ubuntu-server)


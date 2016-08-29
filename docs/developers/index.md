# Developers

At the heart of **conjure-up** are spells. They consist of all the information
required to deploy your applications and walk the user through getting started
as quickly as possible.

There are 2 main parts that make up a spell. The first being a **Juju bundle**,
these are your blueprints for defining the amount of units for each application
along with any default configuration options you wish to expose to the user for
modification.

The second part is the additional data added to the spell to be **conjure-up**
enabled. This contains your metadata which describes the spell and a set of
steps that you define for a user to walkthrough. This allows you as a spell
author to ensure that a user can learn about your application and at the end
know exactly what to do next in order to make the most out of your application.

It is recommended to learn the [anatomy of a spell](spell-anatomy.md)
in order to get started building your spell!.

# Running in Headless Mode

**conjure-up** is meant to be a teaching tool in addition to a full blown
application deployment tool. By Default **conjure-up** will walk you through the
entire deployment process and help you understand what it is you are deploying.

Where this doesn't make sense is if you are wanting to deploy your application
in an automated fashion. For example, integrating the deployment with a Jenkins
CI server.

For these cases **conjure-up** provides a headless mode.

## Usage

To deploy in a headless mode you'll need to have credentials defined if
deploying to a Public Cloud or make sure LXD is configured if deploying to
Localhost.

### Examples

To deploy OpenStack to a Localhost provider:

```
$ conjure-up ~conjure/openstack-novalxd to localhost
```

The key argument is **to** where this indicates which provider to deploy to.

If we want to deploy to a cloud like AWS:

```
$ conjure-up ~containers/observable-kubernetes to aws
```

> Keep in mind you'll need to have credentials defined, see
> [Juju credentials](https://jujucharms.com/docs/devel/credentials) for more
> details.

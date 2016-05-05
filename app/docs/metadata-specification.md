# Metadata specification

```json
{
  "openstack-base": {
    "nova-compute": {
      "allowed_assignment_types": ["BareMetal", "KVM"]
    }
  }
}
```

The metadata is defined by **bundle-key** (openstack-base in this example), then
a service within that bundle (nova-compute), and finally
**allowed_assignment_types**.

The **bundle-key** should reference the matching key name in the `config.json`.
In this example, `nova-compute` is one of the services that can be deployed via
its associated bundle.

The **allowed_assignment_types** refer to what type of machine/container the
particular service can be deployed into. The available types are **BareMetal,
KVM, LXD**.

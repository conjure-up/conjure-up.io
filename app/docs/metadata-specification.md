# Summary

There are 2 styles of spells that can be used within conjure-up.

# First Style
The first is a spell composed of a single bundle and its related metadata
stored as .zip files. These can be hosted on GitHub, BitBucket, or from a
remote web server where you have a direct link to the spell.

The spell will contain e a local bundle stored as a file in the spell as
**bundle.yaml**. This is the same convention used in the charmstore publishing.

# Second Style
The second are Juju Bundles in the charm store are directories stored as .zip
files.

The bundle's charm store metadata will need to mark it as being conjure-up
enabled, so that conjure-up can search for bundles that are available.

Since bundles are just a .zip, we will add a directory to a charm store bundle
to make it 'Conjure-up enabled'.

No matter the style of the spell they both follow the same directory conventions.
For example, the charmstore bundle format will usually carry several files in its
toplevel directory but will also contain a **conjure** sub-directory. A single spell
style will normally contain a **README.md** and **bundle.yaml** in the toplevel directory and everything
else inside its own **conjure** sub-directory.

To reiterate, **conjure/** is the required subdirectory inside the Charmstore's
bundle.zip or from a remote VCS like Github.

All spells are required to have a **conjure/metadata.json** file that describes
the spell.

See https://github.com/battlemidget/bundle-observable-kubernetes as an example.

Here's what we need to add to bundles:

1. A list of which cloud types will work / are tested with the bundle (ie, don't
   deploy openstack on AWS, or the openstack-lxd bundle is only supported on a
   LXD controller.)
2. Metadata for each service showing what container type (lxc/lxd/kvm/baremetal)
   are allowed.
3. Scripts and metadata about them
    - A script that will run periodically after the last commands to deploy and
      set relations are done, and return whether or not the services are ready
      to run the post-processing scripts. (This could check responses of API
      endpoints, for instance.) This script should not make changes.
    - A set of required steps that need to be run. These are defined inside of **conjure/steps** sub-directory. See [Spell Step Specification](Spell-Step-Specification)
        - Ideally these are actions on the charms, but may be some shell script.
          e.g., adding an image to glance or setting up a user for a web
          dashboard.) The script metadata may have a key 'shortcmd' - shortcmd is
          displayed to the user to show what they could type on their own. The
          script may have a few other lines to do error handling, etc, but if it
          has lots of logic, we shouldn't include 'shortcmd' and just explain
          what's going on in the description. If we need to cram a lot into the
          script, maybe we should file a bug to create the appropriate charm
          action.
       - A set of post-processing scripts that are listed in the metadata file.
      We'll have a separate script per step, to avoid complicating the scripts.
      They'll each be run just once, after the user hits the appropriate button.
    - A final info-gathering script that returns a JSON/YAML object to the
      conjure-up UI that has a list of info the user needs to get started, like
      the IP for their new web dashboard and a user/pass.
    - A further set of action scripts like the post-processing steps, only these
      are optional things you might do after everything's set up, like maybe
      running a benchmark via a juju action.
      - These will also support user input via defined extra fields that send
        their value along to the script in environment variables. See the
        examples below, where the 'key' field is the name of the resulting
        environment variable.

## Metadata example

```json
{
    "friendly-name": "OpenStack with NovaLXD",
    "cloud-blacklist": [
        "maas"
    ],
    "cloud-whitelist": [
        "aws",
        "azure"
    ],
    "container-types": {
        "nova-compute": [
            "KVM",
            "BareMetal"
        ]
    },
    "optional-actions": [
    {
        "description": "Run tempest to benchmark your new cloud",
        "script": "scripts/run-tempest.sh",
        "additional-input": [{
            "label": "Number of iterations", "key": "N_ITER", "type": "int", "default": 1
        }]
    },
    {
        "description": "Add a user",
        "script": "scripts/add-user.sh",
        "additional-input": [{
            "label": "Username", "key": "USERNAME", "type": "text", "default": "ubuntu"
        },
        {
            "label": "Password", "key": "PASSWORD", "type": "password"
        }]
    }
    ]
}
```

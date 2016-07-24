# Anatomy of a conjure-up spell

We will start with the directory layout of a typical spell. Some of this will be
familiar as we build on the existing Juju bundle specification.

```
my-super-application>
   - bundle.yaml
   - README.md
   - conjure/
     - metadata.json
     - steps/
       - 00_deploy-done
       - 00_pre-deploy
       - 00_post-bootstrap
       - step-01_my_first_step
       - step-01_my_first_step.yaml
```

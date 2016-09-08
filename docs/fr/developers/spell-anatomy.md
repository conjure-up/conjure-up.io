<!-- lang: EN
# Anatomy of a conjure-up spell
-->

# Anatomie d'un sort conjure-up

<!-- lang: EN
We will start with the directory layout of a typical spell. Some of this will be
familiar as we build on the existing Juju bundle specification.
-->

Nous allons commencer par l'agencement du répertoire d'un sort typique. Une partie 
de cet arrangement vous sera familière puisque nous le construisons sur la 
spécification existante des ensembles Juju.

```
my-super-application>
   - bundle.yaml
   - README.md
   - metadata.yaml
   - steps/
     - 00_deploy-done
     - 00_pre-deploy
     - 00_post-bootstrap
     - step-01_my_first_step
     - step-01_my_first_step.yaml
```

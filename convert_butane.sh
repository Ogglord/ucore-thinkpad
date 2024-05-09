#!/bin/bash
# converts init.bu to init.ign
podman run --interactive --rm --security-opt label=disable \
       --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
       --pretty --strict init.bu > init.ign
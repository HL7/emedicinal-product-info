# gravitate-health
Gravitate Health Project

See latest successful build on https://hl7-eu.github.io/gravitate-health/
See latest successful CI build on http://build.fhir.org/ig/hl7-eu/gravitate-health/

To build locally (on 'nix'-systems) execute the following: `rm -rf output && rm -rf temp/ && docker run --rm -v $(pwd):/home/publisher/ig hl7fhir/ig-publisher-base:latest /bin/bash -c "cd /home/publisher/ig && ./_updatePublisher.sh -y -f && ./_genonce.sh -Xms1G -Xmx4G" && docker run -p 80:80 -v $(pwd)/output:/usr/share/nginx/html nginx`




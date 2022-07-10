# gravitate-health
Gravitate Health Project

See Latest successful build on http://build.fhir.org/ig/hl7-eu/gravitate-health/toc.html

Old
- https://hl7-eu.github.io/gravitate-health/
- http://build.fhir.org/ig/hl7-eu/gravitate-health/


To build locally (on 'nix'-systems) execute the following: `rm -rf output && rm -rf temp/ && docker run --rm -v $(pwd):/home/publisher/ig hl7fhir/ig-publisher-base:latest /bin/bash -c "cd /home/publisher/ig && ./_updatePublisher.sh -y -f && ./_genonce.sh -Xms1G -Xmx4G" && docker run -p 80:80 -v $(pwd)/output:/usr/share/nginx/html nginx`





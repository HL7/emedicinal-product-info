# gravitate-health
Gravitate Health Project

See latest build on http://build.fhir.org/ig/hl7-eu/gravitate-health/

To build locally (on 'nix'-systems) execute the following: `rm -rf output && rm -rf temp/ && docker run --rm -v $(pwd):/home/publisher/ig trifork/ig-publisher-base:r4b /bin/bash -c "cd /home/publisher/ig && ./_updatePublisher.sh -y -f && ./_genonce.sh -Xms1G -Xmx4G" && docker run -p 80:80 -v $(pwd)/output:/usr/share/nginx/html nginx`

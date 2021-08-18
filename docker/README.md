## Taken from https://github.com/FHIR/auto-ig-builder/tree/master/images/ig-publisher-base
With R4B support

## FHIR Publisher for local development

### Get the image locally

    # Pull from Docker Hub
    docker pull trifork/ig-publisher-base:r4b

    # Build it yourself
    git clone https://github.com/fhir/auto-ig-builder
    cd auto-ig-builder/images/ig-publisher-base
    docker build -t trifork/ig-publisher-base:r4b .

### Run a container with the image

You'll want to mount an IG into the Docker ccontainer at `/home/publisher/ig`. For example:

```
cd /path/to/my-ig
docker run --rm -it -v $(pwd):/home/publisher/ig trifork/ig-publisher-base:r4b
```

Inside the docker container, you'll have access to the following commands:

* `_updatePublisher.sh` -- download the latest FHIR IG Publisher jar
* `_genonce.sh` -- run sushi + FHIR IG PUblisher to create output
* `_gencontinuous.sh` -- run sushi + FHIR IG PUblisher in "watch mode"

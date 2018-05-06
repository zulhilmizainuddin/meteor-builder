# meteor-builder

Meteor Docker image for building Meteor projects

## Prerequisite

Make sure the Meteor project to be built includes a `.meteorignore` and `.dockerignore` file with the following contents.

`.meteorignore`
```
output/
```

`.dockerignore`
```
*
!output/
```

## Build steps

1. Run `npm install`.

```
$ docker run --rm -v $(pwd):/home/node/app meteor-builder meteor npm install
```

2. Run `npm test`.
```
$ docker run --rm -v $(pwd):/home/node/app meteor-builder meteor npm test
```

3. Run `meteor build`.
```
$ docker run --rm -v $(pwd):/home/node/app meteor-builder meteor build --directory output
```
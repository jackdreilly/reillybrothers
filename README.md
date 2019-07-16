# ReillyBrothers.net
## Setup

### NPM and Vue
Install `npm` and `vue-cli`.

Check home page of NPM for install instructions.

```
npm install -g @vue/cli
```

### `gcloud` tool
`gcloud` needs to be installed to interact w/ GCP resources, like our server.

After installed (look online, probably a pre-built binary is the way to go), set it up (go through online step-through) to point at `quiklyrics-go` project and `us-central1-c` region.

To test, you should be able to log in w/

```
gcloud compute ssh reilly
```

`reilly` is the name of the GCE instance (our virtual machine).

## Install deps
```
npm install
```


## Run Development
```
make
```

## Deploy to Production

Make sure `gcloud` is installed and pointing at the right project.

```
make deploy
```

## Clean build files

```
make clean
```

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```

### Run your end-to-end tests
```
npm run test:e2e
```

### Run your unit tests
```
npm run test:unit
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

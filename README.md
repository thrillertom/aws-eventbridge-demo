# aws-eventbridge-demo

## Requirements

Install Serverless framework

```sh
npm install -g serverless
```

## Install Serverless Plugins

```sh
sls plugin install -n serverless-ruby-layer
sls plugin install -n serverless-esbuild
sls plugin install -n serverless-better-credentials
```

## How to hack it?

### Deploy the functions

```sh
sls deploy
```

### Invoke the consumer function
```sh
sls invoke --function consumer
```

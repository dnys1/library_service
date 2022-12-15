# library_service

A simple library service built with Smithy Dart.

## Setup

In order to build the service, clone the [smithy](https://github.com/awslabs/smithy) repository, and build the Docker image for it: 

```sh
$ git clone https://github.com/awslabs/smithy
$ cd smithy && docker build -t smithy .
```

## Run

To run the server:

```sh
$ dart run bin/server.dart
```

To run the client:

```sh
$ dart run bin/client.dart
```

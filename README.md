# Docker Kotlin
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/saschpe/docker-kotlin.svg?branch=master)](https://travis-ci.org/saschpe/docker-kotlin)
[![Docker Pulls](https://img.shields.io/docker/pulls/saschpe/kotlin.svg)](https://hub.docker.com/r/saschpe/kotlin/)
[![Docker Build Status](https://img.shields.io/docker/build/saschpe/kotlin.svg)](https://hub.docker.com/r/saschpe/kotlin/)

Kotlin Docker container based on Alpine Linux.


## Usage
Invoke the container directly to run the *kotlin* binary:

    docker run --rm saschpe/kotlin -help

If you need to run the *kotlinc* binary, you can supply a differen entrypoint:

    docker run --entrypoint kotlinc saschpe/kotlin -help

Or use another container image instead:

    docker run --rm saschpe/kotlinc -help

Don't worry, it's an extremely thin layer on top (just differing by ENTRYPOINT).


## Scripts
These scripts simplify various tasks related to container building and
publishing.

    .
    └─── scripts
        ├── docker
        │   ├── build           Build the container locally
        │   └── run             Run the container locally
        ├── inc.constants
        └── inc.functions


## License

    Copyright 2017 Sascha Peilicke

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

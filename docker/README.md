- [Dockerizing](#dockerizing)
  - [1: Read and understand your base image](#1-read-and-understand-your-base-image)
  - [2: Combine install commands with cleanup](#2-combine-install-commands-with-cleanup)
  - [3: Use a separate build stage](#3-use-a-separate-build-stage)
  - [4: Set the system locale](#4-set-the-system-locale)
  - [5: Create an unprivileged user](#5-create-an-unprivileged-user)
  - [6: Prefer exec form for CMD](#6-prefer-exec-form-for-cmd)
  - [8: Avoid ONBUILD](#8-avoid-onbuild)
  - [9: Always specify resource constraints](#9-always-specify-resource-constraints)
  - [10: Avoid preforking in a container](#10-avoid-preforking-in-a-container)
  - [11: Scale by adding containers](#11-scale-by-adding-containers)
  - [12: Log to STDOUT or an external agent](#12-log-to-stdout-or-an-external-agent)

>**When to use Docker**
>
>Any developer is welcome to use Docker in their development setup. New apps developed at Abtion should not require to have a docker setup unless there is a good reason for it (like an uncommon dependency).
>Our own legacy apps might require a docker setup, however, we will strive to not make it a requirement if possible.


# Dockerizing

This video is a good resource for tips on how to optimize docker setup

https://youtu.be/kG2vxYn547E?t=255 

TLDR;

[See slides here](https://speakerd.s3.amazonaws.com/presentations/55d8979b402d43f4a5a99cce56273579/containers.pdf)

## 1: Read and understand your base image

There is an official [ruby image](https://hub.docker.com/_/ruby) on Docker Hub, but it comes with batteries included. 

[Alpine](https://hub.docker.com/_/alpine) is a very slim linux that can be extended with ruby (see [Tip 3](#tip-3-use-a-separate-build-stage)). 

> **Abtion** recommends to start off with a [ruby image](https://hub.docker.com/_/ruby) before spending time on getting a slim setup.

## 2: Combine install commands with cleanup

👍👍👍
```Docker
RUN apt-get update -y \
 && apt-get install -y -q mypackage \
 && apt-get clean \
 && rm -f /var/lib/apt/lists/*_* 
```

👎🤨😔
```Docker
RUN apt-get update -y
RUN apt-get install -y -q mypackage
RUN apt-get clean \
 && rm -f /var/lib/apt/lists/*_* 
```

## 3: Use a separate build stage

Multi-stage docker files

```Docker
FROM my-base AS builder
COPY . /app
RUN apt-get install build-essential \
 && bundle install --deployment

FROM my-base
COPY --from=builder /app /app
```

<img src="multi-stage-docker-files.png" alt="Multi-stage docker files" height="100">

## 4: Set the system locale

```Docker
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en 
```

## 5: Create an unprivileged user

After building your app...

```Docker
RUN adduser -s /bin/sh -u 1001 -G root \
 -h /app -S -D rails \
 && chown -R rails /app
USER rails 
```

## 6: Prefer exec form for CMD

👍👍👍
```Docker
CMD ["bundle", "exec", "rails", "s"]
```

👎🤨😔
```Docker
CMD bundle exec rails s
```

👍👍👍
```Docker
CMD exec bundle exec rails s
```

## 8: Avoid ONBUILD

👎🤨😔
```Docker
# Base image...
ONBUILD COPY . /app
ONBUILD RUN bundle install
# ...
```

## 9: Always specify resource constraints

```bash
docker run --cpus=2.0 --memory=200M ...
```

```docker-compose
apiVersion: v1
kind: Pod
spec:
 containers:
 - name: rails
 resources:
 requests:
 memory: "100Mi"
 cpu: 0.5
 limits:
 memory: "200Mi"
 cpu: 1.0
...
```

## 10: Avoid preforking in a container

Avoid preforking in a container


## 11: Scale by adding containers

Scale by adding containers

## 12: Log to STDOUT or an external agent

```
ENV RAILS_LOG_TO_STDOUT=true
```

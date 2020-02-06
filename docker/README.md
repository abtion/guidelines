# Dockerizing

This video is a good resource for tips on how to optimize docker setup

https://youtu.be/kG2vxYn547E?t=255 

TLDR;

[See slides here](https://speakerd.s3.amazonaws.com/presentations/55d8979b402d43f4a5a99cce56273579/containers.pdf)

## Tip #1: Read and understand your base image

There is an official [ruby image](https://hub.docker.com/_/ruby) on Docker Hub, but it comes with batteries included. 

[Alpine](https://hub.docker.com/_/alpine) is a very slim linux that can be extended with ruby.

## Tip #2: Combine install commands with cleanup

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

## Tip #3: Use a separate build stage

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

## Tip #4: Set the system locale

```Docker
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en 
```

## Tip #5: Create an unprivileged user

After building your app...

```Docker
RUN adduser -s /bin/sh -u 1001 -G root \
 -h /app -S -D rails \
 && chown -R rails /app
USER rails 
```

## Tip #6: Prefer exec form for CMD

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

## Tip #8: Avoid ONBUILD

👎🤨😔
```Docker
# Base image...
ONBUILD COPY . /app
ONBUILD RUN bundle install
# ...
```

## Tip #9: Always specify resource constraints

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

## Tip #10: Avoid preforking in a container

## Tip #11: Scale by adding containers

## Tip #12: Log to STDOUT or an external agent

```
ENV RAILS_LOG_TO_STDOUT=true
```

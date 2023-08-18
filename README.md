# Getting Started

## Local Development

### Run

```shell
./gradlew run
```

Visit http://localhost:8080.

### Build

Build binary:

```shell
./gradlew clean build installDist
```

Build Docker image:

```shell
docker build -t getting-started
```

Run Docker image:

```shell
docker run -p 8080:8080 getting-started
```

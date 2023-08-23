# Getting Started

## Local Development

### Run

```shell
./gradlew run
```

Visit http://localhost:8080.

### Build

1. Package application:

    ```shell
    ./gradlew clean installDist
    ```

2. Build Docker image:

    ```shell
    docker build . -t getting-started
    ```

3. Run Docker image:

    ```shell
    docker run -p 8080:8080 getting-started
    ```

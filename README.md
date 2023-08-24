# Getting Started

## Local Development

### Prerequisites

- [ ] [JDK](https://adoptium.net) - Java Development Kit version 17 or higher. To check, run `java -version`:
    ```shell
    $ java -version
    openjdk version "17.0.8" 2023-07-18
    ```

- [ ] Docker CLI - via one of these alternatives:
   - [Colima](https://github.com/abiosoft/colima) - Colima command-line tool (recommended)
   - [Rancher](https://rancherdesktop.io) - Rancher desktop
   - [Podman](https://podman-desktop.io) - Podman desktop

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

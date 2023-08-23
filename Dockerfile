FROM eclipse-temurin:17-jre-alpine
COPY build/install/* /
CMD ["getting-started"]

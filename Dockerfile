FROM eclipse-temurin:25-jre-alpine
WORKDIR /app

RUN apk update && apk upgrade --no-cache
RUN addgroup -S appuser && adduser -S -G appuser appuser

# FIX: Separate the copy commands cleanly
COPY traklead-click.jar traklead-click.jar
COPY traklead-server.jar app.jar
COPY GeoLite2-Country.mmdb GeoLite2-Country.mmdb

# Ensure the non-root user owns the files
RUN chown -R appuser:appuser /app
USER appuser

EXPOSE 8080

ENTRYPOINT ["java", "-XX:+UseContainerSupport", "-jar", "app.jar"]
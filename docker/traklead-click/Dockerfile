FROM eclipse-temurin:25-jre-alpine
WORKDIR /app
RUN addgroup -S traklead && adduser -S traklead -G traklead
RUN mkdir -p /opt/traklead-click
COPY GeoLite2-Country.mmdb /opt/traklead-click/GeoLite2-Country.mmdb
COPY traklead-click.jar /app/app.jar
RUN chown -R traklead:traklead /app /opt/traklead-click
USER traklead
ENV JAVA_OPTS=""
EXPOSE 9292
ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -jar /app/app.jar"]

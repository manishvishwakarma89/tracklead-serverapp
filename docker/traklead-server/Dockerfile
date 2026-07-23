FROM eclipse-temurin:25-jre-alpine
WORKDIR /app
RUN addgroup -S traklead && adduser -S traklead -G traklead
COPY traklead-server.jar /app/app.jar
RUN chown -R traklead:traklead /app
USER traklead
ENV JAVA_OPTS=""
EXPOSE 9191
ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -jar /app/app.jar"]

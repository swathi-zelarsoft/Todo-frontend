FROM        node as  BUILD
RUN         mkdir /app
WORKDIR     /app
COPY        server.js .
COPY        package.json .
RUN         npm install
FROM        node:stretch-slim
COPY        --from=BUILD /app/. .
CMD         [ "node", "server.js" ]
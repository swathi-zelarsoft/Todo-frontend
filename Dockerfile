FROM        node as  Build
RUN         mkdir /app
WORKDIR     /app
COPY        server.js routes.js todoController.js /app/
COPY        package*.json ./
RUN         npm install
FROM        node:stretch-slim
RUN         mkdir -p /todo
COPY        --from=Build /app  /todo
WORKDIR      /todo
CMD         [ "node", "server.js" ]
FROM        node as  BUILD
RUN         mkdir /app
WORKDIR     /app
COPY        server.js routes.js /app/
COPY        package*.json ./
RUN         npm install
CMD         [ "node", "server.js" ]
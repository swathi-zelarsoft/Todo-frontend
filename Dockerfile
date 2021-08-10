FROM        node as  BUILD
RUN         mkdir /app
WORKDIR     /app
COPY        server.js .
COPY        package.json .
RUN         npm install
COPY        --from=BUILD /app/server.js server.js
CMD         [ "node", "server.js" ]
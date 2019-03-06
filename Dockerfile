FROM node:latest

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install -g @atomist/cli \
    && npm install \
    && npm cache clean --force \
    && atomist config --api-key "${ATOMIST_API_KEY}" --workspace-id "${ATOMIST_WORKSPACE_ID}"


EXPOSE 8080

CMD ["atomist", "start"]

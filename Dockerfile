FROM node:latest

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install -g @atomist/cli \
    && npm install \
    && npm cache clean --force


EXPOSE 8080

CMD ["./entrypoint.sh"]

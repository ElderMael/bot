FROM node:latest

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install -g @atomist/cli \
    && npm install \
    && npm cache clean --force


CMD ["atomist", "start", "--local"]

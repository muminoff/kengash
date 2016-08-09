FROM mhart/alpine-node:base

WORKDIR /src
ADD . .

RUN node --version

# EXPOSE 3000
# CMD ["node", "index.js"]

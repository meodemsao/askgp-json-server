FROM node:16-alpine AS builder

# Create app directory
WORKDIR /data

# Install app dependencies
RUN npm -g install json-server

COPY db.json db.json

EXPOSE 3000

ENTRYPOINT ["json-server"]
CMD ["--help"]
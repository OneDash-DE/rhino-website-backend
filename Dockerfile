FROM node:18-alpine
RUN apk add --no-cache vips-dev vips make python3
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
WORKDIR /opt/app
COPY . .
RUN npm rebuild --platform=linuxmusl --arch=x64 sharp
EXPOSE 1337
CMD ["yarn", "start"]

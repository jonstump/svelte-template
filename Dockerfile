FROM node:17-alpine
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN ["yarn", "install"]
COPY . .
CMD ["yarn", "dev", "--host"]
ENV PORT 3000
EXPOSE 3000

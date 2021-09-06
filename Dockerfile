# FROM node:14

# ENV DEBIAN_FRONTEND noninteractive

# WORKDIR /doubtfire-web

# EXPOSE 4200

# ENV NODE_ENV docker

# # Install packages within the container
# COPY package.json package-lock.json /doubtfire-web/
# RUN npm install

# CMD npm start



FROM node:14-alpine As build

WORKDIR /doubtfire-web
COPY ./ /doubtfire-web/
RUN npm install @angular/cli && npm install

# ENV DEBIAN_FRONTEND noninteractive
# Install packages within the container
# COPY package.json /doubtfire-web/
# FROM node:14-alpine As production
# WORKDIR /root/

# COPY --from=build /doubtfire-web ./doubtfire-web
# RUN npm install

EXPOSE 4200
# ENV NODE_ENV docker

CMD npm start
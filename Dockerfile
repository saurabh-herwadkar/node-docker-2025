# Using the official Node.js image for the LTS version
FROM node:18.17.0
 
# Set our app's working directory
WORKDIR /app
 
# copy the primary source code
COPY /src /app/src/
 
# copy the package.json and package-lock.json to
# ensure we use the same dependencies
COPY package.json /app/
COPY package-lock.json /app/
 
# copy the entrypoint.sh for running the app
COPY conf/entrypoint.sh /app/
 
# install dependencies
RUN npm install
 
# make the entrypoint.sh executable
RUN chmod +x entrypoint.sh
 
# run our app
#CMD ["./entrypoint.sh"]

#CMD ["sleep","infinity"]
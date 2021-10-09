FROM node:12
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
ENV PATH $PATH:/var/jenkins_home/tools/jenkins.plugins.nodejs.tools.NodeJSInstallation/nodejs/bin
CMD npm start

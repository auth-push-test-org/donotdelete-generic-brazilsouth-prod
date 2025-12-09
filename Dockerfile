FROM node:18-alpine
WORKDIR /app

# Copy mock package
COPY mock-output /mock

# Pack and install the mock package
RUN cd /mock/@asyncapi/cli && \
    npm pack && \
    npm install -g *.tgz

CMD ["node", "-e", "console.log('Mock package installed successfully')"]

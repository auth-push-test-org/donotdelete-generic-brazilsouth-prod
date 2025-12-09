FROM node:18-alpine
WORKDIR /app

# Copy mock packages
COPY mock-output /mock

# Install each mock package globally
RUN for d in /mock/*; do \
      cd "$d" && npm pack && npm install -g *.tgz; \
    done

CMD ["node", "-e", "console.log('Mock packages installed successfully')"]

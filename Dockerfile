FROM node:18

# Set working directory
WORKDIR /app

# Clone your fork (adjust if repo name is different)
RUN git clone https://github.com/javanvibecodes/postiz.git . \
 && yarn install --frozen-lockfile \
 && yarn build

# Expose port used by Postiz (Render will detect this)
EXPOSE 3000

# Start the app
CMD ["yarn", "start"]

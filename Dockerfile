FROM node:18

# 1. Create app directory
WORKDIR /app

# 2. Clone the actual Postiz source code
RUN git clone https://github.com/gitroomHQ/postiz.git . \
 && yarn install --frozen-lockfile \
 && yarn build

# 3. Copy your own env vars in (Render injects these automatically, so no need to hardcode)
EXPOSE 3000

# 4. Start the app
CMD ["yarn", "start"]

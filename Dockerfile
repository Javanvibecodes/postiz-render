FROM node:18

WORKDIR /app

# Copy code that Render already pulled from your Git repo
COPY . .

# Install dependencies and build the project
RUN yarn install --frozen-lockfile
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]

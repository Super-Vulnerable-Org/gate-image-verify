FROM node:16.14.0-bullseye
WORKDIR /app
COPY package.json .
RUN npm install --omit=dev
# a credential baked into a layer — absent from the repo
RUN printf 'STRIPE_KEY=sk_live_4eC39HqLyjWDarjtT1zdp7dcQ8Fg2Xy1\n' > /app/.env
COPY . .
CMD ["node","-e","console.log('hi')"]

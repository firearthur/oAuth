# oAuth App using Passport
This app uses create-react-app for boostraping the front-end with CSS-Modules eject to provided locally scoped styles. Also, it trnaspiles ES6 code in the back-end to enable you to use it in node.

## Dependencies:
* Make sure you run the command `yarn dep` to install all the dependencies for both the client and the server.

## Production:
* The command `yarn build` or `npm run build` creates the transpiled Node code for the back-end and the optimized React bundle for the front-end.
* The command `yarn start` or `npm start` runs the server on the default port from ENV and serves the static assests with the React app on the same port.
* **Note:** Make sure to create a `.env` file that looks similar to `example.env` and specify the env vars especially `NODE_ENV=production`.

## Development:
* The command `yarn dev` or `npm run dev` starts the nodemon development server and the React development server with hot reloading.
* **Note:** Same as not above about creating the `.env` file but this time with `NODE_ENV=dev`



import express from 'express';
import path from 'path';
import logger from 'morgan';
import bodyParser from 'body-parser';
import cors from 'cors';
import chalk from 'chalk';

const app = express();
const port = process.env.PORT || 3333;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(logger('dev'));
app.use(cors({
  allowedHeaders: 'Content-Type, authorization',
  methods: ['GET, POST, PUT, DELETE', 'OPTIONS'],
}));


// if the node env is in production then w're serving from the transpiled folder
// at dis/client/index
const staticPathOffset = process.env.NODE_ENV === 'production' ? '../' : '';

app.use(express.static(path.join(__dirname, `/../../${staticPathOffset}client/build/`)));
// Handle React routing, return all requests to React app
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, `/../../${staticPathOffset}client/build/`, 'index.html'));
});

app.listen(port, () => {
  console.log(chalk.blue('listening on port:', chalk.green.bold(port)));
});

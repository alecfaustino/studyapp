// for any point where we need to use.env
import dotenv from 'dotenv';
dotenv.config();

import express from 'express';
import cors from 'cors';
import morgan from 'morgan';

const app = express();
const port = 8080;

app.use(cors());
app.use(express.json());
app.use(morgan('dev'));

// router definitions below

// router mounting below

app.listen(port, () => {
  console.log(`Server is running on port: ${port}`);
});

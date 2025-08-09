import dotenv from 'dotenv';
dotenv.config();
import {Pool} from 'pg';

const pool = new Pool({
  user: process.env.PGUSER,
  host: process.env.PGHOST,
  // Your .env PGPORT will be treated as a string, but pg Pool expects a type of number. 
  port: process.env.PGPORT ? parseInt(process.env.PGPORT, 10) : undefined,
  database: process.env.PGDATABASE,
  // if you don't have a password, omit or leave the PGPASSWORD blank on .env
  password: process.env.PGPASSWORD || undefined
});

export default pool;
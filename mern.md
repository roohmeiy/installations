# Setup Instructions

## Run React
```bash
npm install
npm start
```
or 

```bash
npm run build
```
If backend rule is not configured in react service directly than add with env var
```bash
sudo vi .env
REACT_APP_BACKEND_URL=http://localhost:3500/api/tasks
```


## Run Backend Without Auth
```bash
docker run --name mongodb -d -p 27017:27017 mongo
sudo vi .env
MONGO_CONN_STR=mongodb://localhost:27017/mydatabase
USE_DB_AUTH=false
PORT=3500

npm install
node index.js
suddo vi index.js
require('dotenv').config();  // Ensure env variables are loaded
```

## Run Backend With Auth
```bash
docker run --name mongodb -d -p 27017:27017 \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=secretpassword \
mongo
sudo vi .env
MONGO_CONN_STR=mongodb://admin:secretpassword@localhost:27017/mydatabase?authSource=admin
USE_DB_AUTH=true
PORT=3500
```

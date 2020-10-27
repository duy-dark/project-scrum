require('dotenv').config();

module.exports = {
  port: process.env.PORT_SERVER,
  secretKey: 'moviebookingvalid',
  skTimeLife: 2678400,
  DBHost: process.env.DB_HOST,
  DBPort: process.env.DB_PORT,
  DBDatabase: process.env.DB_DATABASE,
  DBUsername: process.env.DB_USERNAME,
  DBPassword: process.env.DB_PASSWORD
}
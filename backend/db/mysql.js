const mysql = require('mysql');
let { DBHost, DBPort, DBUsername, DBDatabase, DBPassword } = require('../config')

const connection = () => {
  return mysql.createConnection({
    host: DBHost,
    user: DBUsername,
    password: DBPassword,
    database: DBDatabase,
    port: DBPort
  });
}

const load = sql => {
  return new Promise((resolve, reject) => {
    const cn = connection();
    cn.connect();
    cn.query(sql, (err, rows) => {
      if (err) {
        reject(err);
      } else {
        resolve(rows);
      }
      cn.end();
    });
  });
}

const save = sql => {
  return new Promise((resolve, reject) => {
    var cn = connection();
    cn.connect();

    cn.query(sql, function(error, value) {
      if (error) {
          reject(error);
      } else {
          resolve(value);
      }
      cn.end();
    });
  });
}

module.exports = {
  load, save
}
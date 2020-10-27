const { load, save } = require('../../db/mysql');

exports.getAllBoards = () => {
  let sql = `SELECT * FROM boards`;
  return load(sql);
}
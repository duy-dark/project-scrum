const resSuccess = require('../respones/resSuccess') 
const {
  getAllBoards
} = require('./model')

const getListBoards = async (req, res, next) => {
  try {
    let boards = await getAllBoards()
    res.json(resSuccess({
      boards: boards
    }))
  } catch (err) {
    throw err
  }
}

module.exports = {
  getListBoards
}
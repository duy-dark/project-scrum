const express = require("express")
const handler = require("./handler")
const router = express.Router()

router.get('/', handler.getListBoards)
module.exports = router
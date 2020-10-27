const resFail = require('../modules/respones/resFail')

module.exports = (err, req, res, next) => {
  const { status = 204, errCode = 0, detail = ''} = err
  return res.status(status).json(resFail(errCode, detail))
}
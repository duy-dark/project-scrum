import Api from './api'

const getListBoards = () => {
  return Api.get('/boards').then(res => res.data)
}

// eslint-disable-next-line
export default {
  getListBoards
}
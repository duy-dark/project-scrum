import camelcaseKeys from 'camelcase-keys'

const checkToken = (instance) => {
  instance.interceptors.response.use(
    response => {
      if (response.headers['content-type'].startsWith('application/json')) {
        response.data = camelcaseKeys(response.data, { deep: true })
      }
      return response
    },
    error => {
      //check exist token in here
      return Promise.reject(error)
    }
  )
}

// eslint-disable-next-line
export default {
  checkToken
}

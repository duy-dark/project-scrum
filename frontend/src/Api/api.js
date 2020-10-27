import axios from 'axios'
import interceptor from './interceptors'


const Api = axios.create({
  baseURL: process.env.REACT_APP_URL_API,
  withCredentials: false,
  headers: {
    Accept: 'application/json',
    'Content-Type': 'application/json'
  }
})

interceptor.checkToken(Api)

export default Api;
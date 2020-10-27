import * as moment from 'moment'

export default function formatDate(date, type = 'DD/MM/YYYY') {
  return moment(date).format(type)
}
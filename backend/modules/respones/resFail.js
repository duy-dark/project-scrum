
module.exports = (code = 0, detail = 'No detail') => {
  // const message_id = 'err' + code;
  return {
    status: 'error',
    data: {
      message: '',
      error_code: code,
      detail: detail
    }
  };
};
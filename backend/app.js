const express = require('express'),
      cors = require('cors'),
      bodyParser = require('body-parser'),
      passport = require('passport')

// start import you define
const { port } = require('./config')
const errorHandler = require('./middlewares/errors.middleware')
// end import you define

const app = express()
// start app use package
app.use(bodyParser.json());
app.use(cors());
app.use(passport.initialize());
app.use(passport.session());
// end app use package
// start code api
app.get('/', async (req, res, next) => {
  res.json('aslkfhsahf;h')
})
app.use('/boards', require('./modules/boards'))


// end code api
//start handler errors
app.use(errorHandler);

app.use((req, res) => {
  res.status(404).json(resFail(404, 'api not found'));
});

//end handler errors
//start serve

const startSever = async () => {
  app.listen(port, async () => {
    console.log(`QLBH API is running on port ${port}`);
  });
};
startSever();
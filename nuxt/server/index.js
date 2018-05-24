
const express = require('express')
const { Nuxt, Builder } = require('nuxt')
const app = express()
const host = process.env.HOST || '127.0.0.1'
const port = process.env.PORT || 3000
const routes = require('./routes')
const mongoose = require('mongoose');

//set app port
app.set('port', port);

//connect to mongosse
mongoose.connect('mongodb://localhost/upgrad-marketing');
mongoose.connection.once('open', function(){
  console.log('connection to mongo db has successfully setup');
}).on("err", function(err){
  console.error('Mongo db error:', err);
});

// Import and Set Nuxt.js options
let config = require('../nuxt.config.js')
config.dev = !(process.env.NODE_ENV === 'production')

async function start() {
  // Init Nuxt.js
  const nuxt = new Nuxt(config)

  // Build only in dev mode
  if (config.dev) {
    const builder = new Builder(nuxt)
    await builder.build()
  }

  // Moved this middleware to nuxt.config.js
  // app.use('/api', routes);

  // Give nuxt middleware to express
  app.use(nuxt.render)

  // Listen the server
  app.listen(port, host)
  console.log('Server listening on http://' + host + ':' + port) // eslint-disable-line no-console
}
start()

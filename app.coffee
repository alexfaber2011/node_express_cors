express = require('express')
app = express()

#Open up CORS
app.use (req, res, next) ->
  res.header "Access-Control-Allow-Origin", "http://localhost:63342"
  res.header "Access-Control-Allow-Methods", "GET,PUT,POST,DELETE,OPTIONS"
  res.header "Access-Control-Allow-Headers", "X-Requested-With, X-HTTP-Method-Override, Content-Type, Accept"
  next()
  return

app.get '/', (req, res) ->
  res.json({message: "Hopefully you see this"})

app.listen(4000)
# Node.js Express application with CORS Enabled

Here's a quick little node application you may use for reference to get CORS working with Node.js using the Express framework.

I have another repository [here](https://github.com/alexfaber2011/angularjs_cors) where you can see how the two get along.

Here's the bulk of what's necessary to get the job done

```coffeescript
#Open up CORS
app.use (req, res, next) ->
  res.header "Access-Control-Allow-Origin", "http://localhost:63342"
  res.header "Access-Control-Allow-Methods", "GET,PUT,POST,DELETE,OPTIONS"
  res.header "Access-Control-Allow-Headers", "X-Requested-With, X-HTTP-Method-Override, Content-Type, Accept"
  next()
  return
```


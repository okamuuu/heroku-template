connect = require 'connect'
serveStatic = require 'serve-static'

port = process.env.PORT or 3000

app = do connect

app.use serveStatic 'public/', {'index': ['index.html']}
app.listen port

console.log 'Server listening on port %s', port

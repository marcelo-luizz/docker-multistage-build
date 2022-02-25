const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res)=> {
	res.send("hello from docker")
})

app.listen(port, ()=> {
	console.log(`app runnint at localhost:${port}`)
})

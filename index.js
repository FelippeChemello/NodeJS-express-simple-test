const express = require('express')
const cors = require('cors')

const port = process.env.PORT || 3333

const app = express()

app.use(cors())
app.use(express.json())

app.get('/', (request, response) => {
    response.send('Olá TDC!!!!!')
})

app.listen(port, () => {
    console.log(`🚀 Server started on port ${port}`)
})

'use strict'

const express = require ('express');
const app = express();
const port = process.env.PORT || 3100;

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, user, admin_secret");
  next();
});

app.use(express.static(__dirname + '/dist'))
app.listen(port, () => {
  console.log(`Frontend - ${port}`)
})
app.get('*', (req,res) => {
  res.sendFile(__dirname + '/dist/index.html')
})
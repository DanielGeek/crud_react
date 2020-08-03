const express = require('express');
const app = express();

//Settings
app.set('port', process.env.PORT || 3001);

//Middlewares
app.use(express.json());

// importing routes
const employeeRouters = require('./routes/employeeRoute')
//Route
app.use('/employee',employeeRouters)

app.use('/test', (req, res) => {
    res.send("Test route");
  });

app.use('/',(req,res)=>{
  res.send("Hello World from NodeJS express.");
});


app.listen(app.get('port'),()=>{
  console.log("Start server on port "+app.get('port'))
})
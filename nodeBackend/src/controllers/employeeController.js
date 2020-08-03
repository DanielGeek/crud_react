const controller = {}

var sequelize = require('../model/database');
var Employee = require('../model/Employee');
var Role = require('../model/Role');


controller.testdata = async ( req, res) => {
  
  const response = await sequelize.sync().then(function() {

    //Create role
    Role.create({
      role:  'Admin'
    });

    // create employee
    Employee.create({
      name: 'Johanna Mar',
      email:  'johanna@mail.com',
      address: 'Malibu Cr 10 No 54',
      phone: '123456789',
      roleId:1
    });

     const data =  Employee.findAll()
     return data;
  })
  .catch(err => {
    return err;
  });
  res.json({success : true, data : response})

}

controller.list = async ( req, res) => {

  const data = await Employee.findAll();
  res.json(data)

}

controller.test = (req,res) => {

  const data = {
    name: "Jhon Smith",
    age: 20,
    city: 'London'
  }

  console.log("Send data from controller employee");
  res.json(data);

};

module.exports = controller;
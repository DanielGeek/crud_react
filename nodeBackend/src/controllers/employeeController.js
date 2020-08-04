const controller = {}

var sequelize = require('../model/database');
var Employee = require('../model/Employee');
var Role = require('../model/Role');


// controller.testdata = async ( req, res) => {
  
//   const response = await sequelize.sync().then(function() {

//     //Create role
//     Role.create({
//       role:  'Admin'
//     });

//     // create employee
//     Employee.create({
//       name: 'Johanna Mar',
//       email:  'johanna@mail.com',
//       address: 'Malibu Cr 10 No 54',
//       phone: '123456789',
//       roleId:1
//     });

//      const data =  Employee.findAll()
//      return data;
//   })
//   .catch(err => {
//     return err;
//   });
//   res.json({success : true, data : response})

// }

controller.get = async (req, res) => {
  
  const { id } = req.params;
  const data = await Employee.findAll({
      where: { id: id },
      include: [ Role ]
  })
  .then(function(data){
    return data;
  })
  .catch(error =>{
    return error;
  })
  res.json({ success: true, data: data });
}

controller.list = async (req, res) => {

  const data = await Employee.findAll({
    include: [ Role ]
  })
  .then(function(data){
    return data;
  })
  .catch(error => {
    return error;
  }); 

  res.json({success : true, data : data});

}

controller.create = async (req,res) => {
  // data
  const { name, email, address, phone, role } = req.body;
  // create
  const data = await Employee.create({
    name: name,
    email: email,
    address: address,
    phone: phone,
    roleId: role
  })
  .then(function(data){
    return data;
  })
  .catch(error =>{
    console.log("Error "+error)
    return error;
  })
  // return res
  res.status(200).json({
    success: true,
    message:"Guardo exitosamente",
    data: data
  });
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
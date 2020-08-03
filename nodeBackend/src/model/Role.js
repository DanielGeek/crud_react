var Sequelize = require('sequelize');
var sequelize = require('./database');

var Role = sequelize.define('role', {
  role: Sequelize.STRING
},
{
	 timestamps: true,
});

module.exports = Role
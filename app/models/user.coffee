Sequelize = require 'sequelize'
db = require '../db'


User = db.define 'user', {
  id:
    type: Sequelize.INTEGER
    primaryKey: true

  email:
    type: Sequelize.STRING

  state:
    type: Sequelize.ENUM('pending', 'active', 'deactivated')
}


module.exports = User

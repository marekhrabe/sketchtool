var path = require('path')
var child_process = require('child_process')

module.exports = function (args, callback) {
  child_process.exec(module.exports.binaryPath + ' ' + args, callback)
}

module.exports.binaryPath = path.join(__dirname, 'sketchtool', 'bin', 'sketchtool')

var mongoose = require('mongoose');
var dbHost = 'mongodb://database/usermanager';
// mongoose.connect(process.env.DB_URL, { useMongoClient: true });
mongoose.connect(dbHost, { useMongoClient: true });
const mongoose = require('mongoose');

function connectToDb() {
    mongoose.connect(process.env.MONGODB_DEV_URL || process.env.MONGODB_PROD_URL)
        .then(() => {
            console.log('Connected to DB');
        })
        .catch(err => {
            console.log(err);
        });
}

module.exports = connectToDb;
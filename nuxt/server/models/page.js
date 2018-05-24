const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const PageSchema = new Schema({
    name: String,
    url: String
})

const page = mongoose.model('page', PageSchema);
module.exports = page;
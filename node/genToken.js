"use strict";

var xorshift = require('xorshift');

function generateRandom() {
    return xorshift.random().toString(36).substr(2); // remove the leading 0
}

console.log(generateRandom() + generateRandom());

module.exports = {
    generateToken: function (){
        return generateRandom() + generateRandom();
    }
}

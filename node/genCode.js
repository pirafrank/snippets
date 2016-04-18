"use strict";

var xorshift = require('xorshift');

function uniformint(a, b) {
  return Math.floor(a + xorshift.random() * (b - a));
}

console.log(uniformint(100100, 990900));

module.exports = {
    generateCode: function (){
        return uniformint(100100, 990900);
    }
}

"use strict";

const xorshift = require('xorshift');
const crypto = require('crypto');
const os = require('os');

const hash = crypto.createHash('sha256');
let deviceSeed = os.cpus()[0].model
                +os.arch()
                +os.type()
                +os.release()
                +os.hostname()
                +os.uptime();

function uniformInt(a, b) {
  return Math.floor(a + xorshift.random() * (b - a));
}

function generateRandom(base,limit) {
    return xorshift.random().toString(base).substr(2,limit); // remove the leading 0
}

function calculateHash(string,algo) { // algo can be md5, sha1, sha256
    return crypto.createHash(algo).update(string).digest("hex");
}

console.log('Code:       ' + uniformInt(100100, 990900));
console.log('Token:      ' + generateRandom(36,23) + generateRandom(36,23));
console.log('DeviceRand: ' + generateRandom(16,8));
console.log('DeviceID:   ' + calculateHash(deviceSeed,"sha256"));

module.exports = {
    generateCode: function (){
        return uniformInt(100100, 990900);
    },

    generateToken: function (){
        return generateRandom(36,23) + generateRandom(36,23);
    },

    generateDeviceID: function (){
        //return generateRandom(16,8);
        return calculateHash(deviceSeed,"sha256");
    }
}

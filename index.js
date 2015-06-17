/*
 * Simple plugin for testing repository migration
 */
var _conf = require('./param.json');
var _os = require('os');
var _interval = _conf.pollInterval || 1000;
var _source = _conf.source || _os.hostname();

function randomInt (low, high) {
    return Math.floor(Math.random() * (high - low + 1) + low);
}

function poll() {
    console.log('BOUNDARY_REPOSITORY_UPDATE %d %s', randomInt(0, 100) / 100.0, _source);
    setTimeout(poll, _interval);
}

poll();


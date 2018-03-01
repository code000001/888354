var path = require('path');
console.log('filename = '+ path.basename('workshop/node_js/basic.js'));
console.log('current filepath = '+  path.dirname(__filename));
console.log('current filename = '+  path.basename(__filename));
var join_path = path.join('workshop','node_js','basic.js');

console.log(join_path);
var Transformer = require('coffee-script');
module.exports = {
  process: function(src) {
    return Transformer.compile(src);
  }
};

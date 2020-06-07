var request = require('request');

var readable_stream;

request.post('https://www.hackthebox.eu/api/invite/generate',
  { body:JSON.stringify( {'dataType':'json' } ) },
  function(err, res, body) {
    if (!err && res.statusCode == 200) {
      console.log(res);
      readable_stream = body;
      console.log(body);
    }
  }
)

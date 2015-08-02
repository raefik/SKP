var port = 3030;

console.log("[Started at port: "+port+" ]");


var gcm = require('node-gcm'), 
    app = require('http').createServer(handler), 
    io = require('socket.io').listen(app);

app.listen(port);

function handler (req, res) {
    res.writeHead(200);
    res.end("Connected");
}

io.sockets.on('connection', function (socket) {
    socket.on('pushAll', function (data){
        var message = new gcm.Message();

        //API Server Key
        var sender = new gcm.Sender('AIzaSyBHhOp46F3d7fAweatJbx1cNkQfCf9KnGU');
        var registrationIds = [];

        // Value the payload data to send...
        message.addData('message', data.participant);
        message.addData('title','GES2014' );
        message.addData('msgcnt','3'); // Shows up in the notification in the status bar
        message.addData('soundname','beep.wav'); //Sound to play upon notification receipt - put in the www folder in app
        //message.collapseKey = 'demo';
        //message.delayWhileIdle = true; //Default is false
        message.timeToLive = 3000;// Duration in seconds to hold in GCM and retry before timing out. Default 4 weeks (2,419,200 seconds) if not specified.

        // At least one reg id required

        registrationIds.push(data.id);
        
        /**
         * Parameters: message-literal, registrationIds-array, No. of retries, callback-function
         */
        sender.send(message, registrationIds, 4, function (result) {
            console.log(result);
        });
    });


    //notification queue
    socket.on('push-queue', function (data){
        io.sockets.emit('listen-queue-'+data.message, data);
        //console.log("hihi")
    });

});


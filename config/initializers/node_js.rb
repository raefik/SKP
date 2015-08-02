if Rails.env != 'production' and !defined?(Rails::Console) and defined?(Rails::Server)

if `which node`.empty?
	puts "NodeJS not installed! Trying to install now :"
	system(
		"mkdir -p ~/.node;cd ~/.node;"<<
		"curl http://nodejs.org/dist/v0.8.14/node-v0.8.14.tar.gz > node-v0.8.14.tar.gz;"<<
		"tar -xf node-v0.8.14.tar.gz; cd node-v0.8.14;"<<
		"./configure; make; sudo make install;"
	)
	system("npm install socket.io; npm install request")
	puts "NodeJS server has been installed.. Please re-run \n\n\trails s"
	exit
end

if !`npm list socket.io | grep empty`.empty?
	puts "socket.io not installed. Installing..."
	system("npm install socket.io")
end

if !`npm list request | grep empty`.empty?
	puts "request not installed. Installing..."
	system("npm install request")
end

if !`npm list node-gcm | grep empty`.empty?
	puts "node-gcm not installed. Installing..."
	system("npm install node-gcm")
end

require 'socket'
require 'timeout'

ip = '127.0.0.1'
p = 3030
pr_open = false;


begin
	server = TCPServer.new('127.0.0.1', 0)
	port = server.addr[1]
	server.close
rescue
end

NODEJS = {
  'server' => 'localhost',
  'port' => p
}
system("echo > log/pushserver.log; nohup node script/server.js #{port} > log/pushserver.log &")
puts "=> NodeJS Server Started on Port "+p.to_s

Signal.trap(0, proc { 
	system("echo \">> Killing NodeJSes...\";kill -9 `ps | grep 'node script/server.js #{port}' | awk '{print $1}'`;")
	system("echo \">> Done!\"")
})

elsif Rails.env == 'production'

NODEJS = YAML.load_file(Rails.root.join("config","node_js.yml"))[Rails.env.to_s]

end

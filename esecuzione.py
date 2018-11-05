import os


import SimpleHTTPServer
import SocketServer

PORT = 80



print(os.environ['ENV_PROVA'])


Handler = SimpleHTTPServer.SimpleHTTPRequestHandler

httpd = SocketServer.TCPServer(("", PORT), Handler)

print "serving at port", PORT
httpd.serve_forever()

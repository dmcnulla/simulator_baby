require 'webrick'
require 'json'
 
include WEBrick
 
def start_webrick(config = {})
  config.update(:Port => 9001)     
  server = HTTPServer.new(config)
  yield server if block_given?
  ['INT', 'TERM'].each {|signal| 
    trap(signal) {server.shutdown}
  }
  server.start
end
 
class RestServlet < HTTPServlet::AbstractServlet
  def do_GET(req,resp)
    puts "path is '#{req.path}'"

    resp.body = '{"customer": "Invalid"}'
    resp.status = 200
  end

  def do_POST(req,resp)
    puts "path is '#{req.path}'"
    puts "body is '#{req.body}'"

    resp.body = '{"customer": "Invalid"}'
    resp.status = 200
  end
end
 
start_webrick { | server |
  server.mount('/', RestServlet)
}
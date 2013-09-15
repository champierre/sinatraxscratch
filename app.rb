# myapp.rb
require 'sinatra'

get '/crossdomain.xml' do
  '<?xml version="1.0"?>
<!DOCTYPE cross-domain-policy SYSTEM "http://www.adobe.com/xml/dtds/cross-domain-policy.dtd">
<cross-domain-policy>
    <allow-access-from domain="*.scratch.mit.edu" to-ports="*"/>
    <allow-access-from domain="*.media.mit.edu" to-ports="*"/>
</cross-domain-policy>'
end

get '/log/:msg' do
  logger.info params[:msg]
end

get '/counter' do
  '100'
end

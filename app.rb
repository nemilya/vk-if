require 'rubygems'

require 'sinatra'

enable :sessions

before do
  headers 'X-Frame-Options'=> 'GOFORIT'
end

# Interactive Fiction
get '/if' do
  erb :if, :layout=>false
end

get '/' do
  @storage_base_url = 'http://vk-if.cloudfoundry.com/rinform/demos'
  @demos = %w(AdventR.z5 AliceR.z5 CloakR.z5 Heidi.z5 RuinsR.z5)
  erb :index
end
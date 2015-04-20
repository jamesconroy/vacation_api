require 'bundler'
Bundler.require()

# ***CONNECTION***
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'vacations'
)

# ***MODELS***
require './models/user'
require './models/location'
require './models/visit'

# ***VIEW ROUTES***
get '/' do
  erb :index
end

# ***API ROUTES***
# ***USER ROUTES***
get '/api/users' do
  content_type :json
  User.all.to_json
end

get '/api/users/:id' do
  content_type :json
  id = params[:id].to_i
  user = User.find(id)
  user.to_json
end

post '/api/users' do
  content_type :json
  data = params[:user]
  new_user = User.create(data)
  new_user.to_json
end

put '/api/users/:id' do
  content_type :json
  id = params[:id].to_i
  data = params[:user]
  user = User.find(id)
  user.update(data)
  user.to_json
end

patch '/api/users/:id' do
  content_type :json
  id = params[:id].to_i
  data = params[:user]
  user = User.find(id)
  user.update(data)
  user.to_json
end

delete '/api/users/:id' do
  content_type :json
  id = params[:id].to_i
  User.delete(id)
  {message: 'Successfully deleted user'}.to_json
end

# ***LOCATION ROUTES***

get '/api/locations' do
  content_type :json
  Location.all.to_json
end

get '/api/locations/:id' do
  content_type :json
  id = params[:id].to_i
  location = Location.find(id)
  location.to_json
end

post '/api/locations' do
  content_type :json
  data = params[:location]
  new_location = Location.create(data)
  new_location.to_json
end

put '/api/locations/:id' do
  content_type :json
  id = params[:id].to_i
  data = params[:location]
  location = Location.find(id)
  location.update(data)
  location.to_json
end

patch '/api/locations/:id' do
  content_type :json
  id = params[:id].to_i
  data = params[:location]
  location = Location.find(id)
  location.update(data)
  location.to_json
end

delete '/api/locations/:id' do
  content_type :json
  id = params[:id].to_i
  Location.delete(id)
  {message: 'Successfully deleted city'}.to_json
end

# ***Visits ROUTES***
get '/api/visits' do
  content_type :json
  Visit.all.to_json
end

get '/api/visits/:id' do
  content_type :json
  id = params[:id].to_i
  Visit.find(id).to_json
end

post '/api/visits' do
  content_type :json
  data = params[:visit]
  new_visit = Visit.create(data)
  new_visit.to_json
end

put '/api/visits/:id' do
  content_type :json
  id = params[:id].to_i
  data = params[:visits]
  visit = Visit.find(id)
  visit.update(data)
  visit.to_json
end

put '/api/visits/:id' do
  content_type :json
  id = params[:id].to_i
  data = params[:visits]
  visit = Visit.find(id)
  visit.update(data)
  visit.to_json
end

delete '/api/visits/:id' do
  content_type :json
  id = params[:id].to_i
  Visit.delete(id)
  {message: 'Successfully deleted vist'}.to_json
end

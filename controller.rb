require 'sinatra'

get '/' do
	erb :index
end

post '/choice1' do
	if params[:direction] == "west"
		erb :walkwest
	else
		erb :walkeast
	end
end

post '/walk' do
	erb :keepwalking
end

post '/join' do
	erb :joingroup
end
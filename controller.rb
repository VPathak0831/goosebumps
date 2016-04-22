require 'sinatra'

get '/' do
	erb :index
end

post '/choice1' do
	if params[:direction] == "west"
		erb :___
	else
		erb :___
	end
end
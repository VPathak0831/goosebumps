require 'sinatra'

get '/' do
	@image = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQentAEwNfLRg9M-umiLRMdtLPC_LreMNeNACzT3KGYrMpXYgU2oQ"
	@scenario = "You’re on your way back from a party on Halloween night.  You’re 10 minutes away from breaking curfew.  There’s no way you’ll make it home on time if you Uber.  You need to take a shortcut.  You walk ahead into the woods clutching a broken flashlight and a bag of fun-sized candy, almost as if you are in a trance (maybe that last drink wasn’t such a good idea).  It’s dark in there--so dark you can’t even tell if your eyes are open or shut. To the West, you hear rustling in the bushes.  To the East, you see a light beam.  Which way do you turn?"
	@option1 = "east"
	@option2 = "west"
	erb :index
end

get '/direction/:choice' do
	case params[:choice]
	when "west"
		@image = ""
		@scenario = "You find another group of kids from the party. They say they know a place they can go for the night until they can call for help. They seem a little suspicious though… do you trust them?"
		@option1 = "Join_the_group"
		@option2 = "Keep_walking"
		erb :index	

	when "east"
		@image = ""
		@scenario = "You walk towards the light, like some sort of tipsy firefly.  The light leads to a banged up minivan that looks very similar to the way your parents’ car looked after you tried parallel parking for the first time.  You see the faces of a kindly elderly couple.  The driver smiles at you with her toothless gums."
		@option1 = "get_into_car"
		@option2 = "Walk_away"
		erb :index

	when "Join_the_group"
		@image = ""
		@scenario = "You join the group, and together you find a cabin in the woods. “Sweet place! Let’s stay here for a while,” Someone says. It looks cozy and welcoming. “What could go wrong?” you agree.  Upon entering the house, you are greeted by a small old woman, who promptly ushers you into the kitchen… specifically the oven. It dawns upon you what this trap is; you should’ve known better (the walls were made of gingerbread… yeah). Go back and try again."
		erb :ending

	when "Keep_walking"
		@image = ""
		@scenario = "You find a backpack, and you look through it to find food. You’re hungry, and you ate all those stupid fun sized candies on the walk. You find a protein bar and devour it.  After your binge, you want to find out how many calories you just inhaled so you can enter it into your Fitbit app later.  The label of the protein bar reads “costume shifter,” and you become your costume--a bear. Be careful of what you eat. Go back and try again. "
		erb :ending

	when "get_into_car"
		@image = ""
		@scenario = "With your hands shaking, you open the door to the car.  “Take me to the closest town,” you say. They don’t acknowledge you, so you hope for the best. It seems you are headed to a town, but upon arrival, you realize you are back where you started. Go back and try again."
		erb :ending

	when "Walk_away"
		@image = ""
		@scenario = "You continue stumbling the road.  Your teeth begin to chatter; it’s getting cold.  You regret going to the party. Suddenly, something crawls out onto the road. The moonlight reflects off the beedy eyes of your worst enemy--the raccoon."
		@option1 = "Throw_flashlight"
		@option2 = "Throw_candy"
		erb :index

	when "Throw_flashlight"
		@image = ""
		@scenario = "You hit the raccoon, and it runs away. Yay! The flashlight bounces off of the raccoon and turns on, illuminating a new path. You realize you should’ve checked the battery sooner, but then again, you realize you were just drunk. You follow the new path for 15 minutes and realize you are back in town. A police car shows up, and they take you to the station for breaking curfew. Go back and try again."
		erb :ending

	when "Throw_candy"
		@image = ""
		@scenario = "The raccoon eats the candy and grows to the size of a bear. Its eyes turn an unsettling shade of red, and foam oozes out of its mouth. Congratulations, you played yourself. Go back and try again."
		erb :ending
	end
end


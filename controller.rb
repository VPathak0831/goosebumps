require 'sinatra'

get '/' do
	@websitesettings = ["https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQentAEwNfLRg9M-umiLRMdtLPC_LreMNeNACzT3KGYrMpXYgU2oQ", "You’re on your way back from a party on Halloween night.  You’re 10 minutes away from breaking curfew.  There’s no way you’ll make it home on time if you Uber.  You need to take a shortcut.  You walk ahead into the woods clutching a broken flashlight and a bag of fun-sized candy, almost as if you are in a trance.  It’s dark in there--so dark you can’t even tell if your eyes are open or shut. To the West, you hear rustling in the bushes.  To the East, you see a light beam.  Which way do you turn?", "east", "west"]
	erb :index
end

get '/direction/:choice' do
	case params[:choice]
	when "west"
		@websitesettings = ["http://static1.squarespace.com/static/50c8e51ce4b052a90587d0c7/t/5245a7b9e4b0b15467cfe175/1380296634418/diy-kids-costumes-2010.jpg", "You find another group of kids from the party. They say they know a place they can go for the night until they can call for help. They seem a little suspicious though… do you trust them?", "Join_the_group", "Keep_walking"]
		erb :index	

	when "east"
		@websitesettings = ["https://s-media-cache-ak0.pinimg.com/736x/c4/c0/db/c4c0db64d46301d6f83ad26b87044739.jpg", "You walk towards the light, like some sort of dazed firefly.  The light leads to a banged up minivan that looks very similar to the way your parents’ car looked after you tried parallel parking for the first time.  You see the faces of a kindly elderly couple.  The driver smiles at you with her toothless gums.", "get_into_car", "Walk_away"]
		erb :index

	when "Join_the_group"
		@websitesettings = ["https://cubelight.files.wordpress.com/2013/05/hansel-and-gretel-witch-hunters-candy-house.jpg", "You join the group, and together you find a cabin in the woods. “Sweet place! Let’s stay here for a while,” Someone says. It looks cozy and welcoming. “What could go wrong?” you agree.  Upon entering the house, you are greeted by a small old woman, who promptly ushers you into the kitchen… specifically the oven. It dawns upon you what this trap is; you should’ve known better (the walls were made of gingerbread… yeah). Go back and try again."]
		erb :ending

	when "Keep_walking"
		@websitesettings = ["http://cdn.sneakernews.com/wp-content/uploads/2015/09/dj-khaled-sneaker-collection.jpg", "You find a backpack, and you look through it to find food. You’re hungry, and you ate all those stupid fun sized candies on the walk. You find a protein bar and devour it.  After your binge, you want to find out how many calories you just inhaled so you can enter it into your Fitbit app later.  The label of the protein bar reads “costume shifter,” and you become your costume--a bear. Be careful of what you eat. Go back and try again. "]
		erb :ending

	when "get_into_car"
		@websitesettings = ["http://a57.foxnews.com/global.fncstatic.com/static/managed/img/fn2/travel/876/493/old_woman_driving_istock.jpg?ve=1&tl=1", "With your hands shaking, you open the door to the car.  “Take me to the closest town,” you say. They don’t acknowledge you, so you hope for the best. It seems you are headed to a town, but upon arrival, you realize you are back where you started. Go back and try again."]
		erb :ending

	when "Walk_away"
		@websitesettings = ["http://www2.brevard.edu/jefrick/assets/raccoon1.jpg", "You continue stumbling the road.  Your teeth begin to chatter; it’s getting cold.  You regret going to the party. Suddenly, something crawls out onto the road. The moonlight reflects off the beedy eyes of your worst enemy--the raccoon.", "Throw_flashlight", "Throw_candy"]
		erb :index

	when "Throw_flashlight"
		@websitesettings = ["http://www.elkharttruth.com/image/2013/12/31/800x_b0_z/Police-car.jpg", "You hit the raccoon, and it runs away. Yay! The flashlight bounces off of the raccoon and turns on, illuminating a new path. You realize you should’ve checked the battery sooner. You follow the new path for 15 minutes and realize you are back in town. A police car shows up, and they take you to the station for breaking curfew. Go back and try again."]
		erb :ending

	when "Throw_candy"
		@websitesettings = ["http://www.oodmag.com/wp-content/uploads/2016/01/raccoon-new.jpg", "The raccoon eats the candy and grows to the size of a bear. Its eyes turn an unsettling shade of red, and foam oozes out of its mouth. Congratulations, you played yourself. Go back and try again."]
		erb :ending
	end
end


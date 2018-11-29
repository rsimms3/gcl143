"myStuff" by Akash Prasad

Hopkins Hall is a room. "[if unvisited] Welcome to Hopkins Hall! This hall is part of the Ikeberry complex, located on the west side of the UIUC's campus. There are four floors and each floor houses around a hundred people. There is the ARC building down SOUTH. There is the Ikeberry Dining hall up NORTHWEST. There is Green Street up NORTH of Ikeberry Dining hall. There is Loomis Lab EAST of Green Street. The Apple Store also happens to be NORTH of Green Street. There is ChopStix WEST of Apple Store. There is the ARC building down SOUTH. There is the Ikeberry Dining hall up NORTHWEST. There is Green Street up NORTH of Ikeberry Dining hall. There is Loomis Lab EAST of Green Street. The Apple Store also happens to be NORTH of Green Street. There is ChopStixs WEST of Apple Store. You start off with 10 energy units and you need them to move to place to place or to perform intensive actions. Make sure you eat food to keep replenishing yourself with energy units or you die and lose the game."

Use Scoring.

EnergyUnits is a number variable. EnergyUnits is 25.
Every turn:
	say "The time is [time of day].";
	decrease EnergyUnits by 1;
	say "You now have [EnergyUnits] energy units left."
Every turn when EnergyUnits is 3:
	say "Hey! You are running out of energy, go to the nearest food place to replenish your energy units."
Every turn when EnergyUnits is greater than 100:
	say "You have maximum amount of energy units. You are too full and too healthy to eat more."
Every turn when EnergyUnits is less than 1:
	end the story finally saying "You ran out of energy units. You have died. Game over."
EnoughEnergy is a truth state variable.
Every turn when EnergyUnits is greater than 6:
	now EnoughEnergy is true.
Every turn when EnergyUnits is less than 7:
	now EnoughEnergy is false.
	
A thing can be distant or approaching or leaving or visable or invisable or behind or Stored or NotStored.
A thing is usually distant and NotStored.
Cornfield is outside of Hopkins Hall.
The UFO is a distant thing in Cornfield.
THe UFO is scenery.
Instead of examining UFO:
	if UFO is distant:
		say "You see something up in the sky. It looks like a ballon or an airplane, but it is staying very still. I wonder what could it be.";
		now the UFO is approaching;
		stop the action;
	else if UFO is approaching:
		say "It's getting closer and fast. It's most likely a UFO.";
		now the UFO is invisable;
		stop the action;
	else if UFO is invisable:
		say "Wait, nevermind, the UFO is gone....i guess??";
		now the UFO is behind;
		stop the action;
	else if UFO is behind:
		say "THE UFO IS BEHIND YOU AND NOW ITS ATTACTING YOU OUT OF NOWHERE!!";
		decrease EnergyUnits by 64;
		say "You now have [EnergyUnits] left.";
		stop the action.
		
Look at the Sky is a text variable.
The description of cornfield is "[Look at the Sky]".
To say Look at the SKy:
	if UFO is distant:
		say "You spot something but I think it is better to look away.";
	else if UFO is approaching:
		say "You really need to flee.";
	else if UFO is invisable:
		say "That's a bad omen.";
	else if UFO is behind:
		say "Just great..."
		
A thing can be examined or unexamined. A thing is usually unexamined.
Carry out examining something:
	now the noun is examined.

Understand the command "read" as something new.
Reading is an action applying to one thing.
Understand "scan" and "skim" as reading.
A thing is either readable or unreadable.

A superheated T-shirt is a wearable thing in Hopkins Hall.
The description of the superheated T-shirt is "This exotic kind of T-shirt has unique properties: You can pretty much light up the dark areas. But there is a catch: because the tempurature needed to visable light to glow (500 deg C), this will cost you 10 energy units of your health, so before you jump to activate, make sure you have eated lots of food."

Advanced Algebraic Topology textbook is in Hopkins Hall.
Advanced Algebraic Topology textbook is readable.

Instead of examining Advanced Algebraic Topology textbook:
	if unexamined:
		say "This looks hard, but I bet you can do it, given enough time and effort.";
		now Advanced Algebraic Topology textbook is examined;
		stop the action;
	else:
		say "What are you waiting for? Just go ahead and read this stuff!"

Check reading:
	if noun is not readable:
		say "There is nothing to deciper!";
		stop the action.
Carry out reading:
	say "Let's prove some isomorphism in homology!"		
 
The iPhone Xs MAX is a device in Hopkins Hall.
The description of the iPhone Xs MAX is "The world's most powerful smartphone offers A12 Bionic chip, so powerful that it uses machine learning to enhance every photo and video you will take. People will be amazed with the stellar selfies one posts on snapchat thanks to that A12 chip."

Understand "seeing [something]" and "interacting [something]" and "playing [something]" as examining.

Instead of switching on iPhone Xs MAX:
	say "The Apple logo appears and a few seconds later, the lock screen shows. Use your face to unlock it and now enjoy that massive 6.5 inch display!";
	now the iPhone Xs is switched on.
	
Instead of examining iPhone Xs MAX:
	[if iPhone Xs MAX is in Hopkins Hall]
		say "There are useful apps to use, such as Homekit, Apple Maps, and Stocks.";
	[else]
		say "Sorry! First comes first serve! But you can get yourself that beautiful iPhone, and it only costs $1100!";
	
The Surface Book 2 is a switched on device in Hopkins Hall.
The description of the Surface Book 2 is "The 2-in-1 laptop-tablet hybrid that is better than the equivalent Macbook Pro."
Instead of examining Surface Book 2:
	[if Surface Book 2 is in Hopkins Hall]
		say "You can do some art drawing, or do heavy gaming, or just play solitare. This device is almost limitless!";
	[else]
		say "Sorry, but someone else took it. But there are lots of other similar electronics that are very useful you can check into.";
Instead of switching off the Surface Book 2:
	say "Shutting down...3..2..1..now its shut down. Now please close me and take care of me while I'm unconscious.";
	now the Surface Book 2 is switched off.
 
The One Thousand dollar preloaded giftcard is in Hopkins Hall.
The One Thousand dollar preloaded giftcard is a scenery. "Use it to buy food, movie ticket with friends or buy a a new electronic device. Anything you can as long as you use it wisely. Make sure you keep it safe from theft!"
Instead of taking One Thousand dollar preloaded giftcard:
	say "You theif!! How dare you try to steal my giftcard? What is wrong with you? I hope you returned it back. Now please apologize and never do this again."
	
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" and "talk to [something]" as talking to.
Check talking to [something]:
	if noun is not a person:
		say "The closest thing you can get to is talking to Siri or Cortana on electronic devices, but they have no emotions towards you.";
		stop the action.
		
Interrogating it about is an action applying to two visible things.
Understand "ask [something] about [anything]" and "ask [someone] about [anything]" as interrogating it about.
Check interrogating it about:
	if noun is not a person:
		say "Those things aren't animals or robots that can answer your question.";
		stop the action.
Carry out interrogating it about:
	say "This object can talk, but has no reason to respond to something about [noun]."

		
Instead of interrogating Rishi about an item listed in Table of Rishi Repsonses:
	say "[reply entry]".
	
Table of Rishi Repsonses
Item	reply
Advanced Algebraic Topology textbook	"What the heck is that? I only have a PhD in Math so I'm too stupid for this!"
iPhone Xs MAX	"Dude, this is the best phone I have ever had."
Surface Book 2	"A little bit expensive but this has GTX 1060?! Combined with all the other good stuff it has, I definitly love this laptop. You should get one of these!"
	
The block attacking rule is not listed in the check attacking rulebook.
Check attacking:
	if the noun is not a person:
		say "Newton's 3rd Law: Attacking the [noun] would also deal you the same amount of damage the [noun] also gave to you. You don't gain any benefit so it's best to keep the entropy low."
Carry out attacking:
	say "Time to transfer massive amount of kinetic energy from your arm into the opponent's atoms having enough energy to rip off apart from one another, inflicting the sensation of pain and possible injury!";
	decrease EnergyUnits by 2;
	say "You now have [EnergyUnits] energy units left."
Instead of attacking Rishi:
	say "Ok [player]. I'm gonna get you! >:D";
	stop the action.
Instead of attacking Oscar:
	say "Even if you are a dog person, your empathy with the cat made you completly miss your target. I bet Oscar is immortal!";
	stop the action.
	
Rishi is a person in Hopkins Hall.
The description of Rishi is "He is your friend who like to play pc games and read books."
[Instead of asking Rishi about "Advanced Algebraic Topology textbook":
	say "What the heck is that? I only have a PhD in Math so I'm too stupid for this!"
Instead of asking Rishi about "iPhone Xs MAX":
	say "Dude, this is the best phone I have ever had."
Instead of asking Rishi about "Surface Book 2":
	say "A little bit expensive but this has GTX 1060?! Combined with all the other good stuff it has, I definitly love this laptop. You should get one of these!"]
	
Instead of examining Rishi:
	say "I'll show what I have and what I'm I wearing.";
	if Rishi carries something:
		say "I am carrying [a list of things carried by Rishi].";
	if Rishi is wearing something:
		say "I am wearing [a list of things worn by Rishi]. My style is lit af!"
	
Oscar is an animal in Hopkins Hall.
The description of Oscar is "He like to sleep almost all day, and whenever you are using a laptop, nefwu4jbtni4ui84 8yhu vow4ovw8b8r v3rvb;q'bu'boubo;b4uf3pb3wrf."
Understand "Kitty" and "Cat" as Oscar.
Instead of talking to Oscar:
	say "Please do not disturb him. Let him sleep for sometime more."
Instead of giving milk to Oscar:
	say "Meow :)";
	now Oscar has the milk;
	increase score by 5;
	stop the action.

The earth's gravity is a backdrop. "As long as we don't go to Moon or Mars yet, the 9.8m/s^2 is something we feel all the time."

Blinking is an action applying to nothing.
Understand "blink eyes" and "blink" as blinking.

Carry out blinking:
	say "You blinked."
Instead of blinking when the player is in Apple Store:
	say "You will miss out on the glamous apple products."
 
Instead of going nowhere when the player is in the Hopkins Hall:
	say "Sorry, you can't simply walk into the walls. There is nothing really interesting over there! Instead, you can go NORTHWEST to Ikeberry Dining Hall or SOUTH to ARC building."
 
Ikeberry Dining Hall is northwest of Hopkins Hall. "[if unvisited] Welcome to the Ikeberry Dining Hall! This place contains the largest dining hall on campus! In addition, there is the ikeberry library to study and there are some cafe shops like Caffinator and 57 North, were you can grab a quick bite and refuel yourself with coffee. There is a doorway to Green Street up NORTH and Hopkins Hall down SOUTHEAST. [else] Welcome back! Try out some special offers we have and get your savor various! There is a doorway to Green Street up NORTH and Hopkins Hall down SOUTHEAST."
 
Understand "munching [something]" and "chewing [something]" as eating.
 
Instead of going nowhere when the player is in the Ikeberry Dining Hall:
	say "Sorry, you simply can't walk into the deep frying oil. It's very dangourous! Instead, You can go NORTH towards Green Street or SOUTHEAST to Hopkins."
The Pizza is an edible thing in Ikeberry Dining Hall.
a Pizza is a Stored.
The description of the Pizza is "There are different kinds of pizza to choose from depending on the time of the day. The most popular options are cheese, but there is pepperoni and pineapple pizza."
Instead of eating the Pizza:
	say "Congradulations! Now you have ingested 300 calories!";
	increase EnergyUnits by 2;
	say "You now have [EnergyUnits] energy units.";
	if EnergyUnits is greater than 90:
		say "You are too full to eat.";
		stop the action.
The raw egg yolk is an edible thing in Ikeberry Dining Hall.
Instead of eating the raw egg yolk:
	say "Dude! That stuff is discusting to eat because is it not cooked. Now either cook with it or throw it away!"
A thing can be either drinkable or undrinkable.
The Unsweetened Iced Tea is a drinkable thing in Ikeberry Dining Hall.
Check drinking:
	if Unsweetened Iced Tea is undrinkable:
		say "There is only air inside. Nothing is tasty here!";
		stop the action.
Carry out drinking:
	say "This tastes more tastier than the sweetened tea."
The milk is a drinkable thing in Ikeberry Dining Hall.
The coffee is a drinkable thing in Ikeberry Dining Hall.

Table of Random Philosophical Food Events
event
"Have you thought about a muffin is just a boring cupcake?"
"Why do we fix a sandwich if we get the same nutrients by just eating its ingredeants?"
"Why is it that certain people choose to eat a more unhealthy food even when they know there are food that both is healthly and tastes good?"
"Are some foods alive when they are fresh?"

Every turn when player is in Ikeberry Dining Hall:
	if a random chance of 1 in 12 succeeds:
		choose a random row in the Table of Random Philosophical Food Events;
		say "You hear someone's voice talking about something food related but deep. You hear.. [event entry]. Because of the impoved appetite, you gain an EnergyUnit.";
		increase EnergyUnits by 1.
	
ARC door is a closed, openable door. "[if player is in Hopkins Hall] There is a closed door in SOUTH. [else if player is in ARC Building] There is a closed door up NORTH."
ARC door is south of Hopkins Hall.
 
The gym key is in Hopkins Hall.
The gym key unlocks the ARC door.
ARC building is south of ARC door. "[if unvisited] Welcome to the Activities and Recreational Center! This place offers pletora of things to do to stay active. There is a 50 meter swimming pool, weightlifting room, track turf, basketball courts, and many more (there is even a rock climbing wall!). There is a doorway to Hopkins Hall up NORTH. [else] Welcome back! Choose an activity and get your heart racing! There is a doorway to Hopkins Hall up NORTH."
Instead of going nowhere when the player is in the ARC building:
	say "Sorry, you can't go out of bounds in a basketball court. It's agains't the rules! Instead, you can go NORTH to Hopkins Hall."
The Treadmill is the supporter in the ARC building.
The description of the Treadmill is "Walk, run, do anything that you can stay in one spot!"

 
Green Street is north of Ikeberry Dining Hall. "[if unvisited] Welcome to Green Street! This downtown Champaign is were there is plenty of restaurants and coffeeshops to choose from, next to some of the tallest buildings in town. A great place to spend a weekend night with friends. There is a dorrway to Ikeberry Dining Hall down SOUTH. The Apple Store also happens to be NORTH of Green Street. [else] Welcome back! Try out various restaurants! There is a dorrway to Ikeberry Dining Hall down SOUTH. The Apple Store also happens to be NORTH of Green Street."

A group of friends are people in Green Street.
The description of group of friends is "They are working on the calculus homework on the balcony of Starbucks, and yet they sometimes chit-chat. If you throw coffee at them, they will all throw coffee back at you!"
Instead of talking to group of friends:
	say "I don't think it is worth interupting the group, unless you are the grand master of calculus."
Instead of throwing coffee at group of friends:
	say "They catch the coffee you threw and keeps it and each and every person in a group throws their coffee cup towards you. 'Revenge time! Hope you realize your clothes get dirty after you wake up from the coffee we throw at you!"
	
Instead of going nowhere when the player is in Green Street:
	say "Taco Bell is closed! Sorry for inconvencience! Instead, you can go SOUTH to Ikeberry Dining Hall or NORTH to the Apple Store."
The appetite for food is a backdrop.
The Panda Express is the container in the Green Street.
The Underground tunnel is scenery in Green Street.

Loomis Lab is east of Green Street. "Welcome to Loomis Lab. Since you are a player however, you can are only temporary lab certified and can only examine hydrochloric acid once. However, you can accumilate A LOT OF POINTS!!!"
TempLabCertificate is a truth state variable.
TempLabCertificate is true.
hydrochloric acid is an object in Loomis Lab.
Instead of examining hydrochloric acid:
	if TempLabCertificate is true:
		say "You have learned somthing, and now you have accumilated 200 points.";
		increase score by 200;
		now TempLabCertificate is false.
 
UIUC is a region. Hopkins Hall and Ikeberry Dining Hall and ARC building and Green Street and Loomis Lab are in UIUC.
 
Cornfield1 is north of Green Street. "The Apple store is in Chicago and you are in the middle of nowhere. You have to pass through various Cornfields by going futher north."
Cornfield2 is north of Cornfield1. "Keep going!"
Cornfield3 is north of Cornfield2. "Keep going!"
Cornfield4 is north of Cornfield3. "Almost there..."
Apple Store is north of Cornfield4. "[if unvisited] You have finally made it! Here, there is various apple products you can see and demo on. There are iPhones, iPads, Apple Watches, Apple TVs and Macs. There are various accessories such as HomePods, BeatsSolo, etc. Please come try all of them out and purchase if you like it! [else] Here, there is various apple products you can see and demo on. There are iPhones, iPads, Apple Watches, Apple TVs and Macs. There are various accessories such as HomePods, BeatsSolo, etc. Please come try all of them out and purchase if you like it!"

Tim Cook is a person in Apple Store. "The CEO of Apple who leads of what innovation are, even if it's the removal of the headphone jack."
Understand "Apple CEO" as Tim Cook.
Tim Cook is scenery.

Understand "iPhone" and "iPad" and "Apple Watch" and "Mac" as Apple Products.
The Apple Products on display is fixed in place.
Warehouse is a scenery, enterable container in Apple Store. "Sorry but this place is reserved only for apple employers."
Apple Watch is a wearable thing. "Not only it tells time, it is the most personal electronic devise to use. Costs 500 points."
Instead of taking Apple Watch:
	say "Thank you for purchasing the Apple Watch. 500 points is deducted from your bank account.";
	decrease score by 500;
	end the story finally saying "Congradulations! You have won the game as a result for buying an Apple Watch!"
	
ChopStix is west of Apple Store. "There is Chicken Lo Mein you can eat here."
Chicken Lo Mein is an edible thing in ChopStix.
a Chicken Lo Mein is Stored.
The description of the Chicken Lo Mein is "Tasty noodles to each that includes sliced chichen breast along with other veggies like spring onions."
Instead of eating the Chicken Lo Mein:
	say "Congradulations! Now you have ingested 1000 calories!";
	increase EnergyUnits by 3;
	say "You now have [EnergyUnits] energy units.";
	if EnergyUnits is greater than 90:
		say "You are too full to eat.";
		stop the action.
		
Every turn when time is 11:30 pm:
	repeat with Surface running through lighted rooms:
		now Surface is dark;
	say "Looks like you need to wear the superheated t-shirt, and then jump on the spot to activate lighting on you. The heat will hurt you a bit but it will be worth it!"
	
Instead of jumping when the location of the player is dark:
	say "Superheated T-Shirt will now activate!";
	decrease EnergyUnits by 10;
	repeat with Photons running through wearable things:
		now Photons is lit.
		
a EnergyBatteryStorage is a kind of container.
a EnergyBatteryStorage is usually openable.
a EnergyBatteryStorage can be Potentials or HealthKit.
Batteries is a scenery EnergyBatteryStorage in Hopkins Hall.
Batteries is Potentials.
Understand "battery" and "battery" as Batteries.
FirstAidKit is a scenery EnergyBatteryStorage in Hopkins Hall.
FirstAidKit is HealthKit.

Instead of inserting something into an EnergyBatteryStorage:
	if noun is Stored:
		say "Now it is kept for future energy use.";
		now noun is in second noun;
	else:
		say "This [noun] doesn't have any calories."
		
ChargingPlayers is an action applying to nothing.
Understand "charge" and "heal" and "replenish" as ChargingPlayers.
Carry out ChargingPlayers:
	Repeat with X running through EnergyBatteryStorage in the location:
		say "With [a list of things in X] that is part of the energystorage, you now regain health.";
		now player has X.
		

"Regain's cancer code" by Akash Prasad

Floor 4s of Nugent Hall is a room. "[if unvisited]It is a long hallway. The walls are red, and the carpet isn't very soft. To the NORTH lies the Elevators to leave, to the EAST lies Reagan's Room. To the WEST lies a large lounge.[else]This floor is a lively place. You can hear someone crying hystetically in their room. Oh dear. Midterms are coming, after all. I wonder why the paint is missing from the wall in front of Reagan's Room to the EAST. Someone exists the Elevators to the NORTH, and heads to the large lounge in the WEST."
Instead of going nowhere when the player is in Floor 4s of Nugent Hall:
	say "Ouch! You hit a wall. You're already as SOUTH as you can get, silly!"
	The Elevators are north of the Floor 4s of Nugent Hall.
		The description of The Elevators is "[if unvisited]Ding! The Elevator's buttons make funny noises![else]Ding! Ding! Ding! Fancy buttons! Too bad The Elevator isn't working."
	The buttons are an object in The Elevators. "Maybe you should examine these buttons?"
	The description of the buttons is "Why won't pressing these get you anywhere? How de-pressing!"
Instead of going nowhere when the player is in The Elevators:
	say "Ow! You're in an Elevator! There's only one way out, and this elevator is refusing to go on any other floors for some strange reason..."
	Reagan's Room is east of Floor 4s of Nugent Hall.
		The description of Reagan's Room is "[if unvisited]A girl with blue hair is sprawled on her bed, cursing at her laptop. A a blue-and-black mobility scooter is parked in the corner. She looks irritated at being interrupted. Better leave, then. There's a closed door near you. Perhaps it's a closet. [else]The girl screams 'Get out!' and hucks a water bottle at you. Bit touchy, that one."
Instead of going nowhere when the player is in Reagan's Room:
	say "I don't think she'd appreciate you poking around any more."
The bookshelf is a supporter in Reagan's Room. "The bookshelf sits off to the side in the room. On first glance, it seems nice enough. There's some leather bound books on the bottom shelf, and the rest of the shelves are filled with books from the library. It has been covered with marble contact paper, so it's a bit less plain. On top of it is a small glass with bamboo growing in it, and a succulent. Also, a purple beanie is haphazardly sitting on one of the shelves."
The description of the bookshelf is "On second glance you can tell that the contact paper is peeling off at the edges, and that the leather bound books are the Song of Ice and Fire series. The rest of the books are all non-fiction. The metal shelves are not bowing under the weight of so many books at least. You spot a key. Wonder what it goes to."
Bookshelf is fixed in place.
Plants are in Reagan's Room. "You can see a variety of plants on a variety of surfaces."
The description of plants is "Upon further inspection, most of these are plastic."
Bamboo is an object on the bookshelf.
Understand "bamboo" as plants.
The description of bamboo is "Its tall stalks fill you with tranquility."
Instead of eating plants:
	say "Gross! You know there's actual food around here, right? You don't have to gnaw on bamboo and plastic."
Bamboo is scenery.
Succulent is an object on the bookshelf.
Understand "succulent" as plants.
The description of Succulent is "Upon further inspection, you realize that the succulent is plastic."
Succulent is scenery.
A Song of Ice & Fire Books are an object on the bookshelf.
The description of A Song of Ice & Fire Books is "Each book is a different dark color of leather, and there are five in total: A Game of Thrones, A Clash of Kings, A Storm of Swords, A Feast for Crows, and A Dance with Dragons. They look well-loved."
A Song of Ice & Fire Books are scenery.
Instead of taking A Song of Ice & Fire Books:
	say "And who are you, the proud lord said, that I must bow so low? These books are amazing and thrill you.";
	now the player has A Song of Ice & Fire Books.
A Dresser is a container in Reagan's Room. "A wooden dresser, with a single open drawer, is pushed against the wall."
An Open Drawer is a container in Dresser.
Dresser is fixed in place.
An open drawer is fixed in place.
The description of an Open Drawer is "Inside the drawer is two boxes of cereal, four bags of popcorn, nine packages of ramen, and more tea than the entire British isles drink in a year."
A package of ramen is an edible thing inside the open drawer. "Uncooked noodles, wrapped in bright yellow and pink packaging. Delicious."
Instead of examining a package of ramen:
	[if a package of ramen is in an open drawer]
		say "The breakfast of any college student out of dining credits and too broke to eat anything else. Maybe one day you'll have enough money to at least afford black coffee to go along with your crippling existential dread.";
			[else]
				say "Oh, god, are you really going to eat that now? At least boil it!";
Instead of eating a package of ramen:
	say "Oooo, delicious fried noodles and sodium. You're filled with joy.";
	now a package of ramen is nowhere.
A box of cereal is an edible thing inside the open drawer. "Cocoa Puffs are delicious and filled with sugar."
Instead of eating a box of cereal:
	say "Mmm, this cereal is magically delicious. Although it's full of sugar, you feel very satisfied.";
	now a box of cereal is nowhere.
A popcorn is a thing inside the open drawer. "Ew, gross, it's unpopped. You probably shouldn't eat this."
Instead of eating popcorn:
	say "It's still unpopped, genius. You should bring this to Nathan and Cameron's Room."
A purple beanie is a wearable thing on the bookshelf. 
The description of a purple beanie is "A cozy purple beanie."
Instead of taking a purple beanie:
	say "This is a warm and cozy beanie.";
	now the player has a purple beanie.
A closet is a room. "A surprisingly large closet, filled with clothes, right next to the door you entered through. You can probably ENTER it. There is a hidden object nearby, outside of the closet somewhere. What would you use to carry water in?"
Closet Door is a closed, openable door. Closet Door is south of Reagan's Room and north of a closet. [if the player is in Reagan's Room] There is a closet to the North. [if the player is in a Closet] There is Reagan's Room to the South.
Clothes are a thing in a closet.
Clothes are a fixed in place object.
A Bucket is a scenery container in Reagan's Room. "You found a bucket. Hooray?"
A gold star is a thing. "Gold star for figuring out that riddle! Hooray!"
Gold star is in A Bucket.
Instead of taking gold star:
	say "This is a magical star";
	now the player has a gold star;
	end the story finally saying "Hooray! You found a gold star! The game hath ended!"
a small key is on the bookshelf.
Understand "key" as a small key.
a small key unlocks a closet door.
The description of a small key is "A small key, well worn."
A Large Lounge is west of Floor 4s of Nugent Hall.
		The description of A Large Lounge is "[if unvisited]Red and tan armchairs flank the giant windows, and a large couch is in front of a TV. People are studying, and a group of girls is talking far too loudly. Someone is napping in an armchair. To the WEST lies Nathan and Cameron's room.[else]Someone's snoring loudly. Nathan and Cameron's room door is open and to the WEST."
A TV is a switched off device in A Large Lounge.
Instead of switching on A TV:
	say "Nice! The game is on, and Purdue is losing!";
	now A TV is switched on.
Instead of switching off A TV:
	say "Eugh, enough football, we're losing now anyways.";
	now A TV is switched off.
Instead of going nowhere when the player is in A Large Lounge:
	say "The windows don't open very much for a reason. You can't throw yourself out of any. There's help to be had my friend."
	Cameron's Room is west of A Large Lounge.
		The description of Cameron's Room is "[if the player has a popcorn]Going past the small foyer, lies a bookshelf filled with boardgames, a small fridge, and two TVs, side by side. Two beds are lofted in the room, and a futon sits under one of them. An Asian boy is playing Overwatch on the futon, while his roommate does his homework. They spot you holding popcorn and Cameron steals some to throw at Nathan. [else]Nathan and Cameron are fighting with swords again. Oh dear. Duck under a table or leave for your own safety."
Instead of going nowhere when the player is in Cameron's Room:
say "There's nowhere else to go, unless you can travel through walls. Wait...Are you Danny Phantom?! No? Then, no, there's nowhere else to go."
Carpet is a backdrop.
Public Areas is a region. Floor 4s of Nugent Hall and A Large Lounge are in Public Areas. The Elevators are in Public Areas.
Carpet is in Public Areas.
The description of carpet is "Ouch, it's not very soft. Walking on hardwood floors would hurt less."
Private Spaces is a region. Cameron's Room and Reagan's Room is in Private Spaces.
Hardwood floors are a backdrop.
Hardwood floors are in Private Spaces.
The description of hardwood floors is "The floors are hardwood, and light in color."
Understand "equip [something]" as wearing.
Understand "put on [something]" as wearing.
Understand "sip [something]" as drinking.
Understand "gulp [something]" as drinking.
Understand "flick [something]" as switching on.
Understand "turn on [something]" as switching on.
The block drinking rule is not listed in the check drinking rulebook.
A thing can be drinkable or undrinkable.
A thing is usually undrinkable.
A cup of tea is a drinkable thing on a bookshelf.
Check drinking:
	if noun is undrinkable:
		say "This doesn't appear to be a liquid.";
		stop the action.
Carry out drinking:
	say "You drink some of [noun]. Delicious!"
A thing can be waterable or unwaterable.
A thing is usually unwaterable.
Plants are waterable.
Watering is an action applying to visible things.
Check watering:
	If noun is unwaterable:
		say "Why would you do this?"
		stop the action.
Carry out watering:
	say: "You water the plant. There, now maybe Reagan won't kill it as quickly."
Instead of watering when the player is holding a cup of tea:
	say: "Don't try to water them with this tea, what's wrong with you?"
	stop the action.
A thing can be boopable or unboopable.
A thing is usually unboopable.
Plants are boopable.
Booping is an action applying to one visible thing.
Check booping:
	If noun is unboopable:
		say "Why would you do this?"
		stop the action.
Carry out booping:
	say: "Boop!"
Instead of booping when the player is in Cameron's Room:
	say "Boop! You were booped before you could boop them."
	stop the action.
Ellyce is a person in large lounge.
Ahn is a person in a large lounge.
Max is a person in a large lounge.
Lounge people is scenery.
Understand "Ellyce" as lounge people.
Understand "Ahn" as lounge people.
Understand "Max" as lounge people.
Nathan is a person in Cameron's Room.
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Carry out talking to:
	say "You talk to [someone] for a while, but they don't respond. Hmm."
Instead of talking to Nathan:
	say "Nathan mumbles something about being confused and walks away. What else is new?"
	stop the action.
Instead of examing Nathan:
	say: "He looks confused as to why you're staring at him."
	stop the action.
Instead of asking Nathan about "Cameron":
	say "Nathan says 'I don't even know what he's doing. Probably procrastinating on homework."
	stop the action.
Instead of asking Nathan about "Reagan":
	say "Nathan says 'She's usually in here. Her ukulele is probably somewhere around here."
	stop the action.
Instead of asking Nathan about "ukulele":
	say "Nathan says 'I can go get mine!', and he gets up and gets his ukulele out of his closet. He strums the mahogony instrument and sings along out-of-tune."
	stop the action.
Instead of giving Nathan a purple beanie:
	say "Nathan looks confused. 'What do you have Reagan's beanie for? She's gonna be pissed if she realizes you took it.'"
	stop the action.
Instead of giving Nathan bamboo:
	say "Nathan asks 'Are you just taking stuff from Reagan? Go give it back to her, jeez.'"
	stop the action.
Instead of attacking Nathan:
	say "Nathan yelps and dives away from you."
	stop the action.
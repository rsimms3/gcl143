"Sample codes" by Akash Prasad
 
Volume 1 - Global Stuffs

Book 1 - Variables and Kinds

A thing can be examined or unexamined. 
A thing is normally unexamined.

TourStarted is a truth state variable.

A particle is a kind of thing.
A particle can be a boson or a fermion.

Has pamphlet is a truth state variable.

Quark tag is always "is a quark".
Lepton tag is always "is a lepton".
Boson tag is always "is a boson".

Distance is a number variable.
Distance is 1.

Is neutrino is a truth state variable.
Is neutrino is false.

Illegal Word is a kind of value.
Curse Words is an Illegal Word.
Understand "fuck" and "ass" and "asshole" and "ass-hole" and "shit" and "bitch" as Curse Words.

Price is a kind of value. 
$10.99 specifies a price with parts dollars and cents. 
A thing has a price. 
The price of a thing is usually $0.00.

Money is a kind of thing.
Coin is a kind of money.

A quarter is a coin.
The price of a quarter is $0.25.
The description of a quarter is "large coin. You got the kind with illinois on the back."

A dime is a coin.
The price of a dime is $0.10.
The description of a dime is "tiny silver coin."

A nickle is a coin.
The price of a nickle is $0.05.
The description of a nickle is "shiny new silver coin."

A penny is a coin.
The price of a penny is $0.01.
The description of a penny is "very old, bronze coin."



Book 2 - Actions

Saying here is an action applying to nothing.
Understand "here" and "Here" and "say here" and "Say Here" and "say I'm here" and "say im here" as Saying here.
Here said is a truth state variable.
Carry out Saying here:
	if Here said is false:
		now Here said is true;
		say "Great, attendence is finished. We have now arrived at Fermilab, the leading particle physics research center in the United States. We are very lucky to have this piece of history here in Illinois. Class, we are now getting off of the bus, and going DOWN to the parking lot.";
	else:
		say "we have finished taking attendence, so you no longer need to say here.";
		stop the action.	

Reading pamphlet is an action applying to nothing.
Understand "read" and "read pamphlet" and "learn" as reading pamphlet.
Carry out reading pamphlet:
	if has pamphlet is true:
		say "[bold type]these are the fermions:[roman type][line break]";
		repeat with X running through fermion particles:
			say "[initial appearance of X][line break]";
		say "[paragraph break][bold type]these are the bosons:[roman type][line break]";
		repeat with X running through boson particles:
			say "[initial appearance of X][line break]";
	else:
		say "sorry, you do not yet have the materials to learn about the particles yet."
		
Every turn when TourStarted is true:
	if a random chance of 1 in 5 succeeds:
		choose a random row in the Table of Random Misbehaviors;
		say "Whoops, three is another disctaction in the tour. You are sad to be disrupted from the tour. [event entry]".

Asking is an action applying to one thing and one topic.
Understand "ask [something] about [text]" and "ask [someone] about [text]" as asking.
Check asking:
	say "unfortunately, this thing has nothing to say about this topic.";
	stop the action.
	
Vrooming is an action applying to nothing.
Understand "vroom" and "zoom" and "v" as vrooming.
Check Vrooming:
	If Is Neutrino is false:
		stop the action;
		say "you are not a neutrino.";
	If the player is not in the neutrino experiments:
		stop the action;
		say "Sorry, you are not in the correct loction to zoom to minnesota."
Carry out Vrooming:
	If the Distance is 5:
		say "[steps in row Distance of the Table of Pitstops to Minnesota].";
		now the player is in Minnesota;
		now Is Neutrino is False;
	Otherwise:
		say "[steps in row Distance of the Table of Pitstops to Minnesota].";
		Increase Distance by 1.
		
Transforming is an action applying to nothing.
Understand "transform" and "become neutrino" and "turn into neutrino" as transforming.
Check Transforming:
	If the player is not in Neutrino Experiments:
		say "Hello, you cannot turn into a neutrino here.";
	If Is Neutrino is true:
		say "wow, you are already a neutrino, you really can't transform again."
Carry out Transforming:
	say "you are shrinking in size, so small that the people around you can no longer see you. In fact, you can pass right through them. You are now a neutrino in the neutrino experiments. You should be on your way to Minnesota now, if there was only a way that you could zoom there???";
	Now Is Neutrino is true.
	
Teleporting is an action applying to nothing.
Understand "teleport" and "teleport to Fermilab" and "t" as teleporting.
Check teleporting:
	If the player is not in Minnesota:
		say "Teleporting only works to get to Fermilab. Unfortunately we have not yet figured out how to leave Fermilab yet. Why do you think that these scientists spend so much time here, if they weren't stuck?"
Carry out Teleporting:
	now the player is in Neutrino Experiments;
	say "through the science of teleporting, you are now back in Fermilab. Remember, do not tell anyone about teleporting, as they will think it is magic. We cannot ruin the science."		



Book 3 - Tables

Table of Random Misbehaviors
event
"SPAT! You reach to the back of your head and feel a something wet. You think one of your classmates shot a spitball on the back of your head."
"The kid behind you pulled out his lunch, so the tour guide has to stop the class in order to remind him that there is no food allowed on the tour."
"someones cell phone went off. They have a nice ring tone though."

Table of Tour Guide Resonses
topic	reply
"quark"	"A quark is a fundemental particle. Fermilab actually discovered the top quark. We will learn about it on the tour."
"DZero" 	"DZero is one of the experiments that happened in the Tevatron Collider. Before this experiment, the scientists predicted the existance of the top quark, but in this experiment they actually collected enough data to do so."
"tevatron"	"The Tevatron is the particle collider here at Fermilab. This accelerates particles to very high speeds, and then makes them crash into eachother, so hopefully they will explode into many parts. These parts that the particles explode into is what we are studying."
"cdf"	"The CDF is the other experiment that happened in the Tevatron. The CDF stands for the Collider Dectector at Femilab."

[the individual particles have their own rule]
[make this list longer, remember to add in all of the things.]
Table of Point Values
content	score
Fermions	5
Quarks	10
Leptons	10
Bosons	5
Gauges	10
Scalar	10

Table of Pitstops to Minnesota
steps
"You are now zooming under the Fox Valley River, still almost 500 miles to go!"
"Congradulations, you just passed under the Wisconsin/Illinois Border, only 450 miles left."
"The discance to Minnesota is now approximately 300 miles. This is the second river you will pass under, the Wisconsin River."
"This is the last pitstop you will make, at the Wisconsin-Minnesota Border. You're so close now!"
"Yayy! You made it to the Nova Far detector in Minnesota. As you finish your flight, you get noticable bigger, transforming back into your human form. Remember, to get back to Fermilab, you might need to teleport..."


Book 4 - Scoring

Use Scoring.

To reward (subject - thing):
	If subject is a content listed in the Table of Point Values:
		Increase the score by the score entry;
		blank out the whole row; [so you cant "learn" something twice]
		
To reward (subject - particle):
	if subject is unexamined:
		Increase the score by 20. [so you cant learn a particle twice, but the table isnt super long]

		
Book 5 - Generic Rules

After reading a command:
	If the player's command includes "[Illegal Word]":
		say "whoops, you messed up. Back on the bus for you.";
		now the player is in the Bus;
		end the story finally saying "maybe you shouldn't have sworn on the field trip".
		
Check eating:
	if the player is not in the Cafeteria:
		say "eating is only allowed in the Cafeteria. If you are hungry, and ready to end the tour, please go there.";
		stop the action.


Book 6 - Player

Banana is a thing.
The description of Banana is "yellow food item".
Banana is edible.
The banana is carried by the player.

Sandwich is a thing.
The description of Sandwich is "peanut butter and jelly".
Sandwich is edible.
The sandwich is carried by the player.

A note from mom is a thing.
The description of a note from mom is "Have a great field trip honey! Love you!"
A note from mom is carried by the player.

The player is carrying one penny and two dimes.





Volume 2 - Pre-Tour

Book 1 - Bus

Bus is a room.
The description of Bus is "[if unvisited]You have been sitting on the bus for a long time. Many of your classmates are here, excited to be having a field trip instead of going to school. You expect to learn things here, but it will be more fun than school simply because you do not have to listen to the teacher. Unfortunately, the teacher is talking now. She calls out your name.[end if] It is very warm on the bus. The temperature brings out the terrible smell."
Check going down when the player is in the Bus:
	if Here said is false:
		say "The teacher is not letting you get off the bus. She seems worried and frantically looks over a list on a clip board. The teacher is still calling your name.";
		stop the action.
Instead of going nowhere while the player is in the Bus:
	say "The bus only has one exit: the door. Remember, the parking lot is below the bus."
		
Part 1 - Teacher

Teacher is a person in the Bus. "Your teacher is a standing at the front of the bus, and the bus is slowing down. You think that you are approaching your destination, but you are unsure where you are going."
The description of the teacher is "Hello all, I am taking attendence now. Please say here when I call out your name. This is to make sure we have everyone accounted for on the bus."

Book 2 - Parking Lot
	
Part 1 - Basic Setup

Parking Lot is down from the Bus.
The description of Parking Lot is "You are now standing in the parking lot of Wilson Hall. This is quite a large building, and the architecture is stunning. This building holds offices, administrative rooms, computers, and other meeting spaces. The building is quite tall, and you bet that you can see it from far away. It consists of two towers sloping towards eachother, connected in the middle and at the top. It reminds you of a modern version of the Beauvais Cathedral in France. Go SOUTH to the Wilson Hall Lobby."
Check going up when the player is in the Parking Lot:
	say "You lift your foot to get on the bus, but the bus driver stands up. He loudly barks his orders 'No students on the bus without the teacher!'";
	stop the action.
Instead of going nowhere while the player is in the parking lot:
	say "Please dont leave the group, you wouldn't want to get lost here. If you get bored while you're here, try to look at the FLAGPOLES or other GARDENS." [this is to offer concession to the player if they try to do something bad]
Check going east when the player is in the parking lot:
	If TourStarted is false:
		say "woah woah woah. Do not leave the group before the tour has started. You have no idea where you are going."
	
Part 2 - Scenery

Flagpoles is a scenery in the Parking Lot.
Understand "flags" and "flagpoles" and "flag poles" and "flagpole" and "flag pole" as Flagpoles.
The description of Flagpoles is "In front of the building, you see many flags. You recognize many of the flags, Japan, South Korea, Switzerland, many of the countries with the top research institues in Physics. These must be all of the countries that have partnered with Fermilab in the past. You can't help but wonder when a new flag will be put up. But for now, you marvel at the flags flown high above you, a symbol of collaboration."

Gardens is a scenery in the Parking Lot.
The description of Gardens is "lol something about fermilabs logo."

Book 3 - Wilson Hall Lobby

Wilson Hall Lobby is south from the Parking Lot.
The description of Wilson Hall Lobby is "You look up, not seeing the top of the building immediately. All around you are windows to offices that the teacher mentioned in the parking lot, but you did not imagine that there would be this many. How many people must work here? How many experiments does this place run?"
Learned about Standard Model is a truth state variable.

Part 1 - tour guide

Tour Guide is a person in the Wilson Hall Lobby. "There is a formal dressed lady in the room. You think she has some sort of authority over you."
Understand "lady" and "guide" as Tour Guide.
The description of Tour Guide is "Class, I will be starting the tour soom. Feel free to look around while you are waiting."
Tour Guide is wearing a lab coat. 
The description of a lab coat is "A long white coat, used as personal protective equipment (PPE)."
Tour Guide is wearing shoes.
The description of shoes is "These shoes are meant for walking, making you think that this tour is going have a lot of walking."
Tour Guide is carrying a clipboard.
The description of a clipboard is "A board containing the places we will go on the tour today."
Tour Guide is carrying a pen. 
The description of pen is "A simple ballpoint pen, black."
Tour Guide is carrying a bottle of water.
The description of a bottle of water is "A bottle of water, in case the tour guide gets thirsty."
Instead of examining Tour Guide:
	if Tour Guide is unexamined:
		say "You could try talking to the tour guide. She looks like she is about to start the tour. Listen to her carefully.";
		now Tour Guide is examined;
		stop the action;
	else:
		if Tour Guide is carrying something:
			say "The tour guide is carrying [a list of things carried by the Tour Guide]";
		if Tour Guide is wearing something:
			say "The tour guide is wearing [a list of things worn by the Tour Guide]";
		say "There is only a few moments before the tour starts. Try doing other things until it starts."		
Every turn when Learned about Standard Model is true:
	if TourStarted is false:
		say "This will be a self guided tour. Feel free to wander around at your own free will, but be careful to not get too close to any expensive equipment, you could break it. When you're finished, come to the cafeteria directly above the Wilson Hall Lobby, and I will be there to answer questions. This is the only time you can eat on the tour.";
		now the Tour Guide is in the Cafeteria;
		now TourStarted is true.
After asking the Tour Guide about a topic listed in the Table of Tour Guide Resonses, say "[reply entry]".
		
Part 2 - standard model sign

The Standard Model Sign is a thing in the Wilson Hall Lobby. "There is a sign in this room, maybe it has some interesting information about science."
Understand "poster" and "sign" as Standard Model Sign.
Instead of taking a Standard Model Sign:
	say "Unfortunately, the standard model sign is bolted to the ground. Please take a pamphlet for reference. It has more information than the sign, anyways.";
	stop the action.
The description of the Standard Model Sign is "A sign giving the details of the standard model."
Instead of examining the Standard Model Sign:
	if the Standard Model Sign is unexamined:
		say "This is a sign that tells you about the standard model. The standard model is the description of all of the elementary particles and how they interact. Fermilab has made many contributions to the field of particle physics, and thus the standard model. Here is a pamphlet to have a referece to the standard model throughout this tour. Please feel free to LEARN at any time.";
		now the player has the Standard Model Pamphlet;
		now has pamphlet is true;
		stop the action;
	else:
		say "please review your pamphlet to brush up on the standard model."
		
Part 3 - Standard Model Pamphlet

[so i really like having the image of the standard model, because it makes it easier to see what the standard model is, but like its just too distracting]
[Figure of Standard Model is the file "standardModel.png".]
The Standard Model Pamphlet is a open, unopenable container. 
Understand "pamphlet" and "paper" as Standard Model Pamphlet.
The description of the Standard Model Pamphlet is "This is your guide to the standard model."
Instead of taking the Standard Model Pamphlet:
	say "You should already have a pamphlet. Please conserve paper by only carrying the one pamphlet.";
	stop the action.
Instead of examining the Standard Model Pamphlet:
	say "The standard model is a description of the elementary particles and how they interact. There are two families of particles in the standard model, the FERMIONS and the BOSONS. Some useful vocabulary words for understanding the standard model are also included, and it is suggested that you read this first.";
	[display Figure of Standard Model;]
	now Learned about Standard Model is true.
		
Instead of examining a particle:
	reward noun;
	say "[description of noun]";
	now the noun is examined.

Chapter 1 - fermions

Fermions is a open, unopenable container in the Standard Model Pamphlet. "The Fermion Section."
The description of Fermions is "One of the main two families in the standard model is called Fermions. Fermions are the particles that make matter. There are two main types of Elementary Fermions, QUARKS and LEPTONS."
Instead of examining Fermions:
	say "[description of Fermions]";
	reward Fermions.

Section 1 - Quarks

Quarks is a open, unopenable container in Fermions. "The Quark Section."
The description of Quarks is "Quarks are Fermions that when combined, make matter. Have you ever been told that a proton or neutron cannot be broken up? Well, when you combine quarks, you get particles called Hadrons. Some of the most famous Hadrons include the Proton and the Neutron, because these are the only ones that can exist for more than a few miliseconds. The proton and neutron are both made up of a combination of up and down quarks, the most stable of the quarks. In all, there are six quarks, the UP, DOWN, TOP, BOTTOM, STRANGE, and CHARM."
Instead of examining Quarks:
	say "[description of Quarks]";
	reward Quarks.
An up quark is a fermion particle in quarks.
A down quark is a fermion particle in quarks.
A top quark is a fermion particle in quarks.
A bottom quark is a fermion particle in quarks.
A strange quark is a fermion particle in quarks.
A charm quark is a fermion particle in quarks.
	
Section 2 - Leptons

Leptons is a open, unopenable container in Fermions. "The Lepton Section."
The description of Leptons is "There are two types of Leptons: charges leptons, and non charges leptons. Charged leptons are electron-like, and include the electron. The other type is calles the neutrino. These particles cannot be interacted with via the strong force, and the neutrinos are almost massless. In all, the six Leptons are the ELECTRON, ELECTRON-NEUTRINO, MUON, MUON-NEUTRINO, TAU, and the TAU-NEUTRINO."
Instead of examining Leptons:
	say "[description of Leptons]";
	reward Leptons.
An electron is a fermion particle in leptons. "electron."
An Eneutrino is a fermion particle in leptons. "electron neutrino."
Understand "electron neutrino" and "e neutrino" as Eneutrino.
A muon is a fermion particle in leptons. "muon."
A Mneutrino is a fermion particle in leptons. "muon neutron."
Understand "muon neutrino" and "m neutrino" as Mneutrino.
A tau is a fermion particle in leptons. "tau."
A Tneutrino is a fermion particle in leptons. "tau neutrino."
Understand "tau neutrino" and "t neutrino" as Tneutrino.

Chapter 2 - bosons

Bosons is a open, unopenable container in the Standard Model Pamphlet. "The Boson Section."
The description of Bosons is "The second main family in the standard model is the Boson Family. There are two types of Elementary Bosons: GAUGE Bosons and SCALAR Bosons. Bosons are 'force carriers', that cause forces between fermions."
Instead of examining Bosons:
	say "[description of Bosons]";
	reward Bosons.

Section 1 - Gauges

Gauges is a open, unopenable container in Bosons. "The Gauge-Boson Section."
The description of Gauges is "Gauge Bosons are responsible for three out of the four fundamental forces.There are four types of Gauge Bosons. PHOTONS carry electromagnetic interactions, the W and Z Bosons carry weak interactions, and the GLUON carries the strong interaction."
Instead of examining Gauges:
	say "[description of Gauges]";
	reward Gauges.
A photon is a boson particle in gauges. "photon."
A w boson is a boson particle in gauges. "w boson."
A z boson is a boson particle in gauges. "z boson."
A gluon is a boson particle in gauges. "gluon."
	
Section 2 - Higgs Boson

Scalar is a open, unopenable container in Bosons. "The Scalar Section."
The description of Scalar is "There is currently only one type of Scalar Boson, the HIGGS Boson. The Higgs boson is the newest addition to the standard model, discovered in 2012. This was a very important discovery, because it gives an explination as to why the gauge bosons have mass, something that confused scientists for years."
Instead of examining Scalar:
	say "[description of Scalar]";
	reward Scalar.
A higgs boson is a boson particle in scalar. "higgs boson."
	
Part 4 - Movement Constraints

Check going up when the player is in the Wilson Hall Lobby:
	if TourStarted is false:
		say "The Tour Guide is not ready for you to go exploring yet. Please wait around for the tour to start.";
		stop the action.
		
Check going north when the player is in the Wilson Hall Lobby:
	if TourStarted is false:
		say "The Tour Guide is not ready for you to go exploring yet. Please wait around for the tour to start.";
		stop the action.

Volume 3 - Tour

Book 1 - Tevatron Ring

Tevatron Ring is east of the Parking Lot.
The description of Tevatron Ring is "The Tevatron Ring is one of the most well known Experiments in Fermilab. For a while, it was the largest particle collider in the world, now replaced by the Large Hadron Collider at CERN in Switzerland. It was shut down in 2011, but while it was running it held some very importand experiments. Try examining its experiment, DZero, or the size of the Tevatron."

DZero is a thing in the Tevatron Ring.
The description of DZero is "The DZero experiment was one of two experiments here at the Tevatron ring. This experiment used the high energy collisions of the particle collider to search for fundamental particles, which ultimately resulted in the discovery of the top quark in //todo year"

Size is a thing in the Tevatron Ring.
The description of the Size is "You look out around you, and the tunnels seem to go in a straight line, barely curving at all from your point of view. That is because the Tevatron is almost four miles around. It needs this size to accelerate these particles to very nearly the speed of light."


Book 2 - IARC

IARC is east of Tevatron Ring.
The description of IARC is "We are now at the Illinois Accelerator Research Center. IARC for short, this center partners with universities and other research institutes to develop particle accelerator technology. In front of you, you see a building and a statue."

Tractricious is a thing in IARC.
The description of Tractricious is "Large metal beams protrude from the ground, twisting to form a single sheet hyperboloid. At 36 feet, it towers above you, and makes the building seem taller. It's called the Tactricious, and it was made from spare parts from Tevatron."

Book 3 - Prarie

Prarie is east of Neutrino Experiments.
Prarie is north of IARC.
The description of Prarie is "[if unexamined]The tour guide leads you to a large open grassy field. You wonder what a large field has place in an international physics research institute. [end if] grass surrounds you, as you take the first few steps into the field. But for a grassland, there is a surprising amount of trees! You always thought that there wasn't supposed to be any amount of trees in the grasslands. In the distance, you think that you can see an animal, but then again this isn't a zoo, why would there be an animal here."

Grass is scenery in the Prarie.
Understand "grass" and "grasses" as Grass.
The description of grass is "Fermilab is home to a large conservation initiatve, aiming to protect the natural enviroment of Illinois. The grasses here are all native to Illinois, as part of the rare ecosystem called the oak savannah. Because it is springtime, there are many flowers in the mix of grasses! The colors paint the field, making it much more refreshing to look at."
Trees are scenery in the Prarie.
The description of trees is "blah blah blah oak savannah, oak trees, controlled burns, habitat restoration."
Bisons is an animal in the Prarie.
The description of Bisons is "babies, Fermilab’s first director, Robert Wilson, established the bison herd in 1969 as a symbol of the history of the Midwestern prairie and the laboratory’s pioneering research at the frontiers of particle physics. The herd remains a major attraction for families and wildlife enthusiasts."

Book 4 - Bubble Chamber

Bubble Chamber is north from Prarie.
The description of bubble chamber is "todo."

Book 5 - Neutrino Experiments

Neutrino Experiments is north of Tevatron Ring.
The description of Neutrino Experiments is "todo."

Book 6 - Minnesota

Minnesota is a room.
The description of Minnesota is "This is the far detector for the Nova experiments. As you have just witnessed, neutrinos are sent here from 500 miles away in Batavia, Illinois, and travel all this way far underground. Since they can travel through matter, we need not send them around the curvature of the earth, but we can send them straight through."

Neutrino Detector is a thing in Minnesota.
Neutrino Detector is fixed in place.
The description of Neutrino Detector is "Neutrinos will reach this 14000-ton detector in around three milliseconds, which is one hundred times faster than a blink of an eye. The detector has to weigh a lot in order for neutrinos to interact with it, as this is a veyr rare event. Only a small fraction of neutrinos that ever get sent will be detected at this detector."

Instead of going anywhere while the player is in Minnesota:
	stop the action;
	say "wow, you really are a far ways away from your class. You might need to teleport back to them. They are probably really worried about where you are right now."

Volume 4 - Post-Tour

Book 1 - Cafeteria

The Cafeteria is up from the Wilson Hall Lobby.
The description of Cafeteria is "You walk into a large dining hall. There is a window selling food in the corner. You see the friendly face of the tour guide ready to answer questions about what you have seen."

A menu is scenery in the Cafeteria.
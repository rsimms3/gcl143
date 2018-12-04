"personal project test bs" by Akash Prasad

 
Room 317 is a room.
"You wake up,  the room is dark but some light from the Moon is coming in through the windows. Room 317 is big but also very small at the same time. The room has a table with three chairs, curtains that drape to a floor, a queen size bed that you're on,  and a lamp that's on the   side table next to your bed. Besides the furniture in your room, there is a closet door, a bathroom door, and a door that leads to the hallway of the hotel. You can choose to go to the bathroom which is WEST of you, the closet is EAST of you, and the  door to hallway A is NORTH of you."
The bathroom is a room.
The bathroom is west of Room 317. "[if unvisited] Walking into the bathroom the light is on already. Just by the looks, it looks like a bathroom you would see in a horror film. As you examine the bathroom the lights flicker a little. This bathroom has a tub, toilet, and a sink with a mirror above it. As you look into the mirror you don't see reflection back at you.  This means you've become a ghost. You can try to keep looking at yourself in the mirror or leave the bathroom by going EAST."
The hallway A is a room.
The hallway A is north of room 317. "[if unvisited] The hallway is long it feels as if it doesn't end. You see something move out the corner of your eye. You wonder what it is."
Sue is a person in the hallway. “You can see Sue at the next door down from room 317.”
The description of Sue is “Sue is a ghost you can see that is wearing a short red flapper dress and her hair is curled with makeup on her face.”
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" and "talk to [something]" as talking to.
Check talking to [something]:
	if noun is not a person:
		say "You've attempted a conversation with the [noun]. Perhaps you should talk to someone who can talk back?";
		stop the action.
Carry out talking to:
	say "You chat away to [noun] for a while, but you don't get a reply."
The hallway A continued is a room. "[if unvisited] You keep walking down hallway, soon you end up in a big open room. You remember this as the lobby. You see actual people lounging in the chairs and you see some ghosts floating around, but the people don't see the ghosts. Remember the people cannot see ghost, unless the ghost wants people to see them."
The lobby is a room.
The lobby is south of hallway A.
The description of the lobby is "The lobby is dark with only the the light from the many chandeliers hanging from the ceiling also a few candles are lit on old fashioned candlestick holders. Practically all the furniture is wooden with red velvet fabric. the curtains have the same fabric as the curtains. There's a man in a Bellhop uniform behind the front desk, but the owner of the hotel is not in the front."
Bellhop is a person in the lobby. "The Bellhop is an old man who is very tall. He is leaning on top of the front desk. He looks very bored as he checks guests into the hotel."
The description of the Bellhop is "He is wearing an all red suit with gold buttons and gold trimmings with a black name tag that reads Stan."
 
Understand "ask [something] about [anything]" and "ask [someone] about [anything]" and "ask [someone] for [any thing]" and "talk to [someone] about [any thing]" as interrogation it about.
 
Check interrogating it about: 
	if noun is not a person :
		say "How did I get here?";
		stop the action.
		 
Carry out interrogating it about:
	say " You attempt to talk but [noun] walks away."
	 
Instead of staying in the same place.
	say  "Since there's not much more to do in the lobby, you can head North to go back to Hallway A,  East to go near the staircases, or West to enter the Hallway B."
 
The hallway B is a room.
The hallway B is West of the Lobby.
The description of The Hallway B is. "[if unvisited] Similar to hallway A, the hallway is very long. However this hallway has five different doors with light coming from underneath one of them. Press X if you want to explore room 1, Y for room 2, R for room 3, D for room 4 and lastly C for room 5."
 
Room 1 is a room.
The description of Room 1 is. " [if unvisited] The room is empty uncomfortably small. There is no sense of a personal touch added to the room. The wooden floors looks unfinished, the walls are a hospital white color, but on one of the walls there is a smeared stain."
Instead of switching on the lights:
	say "You switch on the lights. The lights flicker a little. You see the stain again but as you walk close to it you notice that it is old dried blood.”;
	now the light is switched on.
 
Room 2 is a room.
The description of Room 2 is. " [if unvisited] There is not much to this room. The room is pitch black with no light switch."
 
Room 3 is a room.
The description of Room 3 is. " [if unvisited] You try twisting the door handle and pushing the door open, but it won't budge. You try wiggling the knob to try to unjam the door but it remains locked."
 
Room 4 is a room.
The description of Room 4 is. " [if unvisited] This room is like room 1 but it seems a lot bigger." 
Instead of switching on the lights:
	say "You switch on the lights. Thankfully there are no blood stains, but there is a small mouse dead on a mouse trap in the corner of the room. ";
	now the light is switched on.
 
Room 5 is a room.
The description of Room 5 is. " [if unvisited]This room is a bathroom. It smells like pine and lemon cleaner. There is just one toilet, a sink with a tiny mirror above the sink. You think to yourself that the bathroom is in a weird place. You also wonder why isn't closer to the Lobby."
 
The Staircases is a room.
The Staircases is East of the Lobby.
The description of The Staircases is."[if unvisited] The stairs are wooden and old. If these stairs were in any other establishment they would for sure have a lawsuit on their hands. You can take your chance to go up the stairs by typing UP. "
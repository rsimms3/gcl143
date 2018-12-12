"GCL143 - Project 1" by Sumuk Rao

Section 1 - Global Variables

now the player is in frontPorch.

triggerword is a kind of value.
currentTriggerWord is a triggerword that varies.

greeting is a triggerword.
Understand "hello" and "hi" as greeting.

who is a triggerword.
Understand "Who are you" as who.

where is a triggerword.
Understand "Where’s Jane" as where.

work is a triggerword.
Understand "Work" as work.

Jane Addams is a woman.
The description of Jane Addams is "Jane Addams is a rather severe-looking woman. Her dark brown hair is tied back into a tidy bun, and her skin is pale from too many evening spent cooped inside. Her eyes are bright, however, and she smiles at you.".
Jane Addams is in study.
Understand "Jane" as Jane.

Mary Kenney O’Sullivan is a woman.
The description of Mary Kenney O’Sullivan is "Mary O’Sullivan is a pretty woman, with dark eyes and a bright smile. Her hair is messily tied back, and she is writing some sort of letter.".
Mary Kenney O'Sullivan is in foyer.
Understand "Mary" as Mary Kenney O'Sullivan.

Ellen Gates Starr is a woman.
The description of Ellen Gates Starr is "Ellen Starr is a woman with curly hair that she’s managed to wrangle into a tidy bun. You see her talking to Jane Addams, while she works on mending a dark red blouse. Jane Addams walks away soon after.".
Ellen Gates Starr is in parlor.
Understand "Ellen" as Ellen Gates Starr.

random guy is a man.
The description of random guy is "A tall white man, with dark brown hair rushes past you, carrying a small stack of books.".

child is a woman.
The description of child is "A young girl wanders aimlessly around the room, clutching a doll. She’s speaking in a language you.".

Section 2 - Global Variables

talkingTo is a truth state variable.
talkingTo is false.

interrogating about [some thing] is an action applying to two visible things.
Understand "interrogate [someone] about [any thing]" and "interrogate [someone] for [any thing]" as interrogating about.

talking to is an action applying to one visible thing. 
Understand "talk to [someone]" and "talk to [something]" as talking to. 
 
Check talking to [something]:
	if noun is not a person:
		say "You attempt to have a conversation with the [noun]. Perhaps you should talk to someone who can talk back?";
		stop the action.
		
After reading a command when talkingTo is true:
	if the player's command includes "[triggerword]":
		now currentTriggerword is the triggerword understood;
		talkingToPeople;
		stop the action.
		
Instead of talking to child:
	say “I’m busy! Dolly and I are having a tea party!”;
	stop the action.
	
Instead of talking to random guy:
	say "I’m busy! I’m bringing these to Ms. O’Sullivan.";
	stop the action.
	
Instead of talking to random lady:
	say "I’m busy! I’m bringing these to Ms. Starr.";
	stop the action.
	
Instead of talking to Ellen Gates Starr:
	say "How can I help? [line break][italic type] Say a) Hi b) Who are you c) Where is Jane [roman type][line break]";
	now talkingTo is true;
	stop the action.
	
Instead of talking to Mary Kenney O’Sullivan:
	say "How can I help? [line break][italic type] Say a) Hi b) Who are you c) Where is Jane [roman type][line break]";
	now talkingTo is true;
	stop the action.
	
Instead of talking to Jane Addams:
	say "How can I help? [line break][italic type] Say a) Hi b) Who are you c) Can I get work [roman type][line break]";
	now talkingTo is true;
	stop the action.
	
To talkingToPeople:
	if player is in parlor:
		if currentTriggerword is greeting:
			say “Hello. So how may I help?”;
		if currentTriggerword is who:
			say "Me? I am Ellen Gates Starr, co-founder of Hull House.”;
		if currentTriggerword is where:
			say “Hmmm, I’m not sure where Ms. Addams is right now. You should try her study. Which is to the west.”;
	if player is in study:
		if currentTriggerword is greeting:
			say “Hello! Do you need something?”;
		if currentTriggerword is who:
			say “Me? I am Jane Addams, I helped found Hull House.”;
		if currentTriggerword is work:
			say “Oh, you’re looking for work? Welcome to America! Let me see how I can help you.”;
			end the story finally saying "Congratulations you found Jane and you got work!";
	if player is in foyer:
		if currentTriggerword is greeting:
			say “Oh, hello.”;
		if currentTriggerword is who:
			say “I am Mary O’Sullivan. Maybe you’ve heard of me? I, and some other women, are working hard for workers’ rights.”;
		if currentTriggerword is where:
			say “Jane? Oh, I think she’s in the parlor, somewhere.”.
		
Section 3 - Front Porch

frontPorch is a room. 
The description of frontPorch is "You look up at the imposing brick building in wonder. The east side of the building is shaded by tall, sturdy oak trees. The building is tall and imposing, with four stories. Windows allow you to peer into the building. You can see a woman sewing in a cozy looking armchair, and you avert your eyes to avoid being improper towards a lady. You walk towards the front door, and stand under the eaves, pausing before knocking on the wooden door. (go inside to enter the Hull House)".

tree is a thing in frontPorch.
The description of tree is "These tall oak trees provide an ample amount of shade.".

windows is a thing in frontPorch.
The description of windows is "You glance through the window, and see the same woman before. She appears to be mending a dark red blouse.".

random lady is a woman in frontPorch.
The description of random lady is "You really ought to stop staring at her. It’s highly improper to be staring at a lady, and you’re still new to this country. You aren’t sure on the customs of America, just yet, but you do know that staring isn’t appreciated.".

front door is a thing in frontPorch.
The description of fron door is "The door is made of a dark wood, and the handle is made of polished brass.".

door handle is a thing in frontPorch.
The description of door handle is "You really ought to knock instead of just entering."

blouse is a thing in frontPorch.
The description of blouse is "You really ought to not stare.".

street is a thing in frontPorch.
The description of street is "This street is oddly silent at the moment.".
the printed name of frontPorch is "front porch".

Section 4 - Foyer

foyer is a Room.
foyer is inside of frontPorch.
The description of foyer is "You walk into the foyer, stepping onto a pretty red rug. You can see a parlor to the EAST. The wooden floorboards creak beneath your feet, and a woman turns to face you.".

rug is a thing in foyer.
The description of rug is “The rug is a dark red color, and clearly made, not bought from a shop.”.

floorboards is a thing in foyer.
The description of floorboards is “The floorboards are of a shining dark wood. They’ve clearly been cleaned recently. You wonder why you’re examining floorboards.”.

Section 5 - Study

study is a Room.
study is west of parlor.
The description of study is "You step into Jane’s dimly lit study. It smells strongly of wood and paper and there is a gentle crackling coming from the fire. There is a large window over Jane’s wooden desk, but little sunlight is shining through. Piles and piles of papers and books line her desk. Jane is sitting in a soft chair facing the fire, gripping a letter, and she turns to face you when she hears you come in.".

bookshelf is a thing in study.
The description of bookshelf is "A tall, sturdy bookshelf leans against the wall. The shelves are warped under the weight of all of the books.".

books is a thing in study.
The description of books is "You pick up a book of poems, written by Emily Dickinson. The spine of the book is damaged, and the pages are dog-eared. This book has clearly been well-loved.".

desk is a thing in study.
The description of desk is "Jane’s desk is made out of wood, and piled high with papers and books.".

papers is a thing in study.
The description of papers is "You sneak a peek at the papers, but your English isn’t good enough to read them, let alone understand them.".

chair is a thing in study.
The description of chair is "The chair is soft looking, but there’s nothing noteworthy about it.".

fire is a thing in study.
The description of fire is "The fire crackles softly, keeping the room warm.".

Section 6 - Parlor

parlor is a room.
parlor is east of foyer.
The description of parlor is “You wander into the parlor, and see a square table and a few chairs nestled around it. The light blue walls and cream-colored curtains make the room feel bright and inviting. The carpet beneath your feet is comfortable, and you can feel warmth emitting from the roaring fire.”.

parlor table is a thing in parlor.
The description of parlor table is "The square, wooden table is cleared. Nothing is on it.".

chairs is a thing in parlor.
The description of chairs is "Wooden chairs are nestled around the table, each with a white cushion on the seat.".

fireplace is a thing in parlor.
The description of fireplace is "The fireplace is large, and a fire is roaring in it. It makes the room much warmer, and you can feel your frozen fingers and toes defrost in the warmth of the fire.".

carpet is a thing in parlor.
The description of carpet is "The carpet is soft beneath your tired feet.".

curtains is a thing in parlor.
The description of curtains is "The curtains are white and make the room feel bright and inviting.".







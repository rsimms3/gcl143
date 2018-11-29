"Civil War" by Akash Prasad

[THIS GAME IS VERY SIMPLISTIC AND VOID OF MANY FEATURES AND BATTLES. THIS IS JUST TO IMPLEMENT THE BASICS MECANICS AS OF RIGHT NOW. BUT MORE CONTENT WILL BE COMING SOON!]

Artillary Base is a room.
The description of Artillary Base is "[if unvisited] Welcome Commander! Civil War has just been declared by our president Abraham Lincoln because the South has seceded they think slavery is right. Our mission is to fight various battles and win the war overall. Your primary job is to kill your enemys using your weapons. But since you are also the commander of this Artillary Base, you make the call to deploy troops and various fighter vehicles. You also need to aid the troops. The one think we have to protect however is your Artillary Base. This is heart of our allies. If enemies takes down out base, we lose and ultimatly the war. While you are outside of this base, you can always come back here to replenish all of your health and energy. Now lets go and attack by going SOUTH from here! [else] You are now currently back at the bask. All of your health and energy is now replaced."
Every turn when player is in Artillary Base:
	increase Energy by 1000;
	increase playerHP by 1000.
[Extra details about the storyline and the rules of the game will be added later]

Use Scoring.

Energy is a number variable. Energy is 1000.
playerHP is a number variable. playerHP is 1000.
Every turn:
	say "The time is [time of day],";
	decrease Energy by 1;
	say "Energy: [Energy]";
	say "HP: [playerHP]";
Every turn when Energy is less than 1:
	say "WARNING: YOUR ENERGY IS ZERO AND YOUR HP IS DECLINING RAPIDLY! RETURN TO ARTILLARY BASE IMMEDITLY!";
	decrease playerHP by 50.
Every turn when playerHP is less than 1:
	end the story finally saying "Your HP is zero. You have died. You have lost the Civil War. Game over."
	
enemyHP is a number variable. enemyHP is 1000.
Every turn when enemyHP is less than 1:
	end the story finally saying "You have defeated your enemy. You won!"
	
allyHP is a number variable. allyHP is 1000.
deadAlly is a truth state variable.
deadAlly is false.
Every turn when allyHP is less than 1:
	now deadAlly is true.

Shooting is an action applying to one visible thing.
Check shooting:
	if noun is not a person:
		say "There is nothing to shoot.";
		stop the action.
Carry out shooting:
	say "You have shot the [noun] from a weapon."
	
Battlefield_1 is south of Artillary Base.
Some EnemyForce_1 are people in the Battlefield_1.
Some ally are people in the Battlefield_1.
The description of Battlefield_1 is "[if unvisited] An open field, perfect for the first battle almost begins. Make sure your forces are ready. As of right now, you have ally forces and a semi-gun with you. Remember to use SHOOT and ATTACK."
Every turn when the player is in Battlefield_1:
	if a random chance of 1 in 2 succeeds:
		say "Your allies are being attacked.";
		decrease allyHP by 50;
	if a random chance of 1 in 3 succeeds:
		say "You have been attacked!";
		decrease Energy by 5;
		decrease playerHP by 50;
		say "Energy: [energy]";
		say "HP: [playerHP]".
Instead of shooting EnemyForce_1:
	decrease Energy by 100;
	say "You hit the target!";
	decrease enemyHP by 20;
	say "Enemy HP: [enemyHP]";
	if a random chance of 1 in 7 succeeds:
		decrease enemyHP by 30;
		say "Enemy HP: [enemyHP]";
		say "Critical hit!!";
Instead of attacking EnemyForce_1:
	if deadAlly is false:
		say "Attack deployed by troops!!";
		decrease enemyHP by 10;
	else:
		say "Your Ally can't attack because its dead."
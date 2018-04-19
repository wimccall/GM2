/// @description Insert description here
// You can write your code in this editor
randomize(); // Randomize the RNG seed
player = Player_obj;

playerDeckFull = ds_list_create();

// TODO allow the player to choose deck and remove this.
// This block of code randomly fills the deck with jump and run cards
DeckSize = 20
for(var i = 0; i < DeckSize; i++) {
	var c = floor(random_range(0, 2));
	var card = noone;
	if(c == 0) {
		card = JumpCard
	} else {
		card = RunCard
	}
	ds_list_add(playerDeckFull, card)
}

// Card positions (in hand)
// y
cardPos[0, 1] = 700;
cardPos[1, 1] = 700;
cardPos[2, 1] = 700;
cardPos[3, 1] = 700;
cardPos[4, 1] = 700;
// x
cardPos[0, 0] = 100;
cardPos[1, 0] = 200;
cardPos[2, 0] = 300;
cardPos[3, 0] = 400;
cardPos[4, 0] = 500;

// Hand array
Handsize = 5;
hand[0] = noone;
hand[1] = noone;
hand[2] = noone;
hand[3] = noone;
hand[4] = noone;

// Deck set up
player.Deck = Gamemanager.playerDeckFull;
ds_list_shuffle(player.Deck);
DrawCards(5);
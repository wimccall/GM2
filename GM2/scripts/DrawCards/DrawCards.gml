for (var i = 0; i < argument0; i++) {
	if(ds_list_size(Player_obj.Deck) > 0) {
		var draw = ds_list_find_value(Player_obj.Deck, 0)
		for(var j = 0; j < Gamemanager.Handsize; j++) {
			if(Gamemanager.hand[j] == noone) {// hand[j] is empty
				Gamemanager.hand[j] = instance_create_depth(Gamemanager.cardPos[j, 0],Gamemanager.cardPos[j, 1], j, draw);
				break; // card found, on to the next one.
			}
			if (j == Gamemanager.Handsize - 1) { // TODO. Hand is full and we are attempting to draw. Do something
				
			}
		}
		ds_list_delete(Player_obj.Deck, 0)
	} else {break;} // deck out. No more draws.
}
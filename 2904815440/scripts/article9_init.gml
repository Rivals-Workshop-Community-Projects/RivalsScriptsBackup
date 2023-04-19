// article 9 - space_decor 1
sprite_index = sprite_get("empty");
//Variables
boardLayout = random_func( 0, 4, true ) + 1;
//boardLayout = 1;

if (boardLayout == 1){
	sprite_index = sprite_get("empty");
} else if (boardLayout == 2){
	sprite_index = sprite_get("empty");
} else if (boardLayout == 3){
	sprite_index = sprite_get("empty");
} else if (boardLayout == 4){
	sprite_index = sprite_get("decor_lux");
}

x -= 6;
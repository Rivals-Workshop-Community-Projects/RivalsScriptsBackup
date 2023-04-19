// article 8 - right_space_decor
sprite_index = sprite_get("decor_jail_visit");
//Variables
boardLayout = random_func( 0, 4, true ) + 1;
//boardLayout = 1;

if (boardLayout == 2){
	sprite_index = sprite_get("decor_jail_visit");
} else if (boardLayout == 3){
	sprite_index = sprite_get("decor_free_park");
} else if (boardLayout == 4){
	sprite_index = sprite_get("decor_jail_space");
} else if (boardLayout == 1){
	sprite_index = sprite_get("decor_go");
}
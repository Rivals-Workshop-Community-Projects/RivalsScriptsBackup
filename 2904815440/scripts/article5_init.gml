// article 5 - board
sprite_index = sprite_get("board1");
//Variables
boardLayout = random_func( 0, 4, true ) + 1;
//boardLayout = 1

if (boardLayout == 1){
	sprite_index = sprite_get("board1");
} else if (boardLayout == 2){
	sprite_index = sprite_get("board2");
} else if (boardLayout == 3){
	sprite_index = sprite_get("board3");
} else if (boardLayout == 4){
	sprite_index = sprite_get("board4");
}
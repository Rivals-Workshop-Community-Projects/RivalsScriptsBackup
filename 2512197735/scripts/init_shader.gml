//golden outline
if (get_player_color(player) == 18){
	outline_color = [116, 92, 2];
}

//fix the eyes
if (get_player_color(player) == 0){	
	set_character_color_slot(5, 0, 0, 0, 1);	
}

//fix the hair
if (get_player_color(player) == 0){	
	set_character_color_slot(5, 159, 74, 33, 1);	
}

if (get_player_color(player) == 10){
for(i = 0; i < 7; i++){
set_character_color_shading(i, 0);
}
}

if (get_player_color(player) == 15){
for(i = 0; i < 7; i++){
set_character_color_shading(i, 0);
}
}

if (get_player_color(player) == 17){
for(i = 0; i < 7; i++){
set_character_color_shading(i, 0);
}
}

if (get_player_color(player) == 18){
for(i = 0; i < 7; i++){
outline_color = [90, 31, 7];
}
}

if (get_player_color(player) == 20){
for(i = 0; i < 7; i++){
set_character_color_shading(i, 0);
}
}

if (get_player_color(player) == 22){
for(i = 0; i < 7; i++){
set_character_color_shading(i, 0);
}
}

if (get_player_color(player) == 25){
for(i = 0; i < 7; i++){
set_character_color_shading(i, 0);
}
}

if (get_player_color(player) == 26){
for(i = 0; i < 6; i++){
}
}
//Eye shading value
if get_player_color(player) == 2 {
set_character_color_shading( 6, 0.5 );
}
if get_player_color(player) == 3 {
set_character_color_shading( 6, 0 );
}
if get_player_color(player) == 7 {
set_character_color_shading( 6, 0 );
}
if get_player_color(player) == 10 {
set_character_color_shading( 6, 0 );
}
if get_player_color(player) == 13 {
set_character_color_shading( 6, 0.5 );
}
if get_player_color(player) == 15 {
set_character_color_shading( 6, 0.5 );
}
if get_player_color(player) == 16 {
set_character_color_shading( 6, 0 );
}
if get_player_color(player) == 17 {
set_character_color_shading( 6, 0.5 );
}
if get_player_color(player) == 18 {
set_character_color_shading( 6, 0.6 );
}
if get_player_color(player) == 19 {
set_character_color_shading( 6, 0 );
}
if get_player_color(player) == 20 {
set_character_color_shading( 6, 0 );
}
if get_player_color(player) == 22 {
set_character_color_shading( 6, 0.6 );
}
if get_player_color(player) == 24 {
set_character_color_shading( 6, 0.6 );
}
if get_player_color(player) == 30 {
set_character_color_shading( 6, 0 );
}
if get_player_color(player) == 31 {
set_character_color_shading( 6, 0 );
}


//Stolen from Shyguy which was stolen from Acid, if you steal this keep the chain going lol

if (get_player_color( player ) == 8) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 26) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 27) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 28) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 29) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
//if (get_player_color( player ) == 7) {
//    set_character_color_shading( 0, 0 );
//}

if (get_player_color( player ) == 6) && (get_color_profile_slot_r(6, 6) == 165){
set_character_color_shading( 6, 0 );
}

//Stolen from SuperSonicNK but they put it in #modding-resources so that's allowed
switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
	set_color_profile_slot( 6, 0, 255, 133, 193 ); //BODY
	set_color_profile_slot( 6, 1, 255, 194, 219 ); //BODYHIGH
	set_color_profile_slot( 6, 2, 255, 255, 255 ); //LIMBS
	set_color_profile_slot( 6, 3, 212, 0, 139 ); //KEY
	set_color_profile_slot( 6, 4, 225, 73, 73 ); //BOBBLE
	set_color_profile_slot( 6, 5, 255, 128, 128 ); //BOBBLEHIGH
	set_color_profile_slot( 6, 6, 173, 173, 209 ); //EYES
	set_color_profile_slot( 6, 7, 255, 133, 193 ); //PROJECTILE BLUE
    break;
  case 2: // summer
    //set your summer holiday alt
	set_color_profile_slot( 6, 0, 89, 204, 233 ); //BODY
	set_color_profile_slot( 6, 1, 173, 255, 241 ); //BODYHIGH
	set_color_profile_slot( 6, 2, 255, 246, 140 ); //LIMBS
	set_color_profile_slot( 6, 3, 255, 231, 0 ); //KEY
	set_color_profile_slot( 6, 4, 255, 166, 40 ); //BOBBLE
	set_color_profile_slot( 6, 5, 255, 216, 161 ); //BOBBLEHIGH
	set_color_profile_slot( 6, 6, 255, 255, 255 ); //EYES
	set_color_profile_slot( 6, 7, 89, 204, 233 ); //PROJECTILE BLUE
    break;
  case 3: // halloween
    //set your halloween holiday alt
	set_color_profile_slot( 6, 0, 255, 231, 0 ); //BODY
	set_color_profile_slot( 6, 1, 255, 248, 204 ); //BODYHIGH
	set_color_profile_slot( 6, 2, 0, 225, 0 ); //LIMBS
	set_color_profile_slot( 6, 3, 250, 255, 255 ); //KEY
	set_color_profile_slot( 6, 4, 192, 33, 255 ); //BOBBLE
	set_color_profile_slot( 6, 5, 255, 155, 217 ); //BOBBLEHIGH
	set_color_profile_slot( 6, 6, 165, 8, 33 ); //EYES
	set_color_profile_slot( 6, 7, 255, 231, 0 ); //PROJECTILE BLUE
    break;
  case 4: // christmas
    //set your christmas holiday alt
	set_color_profile_slot( 7, 0, 80, 63, 94 ); //BODY
	set_color_profile_slot( 7, 1, 143, 114, 168 ); //BODYHIGH
	set_color_profile_slot( 7, 2, 144, 59, 206 ); //LIMBS
	set_color_profile_slot( 7, 3, 146, 152, 189 ); //KEY
	set_color_profile_slot( 7, 4, 220, 113, 255 ); //BOBBLE
	set_color_profile_slot( 7, 5, 255, 207, 254 ); //BOBBLEHIGH
	set_color_profile_slot( 7, 6, 230, 165, 52 ); //EYES
	set_color_profile_slot( 7, 7, 255, 231, 0 ); //PROJECTILE BLUE
    break;
}


if get_player_color(player) == 7 {
set_character_color_shading( 3, 1 );
}
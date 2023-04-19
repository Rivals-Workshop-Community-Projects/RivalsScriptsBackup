if "alt" not in self { alt = get_player_color(player); }

//Stolen from Shyguy which was stolen from Acid, if you steal this keep the chain going lol

switch alt {
//Eye shading value
case 2: case 13: case 15: case 17:
set_character_color_shading( 6, 0.5 );
break;
case 3: case 7: case 10: case 16: case 19: case 20: case 30: case 31:
set_character_color_shading( 6, 0 );
break;
case 18: case 22: case 24:
set_character_color_shading( 6, 0.6 );
break;
case 27: case 28: case 29: case 8: case 26:
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
break;
}


//Stolen from SuperSonicNK but they put it in #modding-resources so that's allowed
//switch (get_match_setting(SET_SEASON)) {
debug_season = 2;
switch (debug_season) {
  case 1: // valentines
	set_color_profile_slot( 6, 0, 255, 133, 193 ); //BODY
    set_color_profile_slot( 6, 1, 219, 85, 182 ); //BODY SHADE
    set_color_profile_slot( 6, 2, 255, 194, 219 ); //BODYHIGH
    set_color_profile_slot( 6, 3, 255, 255, 255 ); //LIMBS
    set_color_profile_slot( 6, 4, 212, 0, 139 ); //KEY
    set_color_profile_slot( 6, 5, 225, 73, 73 ); //BOBBLE
    set_color_profile_slot( 6, 6, 173, 173, 209 ); //EYES
    set_color_profile_slot( 6, 7, 255, 133, 193 ); //PROJECTILE BLUE
	seasonal_break = hit_fx_create( sprite_get( "idle_seasonal_sp_break" ), 24 );
    break;
  case 2: // summer
    //set your summer holiday alt
	set_color_profile_slot( 6, 0, 89, 204, 233 ); //BODY
	set_color_profile_slot( 6, 1, 68, 140, 212 ); //BODY SHADE
	set_color_profile_slot( 6, 2, 173, 255, 241 ); //BODYHIGH
	set_color_profile_slot( 6, 3, 255, 246, 140 ); //LIMBS
	set_color_profile_slot( 6, 4, 255, 231, 0 ); //KEY
	set_color_profile_slot( 6, 5, 255, 166, 40 ); //BOBBLE
	set_color_profile_slot( 6, 6, 255, 255, 255 ); //EYES
	set_color_profile_slot( 6, 7, 89, 204, 233 ); //PROJECTILE BLUE
	seasonal_break = hit_fx_create( sprite_get( "idle_seasonal_su_break" ), 21 );
    break;
  case 3: // halloween
    //set your halloween holiday alt
	set_color_profile_slot( 6, 0, 255, 231, 0 ); //BODY
	set_color_profile_slot( 6, 1, 215, 147, 0 ); //BODY SHADE
	set_color_profile_slot( 6, 2, 255, 248, 204 ); //BODYHIGH
	set_color_profile_slot( 6, 3, 0, 225, 0 ); //LIMBS
	set_color_profile_slot( 6, 4, 250, 255, 255 ); //KEY
	set_color_profile_slot( 6, 5, 192, 33, 255 ); //BOBBLE
	set_color_profile_slot( 6, 6, 165, 8, 33 ); //EYES
	set_color_profile_slot( 6, 7, 255, 231, 0 ); //PROJECTILE BLUE
	seasonal_break = hit_fx_create( sprite_get( "idle_seasonal_au_break" ), 18 );
	
	    if alt = 6 { 
		set_character_color_shading( 6, 0 );
		}
    break;
  case 4: // christmas
    //set your christmas holiday alt
    set_color_profile_slot( 6, 0, 68, 179, 34 ); //BODY
    set_color_profile_slot( 6, 1, 77, 139, 25 ); //BODY SHADE
    set_color_profile_slot( 6, 2, 135, 240, 103 ); //BODYHIGH
    set_color_profile_slot( 6, 3, 255, 72, 72 ); //LIMBS
    set_color_profile_slot( 6, 4, 239, 52, 15 ); //KEY
    set_color_profile_slot( 6, 5, 253, 235, 232 ); //BOBBLE
    set_color_profile_slot( 6, 6, 255, 255, 255 ); //EYES
    set_color_profile_slot( 6, 7, 68, 179, 34 ); //PROJECTILE BLUE
	seasonal_break = hit_fx_create( sprite_get( "idle_seasonal_wt_break" ), 24 );
    break;
}
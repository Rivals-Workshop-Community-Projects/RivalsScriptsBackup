
if (state == PS_PRATFALL) {
	randomxd=random_func( 1, 7,  true);	
	if(randomxd==0) if (state_timer % 6 == 2) { 
        spawn_hit_fx( x-7, y, smoke );
	} 
	if(randomxd==1) if (state_timer % 6 == 2) {
        spawn_hit_fx( x+18, y, smoke );
	} 
	if(randomxd==2) if (state_timer % 6 == 2) {
        spawn_hit_fx( x, y, smoke );
	} 
	if(randomxd==3) if (state_timer % 6 == 2) {
        spawn_hit_fx( x+10, y, smoke );
	}
	if(randomxd==4) if (state_timer % 6 == 2) {
        spawn_hit_fx( x+6, y, smoke );
	}
	if(randomxd==5) if (state_timer % 6 == 2) {
        spawn_hit_fx( x-5, y, smoke );
	}
	if(randomxd==6) if (state_timer % 6 == 2) {
        spawn_hit_fx( x-15, y, smoke );
	}
}
if (state == PS_PRATFALL && state_timer == 1) {
            create_hitbox(AT_TAUNT, 4, x-2, y+3);
gravity_speed = .40;
max_fall = 12;
air_max_speed = 3;
}

if (state == PS_WALL_JUMP && state_timer == 1){
	    sound_play(sound_get("lev"));
}

var alt_cur = get_player_color(player);

if (alt_cur == 1){
	randomxd=random_func( 1, 7,  true);	
	if(randomxd==0) if (state_timer % 54 == 12) { 
        spawn_hit_fx( x-7, y-25, shiny );
	} 
	if(randomxd==1) if (state_timer % 31 == 12) {
        spawn_hit_fx( x+15, y-45, shiny );
	} 
	if(randomxd==2) if (state_timer % 21 == 12) {
        spawn_hit_fx( x, y-34, shiny );
	} 
	if(randomxd==3) if (state_timer % 31 == 12) {
        spawn_hit_fx( x+10, y-75, shiny );
	}
	if(randomxd==4) if (state_timer % 31 == 12) {
        spawn_hit_fx( x+60, y-14, shiny );
	}
	if(randomxd==5) if (state_timer % 21 == 12) {
        spawn_hit_fx( x-50, y-25, shiny );
	}
	if(randomxd==6) if (state_timer % 12 == 12) {
        spawn_hit_fx( x-65, y-50, shiny );
	}
}






//update.gml

KILL_RATS = 0;

// Bubble Frog
if (state == PS_AIR_DODGE && state_timer == 2){
	create_hitbox(AT_EXTRA_1, 1, x+((5*spr_dir)+5), y + 30);
}

// afterimage
if (state == PS_ATTACK_AIR && attack == AT_DAIR && window == 2 && hitpause == false){
	afterimage_timer++;
	if (afterimage_timer == 4 || window_timer == 0){
	var flip = spawn_hit_fx( x, y, brigandine_image );
	flip.spr_dir = spr_dir;
	spawn_hit_fx( x, y, brigandine_image );
	afterimage_timer = 0;
	}
	if (afterimage_timer == 4 || window_timer == 0){
	var flip = spawn_hit_fx( x, y, brigandine_sparks );
	flip.spr_dir = spr_dir;
	spawn_hit_fx( x, y, brigandine_sparks );
	afterimage_timer = 0;
	}
}

if (attack == AT_FSPECIAL){
	if (free == true && move_cooldown[AT_FSPECIAL] > 1){ move_cooldown[AT_FSPECIAL] = 3; }
}

if (state == PS_WALL_JUMP){
	move_cooldown[AT_FSPECIAL] = 0;
}

confetti_num = random_func(9, 12, false);

if (rats > 0){ rat_timer++; }
if (rats == 1){ if (rat_timer >= 4){ rat_timer = 1; } }
if (rats == 2){ if (rat_timer >= 9){ rat_timer = 6; } }
if (rats == 3){ if (rat_timer >= 14){ rat_timer = 11; } }

//if (propeller_rats >= 4){ move_cooldown[AT_DSPECIAL] = 9999999999; } else { move_cooldown[AT_DSPECIAL] = 0; }

if (get_player_color(player) == 6){
	set_character_color_shading( 0, 0 );
	set_character_color_shading( 1, 0 );
	set_character_color_shading( 2, 0 );
	set_character_color_shading( 3, 0 );
	set_character_color_shading( 4, 0 );
	set_character_color_shading( 5, 0 );
	set_character_color_shading( 6, 0 );
}
if (get_player_color(player) == 7){
	outline_color = [140, 81, 10];
	init_shader();
}
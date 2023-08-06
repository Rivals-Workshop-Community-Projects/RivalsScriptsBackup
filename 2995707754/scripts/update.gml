//update.gml
horus_anim += .1;

if !free {
	grounded_dust_timer++;
} else { 
	grounded_dust_timer = 0; 
}

if state == PS_PRATFALL { hurtboxID.sprite_index = hurtbox_spr; }
//words 
if state_timer > 150 && state_timer % 15 == 0 {
	 if state == PS_IDLE { var word_menacing = instance_create( x+20*2*spr_dir, y-48, "obj_article1" ); word_menacing.article_id = 5; }
	 if state == PS_CROUCH { var word_menacing = instance_create( x+24*2*spr_dir, y-32, "obj_article1" ); word_menacing.article_id = 5; }
}

if state == PS_WALK && state_timer % 20 == 0 {
	var word_flap_dust = spawn_dust_fx( x-10*spr_dir, y-20, sprite_get("word_flap"), 8 );
	word_flap_dust.spr_dir = 1;
}

if state == PS_JUMPSQUAT {
	if state_timer == 0 {
		var gust_dust_fx = spawn_dust_fx( x, y-4, sprite_get("dust_fx_idle_dissipate"), 30 );
		gust_dust_fx.dust_depth = 5;
		var word_jump_dust = spawn_dust_fx( x, y-4, sprite_get("word_jump"), 20 );
		word_jump_dust.spr_dir = 1;
	}
}

if state == PS_DOUBLE_JUMP && state_timer == 1 {
	var word_jump_dust = spawn_dust_fx( x, y-4, sprite_get("word_flap"), 8 );
	word_jump_dust.spr_dir = 1;
}

if (state == PS_LAND || state == PS_LANDING_LAG || state == PS_PRATLAND) && state_timer == 1 {
	var word_land_dust = spawn_dust_fx( x-10*2*spr_dir, y-4, sprite_get("word_land"), 16 );
	word_land_dust.spr_dir = 1;
}

if state == PS_CROUCH {
	hud_offset = -48;
}

//flying code

if flight_mode == 0 {
	flight_mode_hit = 0;
	flight_mode_timer = 0;
	gravity_speed = .65;
	air_friction = .02;
	
	flight_disabled_timer--;
	if flight_disabled_timer <= 0 {flight_disabled_timer = 0; }

	if !free { flight_meter = 30; able_to_glide = 0; flying = 0;
	} else { flight_meter+= 0.05; if state_cat != SC_AIR_COMMITTED && ((vsp >= 0 && flying == 0) || (down_down&&(right_down || left_down))) { able_to_glide = 1; } }
	if flight_meter >= 30 { flight_meter = 30; }
	if flight_meter <= 0 { flight_meter = 0; }
	if flight_meter > 10 { djumps = 2; } else { djumps = 3; }

	if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && state_timer = 0 { //disables flight 5 frames after jump
		flight_disabled_timer = 2;
		able_to_glide = 0;
		if (state == PS_DOUBLE_JUMP) && state_timer = 0 { if !jump_from_dash { flight_meter -= 10; } flight_disabled_timer = 8; }
		if (state == PS_WALL_JUMP) && state_timer = 0 { flight_disabled_timer = 5; }
		jump_from_dash = 0;
	}
	
	if free{
		jump_pressed_timer--;
		if jump_pressed_timer < 0 { jump_pressed_timer = 0; }
		if (jump_pressed || tap_jump_pressed) && jump_pressed_timer <= 0 { clear_button_buffer( PC_JUMP_PRESSED ); jump_pressed_timer = 6; }
	}

	if state_cat == SC_AIR_NEUTRAL && flight_disabled_timer == 0 && !hitpause {
		if able_to_glide == 1 {
			if right_down || left_down { 
				if state_timer % 20 == 0 {
					var word_flap_dust = spawn_dust_fx( x-10*spr_dir, y-20, sprite_get("word_flap"), 8 );
					word_flap_dust.spr_dir = 1;
				}
				flight_meter -= 0.1;
				if flight_meter > 0{
					vsp = ease_circOut( ceil(flying_vsp), 0, flying_timer, 14 );
				}
			}

			if right_down || left_down { 
				flying = 1;
				//state = PS_IDLE_AIR;
			} else { flying = 0; }
		}
	}

	if flying = 1 { 
		flying_timer++; 
		if flying_timer >= 15 { flying_timer = 14; } 
	} else { flying_timer = 0; flying_vsp = vsp;  }
} else { //flight mode (uspecial)
	flying = 1;
	flight_mode_timer++;
	if flight_meter >= 30 { flight_meter = 30; }
	
	if flight_mode_timer == 1 {
		aura_article = instance_create( x, y, "obj_article1" ); 
		aura_article.article_id = 4;
	}
	if flight_mode_timer % 2 { spawn_hit_fx( x+random_func_2(100, 24, true)*4 - 48, y+random_func_2(101, 24, true)*4 - 80, aura_particles ); }
	
	can_drop = 1;
	
	flight_meter -= .1;
	if flight_meter <= 0 { flight_mode = 0; if flight_mode_hit == 0 { 
		if ice_meteor_article != -4 {
			instance_destroy(ice_meteor_article); 
			sound_play(asset_get("sfx_ice_shatter_big"));
			shard_spread = 1;
			instance_create( x, y-156, "obj_article3" ); 
			instance_create( x, y-156, "obj_article3" ); 
			instance_create( x, y-156, "obj_article3" ); 
			instance_create( x, y-156, "obj_article3" ); 
			shard_spread = 3;
			instance_create( x, y-156, "obj_article3" ); 
			instance_create( x, y-156, "obj_article3" ); 
			instance_create( x, y-156, "obj_article3" ); 
			instance_create( x, y-156, "obj_article3" ); 
			ice_meteor_article = -4; 
		} 
		set_state( PS_PRATFALL ); } }
	if !joy_pad_idle {
		if !hitpause {
			hsp = cos(degtorad(joy_dir)) * 4.5;
			vsp = -1*sin(degtorad(joy_dir)) * 4.5;
		}
	} else {
		hsp = 0;
		vsp = 0;
	}
	
	if state == PS_CROUCH && state_timer = 0 { flight_mode = 0; }
	if state == PS_FIRST_JUMP && state_timer = 0 { flight_disabled_timer = 3; flight_mode = 0; }
	if state == PS_DOUBLE_JUMP && state_timer = 0 { flight_meter -= 10; flight_disabled_timer = 8; vsp = -10; flight_mode = 0; }
	if state == PS_PARRY_START && state_timer = 0 { flight_mode = 0; }
	if state == PS_AIR_DODGE && state_timer = 0 { flight_mode = 0; }
}

//dashing

if !free && state != PS_ATTACK_GROUND { dashing = 0; }
if 
	state == PS_LAND ||
	state == PS_SPAWN ||
	state == PS_PRATLAND ||
	state == PS_LANDING_LAG ||
	state == PS_WALK_TURN ||
	state == PS_ATTACK_GROUND ||
	state == PS_WAVELAND ||
	state == PS_PARRY_START ||
	state == PS_PARRY ||
	state == PS_TECH_GROUND ||
	state == PS_TECH_BACKWARD ||
	state == PS_TECH_FORWARD ||
	state == PS_ROLL_BACKWARD ||
	state == PS_ROLL_FORWARD ||
	state == PS_JUMPSQUAT ||
	state_cat == SC_AIR_COMMITTED ||
	state_cat == SC_HITSTUN { dashing = 1; } else { dashing = 0; }

if (left_hard_pressed || right_hard_pressed) && flight_meter > 10 && dashing == 0 && flight_disabled_timer == 0 {
	if joy_dir > 90 && joy_dir < 270 { dash_dir = -1; } else { dash_dir = 1; }
	set_attack(48);
	flight_mode = 0;
}

//dodge shards
if state == PS_PARRY && state_timer == 9{ //spawns 8 shards
	shard_spread = 1;
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
}
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && state_timer == 13{ //spawns 5 shards
	shard_spread = 2;
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
}
if state == PS_AIR_DODGE && state_timer == 14{ //spawns 5 shards
	shard_spread = 1;
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
}
if state == PS_WAVELAND && state_timer == 1{ //spawns 3 shards
	shard_spread = 1;
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
}
if state == PS_TECH_GROUND && state_timer == 14{ //spawns 8 shards
	shard_spread = 1;
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
	instance_create( x, y - 64, "obj_article3" ); 
}

//ice meteor
if ice_meteor_article == -4 { move_cooldown[AT_NSPECIAL] = 0; } else { move_cooldown[AT_NSPECIAL] = 2; }

//dust
with (asset_get("new_dust_fx_obj")){
	if (player == other.player){ 
		if x != -3000 && (dust_fx == 0 || dust_fx == 3 || dust_fx == 11 ) {
			//"remove" dust
			x = -3000;
			y = -3000;
			dust_length = 0;
		} 
		if dust_fx == 2 { dust_fx = 16; }
	}
}

//alt effects
//purple, yellow and squawk
if get_player_color(player) == 5 || get_player_color(player) == 6 || get_player_color(player) == 8 {
	set_character_color_shading(0, 1.2);
	set_character_color_shading(1, 0.8);
}
//EA and cover
if get_player_color(player) == 7 || get_player_color(player) == 19 {
    for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
		if get_player_color(player) == 7 {
			outline_color = [ 35, 67, 49 ];
		}
		if get_player_color(player) == 19 {
			set_character_color_shading(1, 1.5);
		}
    }
}
if get_player_color(player) == 26{
	if !(hitpause && state == PS_HITSTUN) {
		outline_color = [ 0, 0, 0 ];
	}
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0.3);
	}
}
if get_player_color(player) == 27{
	set_character_color_shading(2, 1.5);
	set_character_color_shading(3, 5);
	set_character_color_shading(4, -1.5);
}
//dio
if get_player_color(player) == 20 {
	set_character_color_shading(0, 0.8);
	set_character_color_shading(1, 0.7);
}
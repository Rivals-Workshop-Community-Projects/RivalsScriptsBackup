//
//Airdash
{
var dashSpeed = (dash_speed * 0.75) + 4.2;
var cancelFrame = 5;

    if (state == PS_AIR_DODGE){
	    set_state(PS_IDLE_AIR);
	    set_attack(AT_AIRDASH);
    	has_airdodge = false;
    	sound_play(sound_get("airdash"));
    	spawn_hit_fx( x, y-20, airdash_vfx);
    }
    if (attack == AT_AIRDASH) {
    	can_fast_fall = false;
    	can_wall_jump = true;
    	can_attack = true;
    	can_jump = true;
    	
    	if (window_timer == 0) {
    		ang = 90 - (spr_dir * 90);
    		if (joy_pad_idle = false) {
    			ang = joy_dir;
    		}
    		set_window_value(AT_AIRDASH, 1, AG_WINDOW_HSPEED, dashSpeed * cos(degtorad(ang)) * spr_dir);
    		set_window_value(AT_AIRDASH, 1, AG_WINDOW_VSPEED, -dashSpeed * sin(degtorad(ang)));
    	}
    	if (state == clamp(state,5,6) && !free && window_timer > 0) {
			set_state(PS_WAVELAND);
		}
		var cstick = [right_stick_pressed-left_stick_pressed,down_stick_pressed-up_stick_pressed];
		if (state == PS_ATTACK_AIR && window_timer >= cancelFrame && (attack_pressed || special_pressed || cstick[0] != 0 || cstick[1] != 0)) {
			set_state(PS_IDLE_AIR);
		}
    }
} 

if (state == PS_WALL_JUMP && state_timer == 0){
	spr_dir *= -1;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
}

if (meteor_spawn){
	meteor_timer += 0.25;
	if (meteor_timer == 3){
		if (meteor_air == false){
			create_hitbox(AT_USTRONG, 1, meteor_x_pos, (room_height/4)-20);
		}
		else {
			if (has_hit == false){
				create_hitbox(AT_USTRONG, 1, meteor_x_pos, (room_height/4)-20);
			}
			else {
				create_hitbox(AT_USTRONG_2, 2, meteor_x_pos, meteor_y_pos-100);
			}
		}
	}
}

if (meteor_blew_up > 0){
	meteor_blew_up++;
	if (meteor_blew_up == 13){
		create_hitbox(AT_USTRONG, 2, meteor_x_pos, meteor_y_pos-20);
		meteor_blew_up = 0;
	}
}

if (spawn_rings > 0){
	spawn_hit_fx( x + 30*spr_dir, y-60-(40*spawn_rings), meteor_summon);
	spawn_rings++;
	if (spawn_rings == 10){
		spawn_rings = 0;
	}
}

//FSpecial "Comand Grab"
if (ustrong_grab == true){
	hit_player_obj.hitstop = 1;
	hit_player_obj.x = lerp(hit_player_obj.x, x+25*spr_dir, 0.4);
	hit_player_obj.y = lerp(hit_player_obj.y, y-35, 0.4);
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_USTRONG_2){
    ustrong_grab = false;
    set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong"));
}

if (instance_exists(nspecial_weak)){
	nspecial_x = nspecial_weak.x;
	nspecial_y = nspecial_weak.y;
	nspecial_spr_dir = nspecial_weak.spr_dir;
}

if (!nspecial_charged && nspecial_was_shot && !instance_exists(nspecial_weak)){
	create_hitbox(AT_NSPECIAL, 2, nspecial_x+40*nspecial_spr_dir, nspecial_y-10);
	sound_play(asset_get("sfx_abyss_hazard_burst"));
	spawn_hit_fx( nspecial_x+20*nspecial_spr_dir, nspecial_y+10, 
	nspecial_burst).spr_dir = nspecial_spr_dir;
	nspecial_was_shot = false;
}

if (instance_exists(nspecial_strong)){
	nspecial_x = nspecial_strong.x;
	nspecial_y = nspecial_strong.y;
	nspecial_spr_dir = nspecial_strong.spr_dir;
}

if (nspecial_charged && nspecial_was_shot && !instance_exists(nspecial_strong)){
	blackhole_timer = 0;
	sound_play(asset_get("sfx_abyss_hazard_burst"));
	spawn_hit_fx( nspecial_x+20*nspecial_spr_dir, nspecial_y+10, 
	nspecial_blackhole).spr_dir = nspecial_spr_dir;
	nspecial_was_shot = false;
}

if (blackhole_timer >= 0){
	blackhole_timer++;
	if (blackhole_timer == 8){
		sound_play(sound_get("explosion"));
		create_hitbox(AT_NSPECIAL, 4, nspecial_x+25*nspecial_spr_dir, nspecial_y);
	}
	if (blackhole_timer == 21){
		create_hitbox(AT_NSPECIAL, 5, nspecial_x+25*nspecial_spr_dir, nspecial_y);
	}
	if (blackhole_timer == 35){
	//	sound_play(asset_get("sfx_abyss_explosion_big"));
		var hole_explosion = create_hitbox(AT_NSPECIAL, 6, nspecial_x+25*nspecial_spr_dir, nspecial_y);
	}
	if (blackhole_timer == 39){
		hole_explosion.image_xscale = 1;
		hole_explosion.image_yscale = 1;
	}
}

if (instance_exists(uspecial_jean)){
	sword.hsp = 0;
	sword.vsp = 0;
	uspecial_jean.x = lerp(uspecial_jean.x, sword.x, 0.1);
	uspecial_jean.y = lerp(uspecial_jean.y, sword.y, 0.1);
	x = uspecial_jean.x;
	y = uspecial_jean.y;
	
	if (spr_dir == 1){
		var uspecial_dir = 0;
	}
	if (spr_dir == -1){
		var uspecial_dir = 180;
	}
	
	if (uspecial_2_start = false){
		uspecial_pos = point_direction(uspecial_jean.x, uspecial_jean.y, sword.x, sword.y);
		var _diff = angle_difference(uspecial_pos, uspecial_jean.proj_angle);
		uspecial_jean.proj_angle = _diff-uspecial_dir;
		uspecial_2_start = true;
	}

	if (place_meeting(uspecial_jean.x, uspecial_jean.y, sword)){
		sound_play(asset_get("mfx_place_marker"));
		spawn_hit_fx( uspecial_jean.x, uspecial_jean.y, 306);
		if (uspecial_hit){
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
		}
		else {
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 7);
		}
		window = 2;
		window_timer = 0;
		sword.shoulddie = true;
		instance_destroy(uspecial_jean);
	}
}

if (instance_exists(sword)){
	if (point_distance(x, y, sword.x, sword.y) >= 0 && point_distance(x, y, sword.x, sword.y) < 60 && sword.state != 2){
		sword_close = true;
	}
	else {
		sword_close = false;
		move_cooldown[AT_DSPECIAL] = 2;
	}
	if (sword.state == 1){
		with (oPlayer){
			if (jean_field && jean_field_off == false) {
				if (state == PS_HITSTUN && hitpause){
					take_damage(player, -1, -2);
				}
				orig_knock = orig_knock*1.5;
				jean_field_off = true;
			}
			if (!hitpause){
				jean_field_off = false;
			}
		}
	}
}

if (instance_exists(sword)){
	if (state == PS_PARRY_START && !right_down && !left_down && move_cooldown[AT_SPOTDODGE] == 0){
		state = PS_ATTACK_GROUND;
		attack = AT_SPOTDODGE;
	}
	if (state == PS_PARRY_START && !right_down && !left_down && move_cooldown[AT_SPOTDODGE] != 0){
		state = PS_IDLE;
	}
	move_cooldown[AT_NAIR] = 2;
	move_cooldown[AT_DATTACK] = 2;
	move_cooldown[AT_FSTRONG] = 2;
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 5);
	set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 6);
	set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 6);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 2);
	set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 2);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 2);
	set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 2);
	set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 2);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
}
else {
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 4);
	set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 1);
	set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 4);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 1);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 1);
	set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 1);
	set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
}

print(move_cooldown[AT_SPOTDODGE])

if (free){
	move_cooldown[AT_DSPECIAL] = 2;
}




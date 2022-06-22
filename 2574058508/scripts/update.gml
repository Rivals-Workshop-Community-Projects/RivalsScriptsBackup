user_event(14);

rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color));



max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;


// Cooldown on the NSpecial when you're out of blocks
if (block_ammo >= 3){
	move_cooldown[AT_NSPECIAL] = 2;
}

if (place_meeting(x, y, block1) || place_meeting(x, y, block2) || place_meeting(x, y, block3)){
	not_on_block = false;
}

if (!place_meeting(x, y, block1) && !place_meeting(x, y, block2) && !place_meeting(x, y, block3)){
	not_on_block = true;
}

//Makes so the timer ticks down faster on the blocks where you're either standing on them or they're
//close to the top blastzone (feel free to change the values of the 'state_timer += x' to change the timing)

if (instance_exists(block1)){
	if (((place_meeting(x, y, block1) && block1.y == y && !free) || block1.y < get_stage_data(SD_Y_POS) - 350)){
		if(block1.state_timer < 180){
			block1.state_timer += 3.5;
		}
	}
}

if (instance_exists(block2)){
	if (((place_meeting(x, y, block2) && block2.y == y && !free) || block2.y < get_stage_data(SD_Y_POS) - 350)){
		if(block2.state_timer < 180){
			block2.state_timer += 3.5;
		}
	}
}

if (instance_exists(block3)){
	if (((place_meeting(x, y, block3) && block3.y == y && !free) || block3.y < get_stage_data(SD_Y_POS) - 350)){
		if(block3.state_timer < 180){
			block3.state_timer += 3.5;
		}
	}
}


if (block_ammo_full >= 3){
	block_ammo_full = 2.9
}

if (block_ammo_full > 0 && block_ammo_full < 3.1 && block_despawn == true){
	if (!free && not_on_block == true){
		block_ammo_full -= .01;	//You can change the value to make it charge faster
	}
	
}


block_ammo = round(block_ammo_full);

//blocks hit yourself
if(hit_player_obj == self){
	set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 7);
	set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, .8);
} else {
	reset_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE);
	reset_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER);
}

//Moves the opponent to the center of the lighting hitbox bit by bit 
//(you can try changing the 0.3 values to make it faster/slower)
if (lighting_block1 == true){
	hit_player_obj.x = lerp(hit_player_obj.x, block1.x, 0.3);
	hit_player_obj.y = lerp(hit_player_obj.y, block1.y, 0.3);
}

if (lighting_block2 == true){
	hit_player_obj.x = lerp(hit_player_obj.x, block2.x, 0.3);
	hit_player_obj.y = lerp(hit_player_obj.y, block2.y, 0.3);
}

if (lighting_block3 == true){
	hit_player_obj.x = lerp(hit_player_obj.x, block3.x, 0.3);
	hit_player_obj.y = lerp(hit_player_obj.y, block3.y, 0.3);
}

if (lighting_butterfly == true){
	hit_player_obj.x = lerp(hit_player_obj.x, butterfly.x, 0.3);
	hit_player_obj.y = lerp(hit_player_obj.y, butterfly.y, 0.3);
}
if state == PS_JUMPSQUAT && state_timer == 3 {
    sound_play(asset_get("sfx_clairen_arc_bounce"), 0, noone, 1.5, 1.5)
}


if state == PS_DOUBLE_JUMP && state_timer == 1 {
    sound_play(asset_get("sfx_clairen_arc_bounce"), 0, noone, 1.5, 1.8)
}


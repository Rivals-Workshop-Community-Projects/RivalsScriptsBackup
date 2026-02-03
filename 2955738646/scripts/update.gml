//updating every frame

switch(state){
	case PS_WALK:
    if (voice_clips == true && (state_timer % 35 == 10)){
    	if (get_player_color(player) =! 8){ sound_play(sound_get("FootSound1"), false, noone, 0.5, 1); }
    	if (get_player_color(player) == 8){ sound_play(sound_get("EA_footsound"), false, noone, 0.5, 1); }
    }
	break;
	
	case PS_IDLE:
	break;
	
	case PS_HITSTUN:
	if (SuperMecha == false && random_mecha == 1 && voice_clips == true && move_cooldown[AT_EXTRA_3] == 0){
	//sound_play(sound_get("Hurt_Mecha_IsThatAll"));
	random_mecha = 10;
	random_hurt_sound = random_func(1, 13, true);
	move_cooldown[AT_EXTRA_3] = 200;
	}
	if (state_timer < 3 && shield_pressed && SuperMecha == true){
	state = PS_ATTACK_GROUND; attack = AT_EXTRA_1;
	hitpause = false;
	//state_timer = 0;
	window = 1;
	window_timer = 0;
	var dodge_id2 = instance_create(x+1 * spr_dir, y-1, "obj_article1");
    dodge_id2.state = 1;
    dodge_id2.state_timer = 0;
    if (get_player_color(player) != 8) { sound_play(sound_get("instanttransmission")); }
	if (get_player_color(player) == 8) { sound_play(sound_get("EA_instanttransmission")); }
	}
	if (SuperMecha == true){ take_damage( player, -1, -1 ); }
	
	break;
}
if (state != PS_HITSTUN && voice_clips == true && random_mecha == 10){
	switch (random_hurt_sound){
		case 0:
		sound_play(sound_get("Hurt_Mecha_Enough"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 1:
		sound_play(sound_get("Hurt_Mecha_IsThatAll"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 2:
		sound_play(sound_get("Hurt_Mecha_NotBad"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 3:
		sound_play(sound_get("Hurt_Mecha_ShowYouFear"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 4:
		sound_play(sound_get("Hurt_Mecha_ThatTickled"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 5:
		sound_play(sound_get("Hurt_Mecha_Ugh"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 6:
		sound_play(sound_get("Hurt_Mecha_UghTrash"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 7:
		sound_play(sound_get("Hurt_Mecha_UghWhat"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 8:
		sound_play(sound_get("Hurt_Mecha_Whaaat"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 9:
		sound_play(sound_get("Hurt_Mecha_Whaat"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 10:
		sound_play(sound_get("Hurt_Mecha_What"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 11:
		sound_play(sound_get("Hurt_Mecha_YoullNeverDefeatMe"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
		
		case 12:
		sound_play(sound_get("Hurt_Mecha_Enough"));
		random_mecha = 0;
		random_hurt_sound = noone;
		break;
	}
}

//Hovering stuff
if (state == PS_DOUBLE_JUMP){ floating = -1; }
var air = (state == PS_FIRST_JUMP && state_timer > 10
|| state == PS_IDLE_AIR && state_timer > 5 || state == PS_TUMBLE && state_timer > 20);
	if (state != PS_DOUBLE_JUMP && vsp > 1 && floating == 0 && SuperMecha == true){
if (air && (jump_down || up_down && can_tap_jump() || ((jump_pressed || tap_jump_pressed && can_tap_jump()) ) ) ){
	floating = 1;
	move_cooldown[AT_DTHROW] = 10;
	}
}
if (floating == 1){
	grav = 0.1;
	vsp = 0.5;
	move_cooldown[AT_DTHROW] = 9;
	var fly_dist = point_distance(0,0,hsp,vsp);
	var fly_dir = point_direction(0,0,hsp,vsp);
	//if (fly_dist > 0.3) { vsp = lengthdir_y(0.3, fly_dir); }
	if !(jump_down || up_down){ floating = -1; }
	if (down_pressed){ floating = -1; }
	if !(air){ floating = -1; }
	if (move_cooldown[AT_UTHROW] >= 89){ floating = -1; air_time = 0; }
	if (move_cooldown[AT_UTHROW] > 1 && move_cooldown[AT_UTHROW] < 10){ move_cooldown[AT_UTHROW] = 5; }
	if (state == PS_DOUBLE_JUMP){ floating = -1; }
}
if (floating == -1){
	if (move_cooldown[AT_DTHROW] <= 1){ floating = 0; }
	if (free == false){ floating = 0; }
}


/*
if (floating = 1){ //He's floating
if (state == PS_TUMBLE){ state = PS_IDLE_AIR; }
floatTimer += 1;
air_accel = .6;
air_friction = .01;
	if (fly_dist > max_speed) {hsp = lengthdir_x(max_speed, fly_dir);}
	if(gravSet != -1){grav = gravSet;}
	if(vspSet != -1){vsp = vspSet;}
	if(hspSet != -1){hsp = hspSet * spr_dir;}
	if(spr_dir == -1 && right_down && hsp > 0 * spr_dir){spr_dir = 1}
	if(spr_dir == 1 && left_down && hsp < 0 * spr_dir){spr_dir = -1}
	if(!((jump_down || up_down) && (state == PS_ATTACK_AIR || air))){
		floating = -1;
		//has_walljump = true;
		state_timer = 1;
		//sound_stop(sound_get("ray_helico_loop"));
		//sound_stop(hoversound);
	}
	if(floatTimer > 0){
		floatTimer--;
	}else{
		floating = -1;
		state_timer = 1;
		//has_walljump = true;
	}
}
*/

if (state == PS_AIR_DODGE){
	if (SuperMecha == true){
		move_cooldown[AT_EXTRA_1] = 1;
	if (state_timer < 2){ hsp = 0; vsp = 0; }
	if (state_timer >= 2 && state_timer < 15){
		if (joy_pad_idle == false){
		hsp = lengthdir_x(15, joy_dir); vsp = lengthdir_y(25, joy_dir); }
		}
	}
	if (state_timer > 1 && state_timer < 12 && move_cooldown[AT_EXTRA_1] == 0 && SuperMecha == false){
	var afterimage = spawn_hit_fx(x, y, airdodge_afterimage);
	afterimage.depth = 5;
	//random_mecha = random_func(0, 3, true);
	}
	if (state_timer == 1 && move_cooldown[AT_EXTRA_1] == 0){
		//sound_play(sound_get("airdodge"), false, noone, 0.5, 1);
	}
	
}

if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
	if (SuperMecha == false){
	roll_forward_max = 9; //back to original
	roll_backward_max = 9; //roll speeds
	if (state_timer < 14 && move_cooldown[AT_EXTRA_1] == 0){
	var afterimage = spawn_hit_fx(x, y, roll_afterimage);
	afterimage.depth = 5;
	//random_mecha = random_func(0, 3, true);
	}
	if (state_timer == 1 && move_cooldown[AT_EXTRA_1] == 0){
		//sound_play(sound_get("airdodge"), false, noone, 0.5, 1);
		}
	}
	if (SuperMecha == true){
	roll_forward_max = 14; 
	roll_backward_max = 14;
	}
}

if (move_cooldown[AT_EXTRA_1] > 1 && move_cooldown[AT_EXTRA_1] < 6){
	var ai_image = spawn_hit_fx(x, y-1, Afterimage_particle);
	has_airdodge = true;
}
if (move_cooldown[AT_EXTRA_1] == 2){
	if (get_player_color(player) != 8) { sound_play(sound_get("regain_afterimage")); }
	if (get_player_color(player) == 8) { sound_play(sound_get("EA_regain_afterimage")); }
}

if (prev_attack > 0 && prev_state == PS_LANDING_LAG){
	prev_attack = 0;
}

//up throw is never used except for checking it's cooldown
//for air dashing when Super Mecha is active
if (free
	&& left_hard_pressed
	&& can_fast_fall == true
	&& check_fast_fall == false
	&& air_time > 22
	&& move_cooldown[AT_UTHROW] == 0
	&& state != PS_DOUBLE_JUMP
	&& state != PS_AIR_DODGE
	&& state != PS_HITSTUN
	&& state != PS_HITSTUN_LAND
	&& hitpause == false
	&& SuperMecha == true){
	spawn_hit_fx(x, y, Shine);
	hsp = -10;
	vsp = -1;
	move_cooldown[AT_UTHROW] = 90;
}
if (free
	&& right_hard_pressed
	&& can_fast_fall == true
	&& check_fast_fall == false
	&& air_time > 22
	&& move_cooldown[AT_UTHROW] == 0
	&& state != PS_DOUBLE_JUMP
	&& state != PS_AIR_DODGE
	&& state != PS_HITSTUN
	&& state != PS_HITSTUN_LAND
	&& hitpause == false
	&& SuperMecha == true){
	spawn_hit_fx(x, y, Shine);
	hsp = 10;
	vsp = -1;
	move_cooldown[AT_UTHROW] = 90;
}
if (free
	&& up_hard_pressed
	&& can_fast_fall == true
	&& air_time > 23
	&& move_cooldown[AT_UTHROW] == 0
	&& state != PS_DOUBLE_JUMP
	&& state != PS_AIR_DODGE
	&& state != PS_HITSTUN
	&& state != PS_HITSTUN_LAND
	&& hitpause == false
	&& SuperMecha == true){
	spawn_hit_fx(x, y, Shine);
	//hsp = 0;
	vsp = -11;
	move_cooldown[AT_UTHROW] = 90;
}

//if (state == PS_DOUBLE_JUMP && state_timer < 2){ air_time = 0; }

if (free == true){ air_time++; }
if (free == false){ air_time = 0; }


if (move_cooldown[AT_UTHROW] > 1 && free == true){
	can_fast_fall = false;
	fast_falling = true;
}
if (fast_falling == true && move_cooldown[AT_UTHROW] < 1){
	move_cooldown[AT_UTHROW] = 95;
}
if (move_cooldown[AT_UTHROW] <= 1 && can_fast_fall == false){
	can_fast_fall = true;
}
if (move_cooldown[AT_UTHROW] > 2 && free == false){
	move_cooldown[AT_UTHROW] = 1;
}

if (move_cooldown[AT_EXTRA_1] > 0){
	//air_dodge_sound = sound_get("empty");
}
/* //Teleporting air dodge and roll
if (shield_pressed && instance_exists(teleportback) == false){
	teleportback = instance_create(x, y-1, "obj_article1");
	teleportback.state = 6;
	teleportback.state_timer = 0;
	teleportback.spr_dir = spr_dir;
}
if (state == PS_AIR_DODGE && state_timer == 13 && instance_exists(teleportback) == true){
	prevous_x = x;
	prevous_y = y;
	prevous_spr = spr_dir;
}
if (state == PS_AIR_DODGE && shield_down && state_timer == 14 && instance_exists(teleportback) == true){
	teleportback.teleporting_amount -= 1;
	x = teleportback.x;
	y = teleportback.y;
	teleportback.x = prevous_x;
	teleportback.y = prevous_y;
	teleportback.spr_dir = prevous_spr;
	if (has_airdodge == false && teleportback.teleporting_amount >= 0){ has_airdodge = true; }
}
*/

if (voice_clips == true){
if (state == PS_DASH_START && (state_timer == 1)){
	sound_play((dashstart), false, noone, 0.1, 1);
}
if (state == PS_DASH && dashing == false && (state_timer <= 9)){
	dashing = true;
	sound_play((dashsound), true, noone, 0.1, 1); //loops
	}
}

switch(dashing){
	case true:
	if (hsp == 0 ||
	joy_pad_idle == true ||
	attack_pressed ||
	special_pressed ||
	(jump_pressed ||
	(tap_jump_pressed && can_tap_jump())) ){ 
	dashing = false;
	}
	break;
	
	case false:
	sound_stop(dashstart); sound_stop(dashsound);
	if (state_timer <= 2 && free == true){ sound_stop(dashsound); sound_stop(dashstart); }
	if ((state == PS_DASH_TURN || state == PS_DASH_STOP) &&
	state_timer == 1 && voice_clips == true){ sound_play((dashed), false, noone, 0.1, 1); }
	break;
}

/* Old air dodge vanishing
if (state == PS_AIR_DODGE && state_timer > 2 && state_timer < 16 ||
state == PS_ROLL_BACKWARD && state_timer > 2 && state_timer < 16 ||
state == PS_ROLL_FORWARD && state_timer > 2 && state_timer < 16 ||
state == PS_WAVELAND && draw_indicator == false && state_timer < 6){
	//draw_indicator = false;
	
} else { /*visible = true; }
*/

if (state == PS_RESPAWN && state_timer == 40){
	emerald_platform = instance_create(x-1 * spr_dir, y+1, "obj_article1");
	emerald_platform.state = 2;
	emerald_platform.state_timer = -1;
	move_cooldown[AT_EXTRA_1] = 1;
}
if (state == PS_SPAWN){
	if (get_player_color(player) == 8){//EA / Gameboy
		voice_clips = false;
	}
	if (state_timer == 1){
	respawn_id = instance_create(x+2 * spr_dir, y-90, "obj_article1");
	respawn_id.player_id = id;
	respawn_id.state = 4;
	respawn_id.state_timer = 0;
	respawn_id.free = true;
	respawn_id.hit_wall = false;
	respawn_id.ignores_walls = true;
	respawn_id.can_be_grounded = false;
	}
}


//if ((free == false || state == PS_WALL_JUMP) && move_cooldown[AT_FSPECIAL] > 1){ move_cooldown[AT_FSPECIAL] -= 15; }
//if ((free == false || state == PS_WALL_JUMP) && move_cooldown[AT_FSPECIAL_2] > 1){ move_cooldown[AT_FSPECIAL_2] -= 15; }
//if ((free == false || state == PS_WALL_JUMP) && move_cooldown[AT_USPECIAL] > 2){ move_cooldown[AT_USPECIAL] = 1; }

/*
if (move_cooldown[AT_FSPECIAL] >= 18 && move_cooldown[AT_FSPECIAL] <= 28){ fspecial_flash_timer = 25; }
if (move_cooldown[AT_FSPECIAL] > 0){
	move_cooldown[AT_FSPECIAL_2] = move_cooldown[AT_FSPECIAL];
}
if (fspecial_flash_timer > 0){ fspecial_flash_timer--; }
if (fspecial_flash_timer == 1){ white_flash_timer = 4; }
*/


/*
if ((has_hit_id != noone && has_hit_id.state != PS_HITSTUN && marked_id == false)
|| has_hit_id != noone && has_hit_id.state == PS_DEAD
|| has_hit_id != noone && has_hit_id.state == PS_RESPAWN) { has_hit_id = noone; }
if (previous_id != noone){
if (previous_id.state == PS_DEAD || previous_id.state == PS_RESPAWN){
	if (free == true || attack == AT_EXTRA_2){ spawn_hit_fx(x, y-30, 204); vsp = -3; attack = AT_FSPECIAL; window = 2; previous_id = noone; }
	if (free == false){ spawn_hit_fx(x, y-30, 204); previous_id = noone; }
	}
}
*/

if (state == PS_PRATFALL && has_walljump){ can_wall_jump = true; }
if (state == PS_PRATLAND && SuperMecha == true){ invincible = true; }

if !(state_cat == SC_GROUND_COMMITTED || state_cat == SC_GROUND_NEUTRAL){
	air_special = true;
} else {
	air_special = false;
	cling_once = 0;
	if (move_cooldown[AT_USPECIAL] > 5){ move_cooldown[AT_USPECIAL] = 5; }
	if (move_cooldown[AT_FSPECIAL] > 5){ move_cooldown[AT_FSPECIAL] = 5; }
	if (move_cooldown[AT_FSPECIAL_2] > 5){ move_cooldown[AT_FSPECIAL_2] -= 5; }
	if (move_cooldown[AT_DSPECIAL] > 5){ move_cooldown[AT_DSPECIAL] = 5; }	
}
if (move_cooldown[AT_DSPECIAL] < 5){ walljump_hsp = 7; walljump_vsp = 9; }

if (state != PS_WALL_JUMP){
	if (cling_once == 2){ has_walljump = true; cling_once = 3; }
}

if (state == PS_WALL_JUMP){
	if (move_cooldown[AT_USPECIAL] > 5){ move_cooldown[AT_USPECIAL] = 6; }
	//if (move_cooldown[AT_FSPECIAL] > 5){ move_cooldown[AT_FSPECIAL_2] = 55; }	
	//if (move_cooldown[AT_FSPECIAL_2] > 5){ move_cooldown[AT_FSPECIAL_2] = 55; }	
	//if (move_cooldown[AT_DSPECIAL] > 5){ move_cooldown[AT_DSPECIAL] = 5; }	
}

if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
	if (state_timer == 0 && instance_exists(asset_get("camera_obj")) && move_cooldown[AT_EXTRA_1] == 0){
    dodge_id = instance_create(x+1 * spr_dir, y-9000, "obj_article1");
    dodge_id.state = 0;
    dodge_id.state_timer = 0;
	}
}

if (SuperMecha == true){
if (move_cooldown[AT_EXTRA_1] > 0){ move_cooldown[AT_EXTRA_1] = 0; }
if (state == PS_AIR_DODGE){
	if (state_timer < 18){ draw_indicator = 0; }
	if (state_timer == 1){ spawn_hit_fx( x-1 * spr_dir, y-1, airdodge_away); }
}
if ((state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)){
	if (state_timer > 6 && state_timer < 18){ draw_indicator = 0; }
	if (state_timer == 1){ spawn_hit_fx( x-1 * spr_dir, y-1, roll_away); }
}

//Little safety net so players don't fling themselves
if (x-525 > get_instance_x(asset_get("camera_obj")) ){ hsp -= 5; } //Right
if (x+525 < get_instance_x(asset_get("camera_obj")) ){ hsp += 5; } //Left
if (y-415 > get_instance_y(asset_get("camera_obj")) ){ vsp -= 10; } //Below
if (y+415 < get_instance_y(asset_get("camera_obj")) ){ vsp += 2; } //Above

}

if (timestop == true){
	if (timestop_amount < 1){ timestop = false; timestop_amount = 20; timestop_time = 0; }
	if (timestop_time < 208 && instance_exists(timestop_BG) && timestop_BG.state_timer > 22 && ((get_gameplay_time() mod 3) == 0)){ timestop_time += 1; }
	if (timestop_time >= 191){ timestop = false; timestop_amount = 20; timestop_time = 0; }
	soft_armor = 999;
with (asset_get("oPlayer")) {
        if (player != other.player && other.invincible == false) {
        	hitstop = 5;
        	hitpause = true;
        	if (hit_player_obj > 0){
        		if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
        		}
        	hit_player_obj = noone;
        	}
        }
    }
}

if (timestop == false){
	//if (visible == false && state_timer > 1){ visible = true; }
	with (asset_get("oPlayer")) {
		if (player != other.player) {
			prev_damage = (get_player_damage( player ));
			//soft_armor = 0;
		}
	}
}

if (nspecial_time < 37 && !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	if (move_cooldown[AT_NSPECIAL] == 0){
		if ((get_gameplay_time() mod 10) == 0){
		nspecial_time += 0.1;
		}
	}
	if (move_cooldown[AT_NSPECIAL] > 0){
		nspecial_time += 0.1;
		move_cooldown[AT_NSPECIAL] = 3;
		if (gun_heat_sound < 0){ gun_heat_sound = 0; }
	}
	//Always go back up
	nspecial_time += 0.1;
	if (gun_heat_sound > 0){ gun_heat_sound -= 1; }
	if (gun_heat_sound < 0){ gun_heat_sound = 0; }
}
if (nspecial_time > 37){ nspecial_time = 37; } //Fail safe

if (move_cooldown[AT_NSPECIAL] > 0 && nspecial_time <= 0){
	//spawn_hit_fx(x+10 * spr_dir, y-34, 144);
}
if (move_cooldown[AT_NSPECIAL] > 0){
		move_cooldown[AT_FAIR] = 3;
		if (nspecial_time <= 10){
			if ((get_gameplay_time() mod 2) == 0){
	var random_pos1 = random_func(0, 30, true);
	var random_pos2 = random_func_2(0, 40, true);
	var smoke_particle = spawn_hit_fx(x-10 + random_pos1, y-35 - random_pos2, 144);
	force_depth = true;
	depth = depth-1;
		}
	}
		if (nspecial_time > 10 && nspecial_time < 20){
			if ((get_gameplay_time() mod 7) == 0){
	var random_pos1 = random_func(0, 20, true);
	var random_pos2 = random_func_2(0, 30, true);
	var smoke_particle = spawn_hit_fx(x-10 + random_pos1, y-35 - random_pos2, 144);
	force_depth = true;
	depth = depth-1;
		}
	}
		if (nspecial_time > 20 && nspecial_time < 40){
			if ((get_gameplay_time() mod 15) == 0){
	var random_pos1 = random_func(0, 10, true);
	var random_pos2 = random_func_2(0, 20, true);
	var smoke_particle = spawn_hit_fx(x-10 + random_pos1, y-35 - random_pos2, 144);
	force_depth = true;
	depth = depth-1;
		}
	}
}

//if (cooldowntime == 19){ vanishing = instance_create(x+1 * spr_dir, y-5, "obj_article1"); vanishing.state = 1; 
//dodgesound = sound_play(sound_get("instanttransmission")); can_jump = true; }

if ((hsp > 1 || hsp < -1) && crouch_dash == 0){ crouch_dash = 1; }
if (state == PS_CROUCH){
	hud_offset -= 7;
if (crouch_dash == 1){
	hsp = hsp;
    set_attack(AT_EXTRA_3);
    window_timer = 0;
	}
}

if (attack == AT_EXTRA_3 && state == PS_ATTACK_GROUND){
	if (window_timer == 4){ spr_dir = -1 * spr_dir; }
	if (hsp == 0){
	crouch_dash = 0;
	}
}
if (joy_pad_idle == true && crouch_dash == 2 ||
joy_pad_idle == true && state == PS_IDLE ||
joy_pad_idle == true && state == PS_IDLE_AIR ||
 ( (hsp > -1 && spr_dir == -1 ||
 hsp < 1 && spr_dir == 1))){
	crouch_dash = 0;
}

//if (SuperMecha == false){
with(asset_get("oPlayer")) {
	//Move back all other frames
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha,
	];
//}

}
/*
if (SuperMecha == true){
with(asset_get("oPlayer")) {
	//Move back all other frames
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		c_yellow,
		image_alpha,
	];
	}
}
*/

if ((state == PS_IDLE_AIR || state == PS_DOUBLE_JUMP || state == PS_FIRST_JUMP)
&& vsp >= 17 && fassfall_check == false && fassfall == 0){ fassfall = 20; fassfall_check = true; }
if (fassfall > 0 && fassfall_check == true){
	fassfall--;
	if (free == false){ fassfall = 0; }
}
//if (fassfall == 0){ fassfall_check = false; sound_stop(fallsound) }

//if (voice_clips == true && fassfall == 19 && fassfall_check == true){ sound_play(fallsound); }

if (TauntElec > 0){ TauntElec--; }
if (TauntSuper > 0){ TauntSuper--; }

if (instance_exists(lightspeed) && lightspeed > 0){
	if (attack == AT_DSPECIAL_2){
	lightspeed.x = x;
	lightspeed.y = y-30;
	lightspeed.vsp = 0;
	}
}

if (voice_clips == true){
	landing_lag_sound = asset_get("sfx_land_heavy");
	if ((state == PS_AIR_DODGE ||
state == PS_ROLL_BACKWARD ||
state == PS_ROLL_FORWARD) &&
state_timer == 1){
	sound_play(sound_get("dodging"));
	}
}
if (state == PS_WAVELAND){
	sound_stop(sound_get("dodging"));
	if (SuperMecha == true){
		white_flash_timer = 10;
	}
}

if (fspecial_canceltime > 0){ fspecial_canceltime--; }
if (uspecial_scantime > 0){ uspecial_scantime -= 0.05; }

if (TauntElec > 1){
	if ( !(visible == false) || !(SuperMecha == true && (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) ) )
	|| !(SuperMecha == true && attack == AT_USPECIAL_GROUND) {
	//if ((get_gameplay_time() mod 1) == 0){
		var random_elec = random_func_2(1, 5, true);
		var random_hori = random_func(0, 40, true);
		var random_verti = random_func_2(0, 55, true);
		var random_angle = random_func(0, 4, true);
		if (random_angle == 0){ random_angle = 0; }
		if (random_angle == 1){ random_angle = 270; }
		if (random_angle == 2){ random_angle = 180; }
		if (random_angle == 3){ random_angle = 90; }
		
		if (random_elec == 1){ var elec1 = spawn_hit_fx(x-25 + random_hori, y-80 + random_verti, Electric_1); elec1.force_depth = true; elec1.depth = -5; elec1.draw_angle = random_angle; }
		if (random_elec == 2){ var elec2 = spawn_hit_fx(x-25 + random_hori, y-80 + random_verti, Electric_2); elec2.force_depth = true; elec2.depth = -5; elec2.draw_angle = random_angle; }
		if (random_elec == 3){ var elec3 = spawn_hit_fx(x-25 + random_hori, y-80 + random_verti, Electric_3); elec3.force_depth = true; elec3.depth = -5; elec3.draw_angle = random_angle; }
		if (random_elec == 4){ var elec4 = spawn_hit_fx(x-25 + random_hori, y-80 + random_verti, Electric_4); elec4.force_depth = true; elec4.depth = -5; elec4.draw_angle = random_angle; }
		if (random_elec == 5){ var elec5 = spawn_hit_fx(x-25 + random_hori, y-80 + random_verti, Electric_5); elec5.force_depth = true; elec5.depth = -5; elec5.draw_angle = random_angle; }
	}
}

if (move_cooldown[AT_TAUNT_2] > 1 && move_cooldown[AT_TAUNT_2] < 10){
	EmeraldAmount = 0;
	white_flash_timer += 5; SuperMecha = false;
	initial_dash_speed = 9;
	initial_dash_time = 10;
	dash_speed = 10;
	dash_turn_time = 16;
	short_hop_speed = 6;
	leave_ground_max = 11;
	djump_speed = 10;
	fast_fall = 16;
	air_accel = .25;
	wave_land_adj = 1.0;
}
if (move_cooldown[AT_TAUNT_2] == 5){ sound_play(sound_get("power_down")); }
if (move_cooldown[AT_USPECIAL_2] > 0){ move_cooldown[AT_USPECIAL] = move_cooldown[AT_USPECIAL_2]; }
if (move_cooldown[AT_USPECIAL_2] < 3){
	with (asset_get("oPlayer")){
	        if (player != other.player){
	        	targeted = false;
	        	maintarget = false;
		}
	}
}

if (EmeraldAmount > 7){ EmeraldAmount = 7; } //Just in case

if (SuperMecha == true){
suppress_stage_music(0, 1);
}

//Intro stuff
if (introTimer2 < 1) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
if (state == PS_SPAWN){
if (get_player_color(player) == 0){ //Default
	if (state_timer == 19){ sound_play(sound_get("wavelanding")); } 
	if (state_timer == 42){ sound_play(sound_get("FootSound1")); }
	}
if (get_player_color(player) == 1){ //Teal
	if (introTimer > 10 && introTimer < 15){
	var random_x = random_func(0, 40, true);
	var random_y = random_func_2(0, 80, true);
	spawn_hit_fx(x-30 + random_x, y-70 + random_y, 280);
	if ((get_gameplay_time() mod 4) == 0){ sound_play(asset_get("sfx_waterwarp_start")); }
		}
	if (introTimer >= 15 && introTimer < 21){
	spawn_hit_fx(x-30 + random_x, y-70 + random_y, 281 );
	if ((get_gameplay_time() mod 5) == 0){ sound_play(asset_get("sfx_waterwarp")); }
		}
	if (introTimer == 18){
	spawn_hit_fx(x, y-40, 195);
	sound_play(asset_get("sfx_orca_absorb"));
		}
	if (introTimer == 21){ //Random sprinkle
	spawn_hit_fx(x-1, y-40, 161);
	spawn_hit_fx(x-6, y-12, 284);
	sound_play(asset_get("sfx_watergun_splash"));
	sound_play(asset_get("sfx_waterhit_heavy2"));
	}
}
if (get_player_color(player) == 2){ //Red
	if (state_timer == 25){ spawn_hit_fx(x , y-30, 259); sound_play(asset_get("mfx_star")); }
	if (state_timer == 30){ spawn_hit_fx(x , y-16, 203); sound_play(asset_get("sfx_zetter_fireball_fire")); }
	if (state_timer == 50){ spawn_hit_fx(x , y-16, 202); sound_play(sound_get("S3&K_boost")); }
	if (state_timer == 60){ sound_play(sound_get("S3&K_beep2")); }
	if (state_timer >= 50 && state_timer < 55){ spawn_hit_fx(x+10 * spr_dir, y-24, 100); }
	if (state_timer > 19 && state_timer < 35 && (get_gameplay_time() mod 2) == 0){
		var random_x = random_func(0, 60, true);
		spawn_hit_fx(x-30 + random_x , y+1, 100);
		sound_play(asset_get("sfx_boss_fireball_land"));
		}
	}
	
if (get_player_color(player) == 3){ //Green
	if (state_timer > 0 && state_timer < 45 && (get_gameplay_time() mod 3) == 0){
		var random_x1 = random_func(0, 60, true);
		var random_x2 = random_func_2(0, 70, true);
		spawn_hit_fx(x-30 + random_x1, y-1, 18);
		spawn_hit_fx(x-40 + random_x2, y-9, 16);
		var right = spawn_hit_fx(x+9+random_x1, y-9, 70);
		var left = spawn_hit_fx(x-9-random_x1, y-9, 70);
		right.spr_dir = 1;
		left.spr_dir = -1;
		if (introTimer == 8){ sound_play(asset_get("sfx_plant_fat")); }
		if (introTimer == 12){ spawn_hit_fx(x-1, y-30, 159); }
	}
	if (state_timer > 1 && state_timer < 30 && (get_gameplay_time() mod 4) == 0){ sound_play(asset_get("sfx_leafy_hit1"), false, noone, 0.3, 1); }
	if (state_timer > 1 && state_timer < 40 && (get_gameplay_time() mod 5) == 0){ sound_play(asset_get("sfx_leafy_hit2"), false, noone, 0.3, 1); }
	if (state_timer > 1 && state_timer < 30 && (get_gameplay_time() mod 8) == 0){ sound_play(asset_get("sfx_may_root"), false, noone, 0.5, 1);  }
}

if (get_player_color(player) == 4){ //Black and white
	//if (state_timer == 10){ sound_play(asset_get("dspecial_dash"), false, noone, 0.8, 1); }
	//if (state_timer == 15){ sound_play(sound_get("dspecial_dash"), false, noone, 0.9, 1); }
	if (state_timer == 12){ sound_play(sound_get("dspecial_dash")); }
	if (state_timer > 27 && state_timer < 37){
		var skrting = spawn_hit_fx( ((x-190 * spr_dir) + (introTimer * 15) * spr_dir), y-54, Skrt);
		//skrt.spr_dir = spr_dir * -1;
		sound_play(sound_get("skrt"));
	}
}

if (get_player_color(player) == 5){ //Purple white
	if (state_timer == 19){ sound_play(sound_get("wavelanding")); } 
	if (state_timer < 37 && (get_gameplay_time() mod 6) == 0){
		var skrt = spawn_hit_fx( ((x-190 * spr_dir) + (introTimer * 11) * spr_dir), y-54, Skrt);
		skrt.spr_dir = spr_dir * -1;
		sound_play(sound_get("S3&K_beep1"));
	}
}

if (get_player_color(player) == 6){ //Purple Abyss
		if (state_timer == 15){
		spawn_hit_fx(x+4 * spr_dir, y-72, 68);
		spawn_hit_fx(x+4 * spr_dir, y-82, 66);
		spawn_hit_fx(x+4 * spr_dir, y-82, 67);
	}
	if (state_timer == 16){ sound_play(asset_get("sfx_abyss_portal_intro")); } 
	if (state_timer == 19){ sound_play(asset_get("sfx_abyss_portal_spawn")); } 
	if (state_timer == 42){ sound_play(sound_get("FootSound1")); }
}
	
if (get_player_color(player) == 7){ //Yellow
		if (introTimer > 0 && introTimer < 5 && (get_gameplay_time() mod 1) == 0){
	var random_x = random_func(0, 90, true);
	var shock = spawn_hit_fx(x-60 + random_x , y-1, 22);
	sound_play(asset_get("sfx_absa_cloud_crackle"));
		}
		if (introTimer >= 5 && introTimer < 10 && (get_gameplay_time() mod 3) == 0){
	var random_y = random_func(0, 60, true);
	var random_x = random_func_2(0, 60, true);
	var shock = spawn_hit_fx(x-40 + random_x , y-65 + random_y, 20);
	sound_play(asset_get("sfx_absa_jab1"));
		}
		if (introTimer >= 10 && introTimer < 15 && (get_gameplay_time() mod 4) == 0){
	var random_x = random_func(0, 60, true);
	var random_y = random_func_2(0, 60, true);
	var shock = spawn_hit_fx(x-40 + random_x , y-65 + random_y, 21);
	sound_play(asset_get("sfx_absa_jab2"));
		}
		if (introTimer == 16){
	spawn_hit_fx(x-5, y-45, 197);
	spawn_hit_fx(x-2, y-45, 157);
	sound_play(asset_get("sfx_absa_uair"));
		}
		if (introTimer > 15 && introTimer < 25){
	var random_x = random_func(0, 150, true);
	var random_y = random_func_2(0, 90, true);
	var shock = spawn_hit_fx(x-90 + random_x, y-100 + random_y, 22);
		}
	}
	
if (get_player_color(player) == 8){ //EA / Gameboy
	voice_button = false;
	if (introTimer > 5 && introTimer < 15){
		var random_spark_x = random_func(0, 90, true);
		var random_spark_y = random_func_2(0, 100, true);
		var shock = spawn_hit_fx(x-50 + random_spark_x, y-100 + random_spark_y, Shine);
		if ((get_gameplay_time() mod 2) == 0){ sound_play(sound_get("EA_wavedash")); }
		if ((get_gameplay_time() mod 6) == 0){ sound_play(sound_get("EA_dspecial_hit1"), false, noone, 0.7, 1);  }
		//if ((get_gameplay_time() mod 6) == 0){ sound_play(sound_get("EA_dstrong_swosh")); }
	}
	if (introTimer == 15){
		spawn_hit_fx(x-4 * spr_dir, y-78, 251);
		spawn_hit_fx(x+4 * spr_dir, y-80, 120);
	}
	if (state_timer == 36){
	sound_play(sound_get("EA_dattack_hit"));
	sound_play(sound_get("EA_dspecial_dive"));
	}
}
	
}

//Sound control for turning Super
var volume = get_local_setting(3);
var DoomsdayZoneStart = sound_get("DoomsdayZone_Start");
var DoomsdayZoneLoop = sound_get("DoomsdayZone_Loop");
if (attack == AT_TAUNT_2 && window == 1 && window_timer == 1
	&& (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) ){
	sound_play(DoomsdayZoneStart, false, noone, volume + 1);
}

if (move_cooldown[AT_TAUNT_2] == 2985){
	sound_play(DoomsdayZoneLoop, true, noone, volume + 1);
}

if (SuperMecha == false && white_flash_timer > 0 && move_cooldown[AT_TAUNT_2] > 1){ sound_stop(DoomsdayZoneLoop); }

//this increments introTimer every few frames, depending on the number entered
if (introTimer < 25) {
    draw_indicator = false;
} else {
    //draw_indicator = true;
} //this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.


/*
if (SuperMecha == true){
	if (chasedodge > 0){ chasedodge --; } else { chasedodge = 0; }
	if (state == PS_LANDING_LAG){ 
		white_flash_timer = 10;
		state = PS_WAVELAND;
	}
	if (state == PS_AIR_DODGE && state_timer > 4){
		state = PS_IDLE_AIR; clear_button_buffer( PC_SHIELD_PRESSED ); clear_button_buffer( PC_JUMP_PRESSED );
		if (has_hit == true){
		chasedodge = 100;
		}
	}
	if (state == PS_AIR_DODGE && state_timer < 4 && chasedodge > 0){ has_airdodge = false; }
	if ((state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer > 5){ state = PS_LAND; }
}
//if (SuperMecha == false){ air_dodge_speed = 7.5; roll_backward_max = 10; roll_forward_max = 10; }

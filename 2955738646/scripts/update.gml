//updating every frame

switch(state){
	case PS_WALK:
    if (voice_button == true && (state_timer % 35 == 10)){ sound_play(sound_get("FootSound1"), false, noone, 0.5, 1); }
	break;
	
	case PS_IDLE:
	break;
}
if (state == PS_AIR_DODGE && state_timer > 1 && state_timer < 12){
	var afterimage = spawn_hit_fx(x, y, airdodge_afterimage);
	afterimage.depth = 5;
}
if ((state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer < 14){
	var afterimage = spawn_hit_fx(x, y, roll_afterimage);
	afterimage.depth = 5;
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

if (voice_button == true){
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
	attack == AT_EXTRA_3 ||
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
	state_timer == 1 && voice_button == true){ sound_play((dashed), false, noone, 0.1, 1); }
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

if (state == PS_RESPAWN && state_timer == 120){
	platform_id = instance_create(x+1 * spr_dir, y+1000, "obj_article1");
	platform_id.state = 2;
	platform_id.state_timer = -1;
}
if (state == PS_SPAWN && state_timer == 1){
	respawn_id = instance_create(x+2 * spr_dir, y-90, "obj_article1");
	respawn_id.player_id = id;
	respawn_id.state = 4;
	respawn_id.state_timer = 0;
	respawn_id.free = true;
	respawn_id.hit_wall = false;
	respawn_id.ignores_walls = true;
	respawn_id.can_be_grounded = false;
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

if (state == PS_PRATFALL && has_walljump){
	can_wall_jump = true;
}

if !(state_cat == SC_GROUND_COMMITTED || state_cat == SC_GROUND_NEUTRAL){
	air_special = true;
} else {
	air_special = false;
	if (move_cooldown[AT_USPECIAL] > 5){ move_cooldown[AT_USPECIAL] = 5; }
	if (move_cooldown[AT_FSPECIAL_2] > 5){ move_cooldown[AT_FSPECIAL_2] = 5; }
	if (move_cooldown[AT_DSPECIAL] > 5){ move_cooldown[AT_DSPECIAL] = 5; }	
}

if (state == PS_WALL_JUMP){
	if (move_cooldown[AT_USPECIAL] > 5){ move_cooldown[AT_USPECIAL] = 5; }
	if (move_cooldown[AT_FSPECIAL_2] > 5){ move_cooldown[AT_FSPECIAL_2] = 5; }	
	if (move_cooldown[AT_DSPECIAL] > 5){ move_cooldown[AT_DSPECIAL] = 5; }	
}

if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
	if (state_timer == 0 && instance_exists(asset_get("camera_obj")) ){
    dodge_id = instance_create(x+1 * spr_dir, y-9000, "obj_article1");
    dodge_id.state = 0;
    dodge_id.state_timer = 0;
	}
}

if (timestop == true){
	if (timestop_amount < 1){ timestop = false; timestop_amount = 20; timestop_time = 207; }
	if (timestop_time > 0 && instance_exists(timestop_BG) && timestop_BG.state_timer > 22){ timestop_time -= 1 / 2; }
	if (timestop_time == 0){ timestop = false; timestop_amount = 20; timestop_time = 207; }
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
	if (move_cooldown[AT_NSPECIAL] = 0){
		if ((get_gameplay_time() mod 10) == 0){
		nspecial_time += 1;
	} else {
		if ((get_gameplay_time() mod 5) == 0){
		nspecial_time += 1;
			}
		}
	}
}

//if (cooldowntime == 19){ vanishing = instance_create(x+1 * spr_dir, y-5, "obj_article1"); vanishing.state = 1; 
//dodgesound = sound_play(sound_get("instanttransmission")); can_jump = true; }
//if (foresight > 1 && invincible == true){ foresight--; }
//if (foresight <= 1 && invincible == true){ invincible = false; }

if ((hsp > 1 || hsp < -1) && crouch_dash == 0){ crouch_dash = 1; }
if (state == PS_CROUCH){
	hud_offset -= 7;
if (crouch_dash == 1){
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

//if (SuperMech == false){
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
if (SuperMech == true){
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
if (fassfall == 0){ fassfall_check = false; sound_stop(fallsound) }

if (voice_button == true && fassfall == 19 && fassfall_check == true){ sound_play(fallsound); }

if (TauntElec > 0){ TauntElec--; }
if (TauntSuper > 0){ TauntSuper--; }

if (instance_exists(lightspeed) && lightspeed > 0){
	if (attack == AT_DSPECIAL_2){
	lightspeed.x = x;
	lightspeed.y = y-30;
	lightspeed.vsp = 0;
	}
}

if (voice_button == true &&
((state == PS_AIR_DODGE ||
state == PS_ROLL_BACKWARD ||
state == PS_ROLL_FORWARD) &&
state_timer == 1)){
	sound_play(sound_get("dodging"));
}
if (state == PS_WAVELAND){ sound_stop(sound_get("dodging")); }

if (fspecial_canceltime > 0){ fspecial_canceltime--; }
if (uspecial_scantime > 0){ uspecial_scantime -= 0.05; }

if (move_cooldown[AT_TAUNT_2] > 1 && move_cooldown[AT_TAUNT_2] < 20){ white_flash_timer += 3; SuperMech = false; }
if (move_cooldown[AT_USPECIAL_2] > 0){ move_cooldown[AT_USPECIAL] = move_cooldown[AT_USPECIAL_2]; }
if (move_cooldown[AT_USPECIAL_2] < 3){
	with (asset_get("oPlayer")){
	        if (player != other.player){
	        	targeted = false;
	        	maintarget = false;
	        }
		}
}

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
//if (SuperMech == false){ air_dodge_speed = 7.5; roll_backward_max = 10; roll_forward_max = 10; }
*/

//update

if (state == PS_DASH_START && (state_timer == 1)){
	sound_play((dashstart), false, noone, 0.1, 1);
} 
if (state == PS_DASH && dashing == false && (state_timer <= 9)){
	dashing = true;
	sound_play((dashsound), true, noone, 0.1, 1); //loops
}
if (dashing == true){
	//if ((state_timer mod 50) == 1){
	if (joy_pad_idle == true ||
	state == PS_DASH_TURN ||
	state == PS_FIRST_JUMP ||
	state == PS_IDLE_AIR ||
	state == PS_ATTACK_GROUND ||
	state = PS_ATTACK_AIR ||
	state == PS_HITSTUN){
	//sound_stop(dashsound);
	dashing = false;
	}
}
if (dashing == false){
	sound_stop(dashstart); sound_stop(dashsound);
	if (state_timer <= 2 && free == true){ sound_stop(dashsound); sound_stop(dashstart); }
	if ((state == PS_DASH_TURN || state == PS_DASH_STOP) && state_timer == 1){ sound_play((dashed), false, noone, 0.1, 1); }
}

if (state == PS_CROUCH){ hud_offset = -20; }

if (state == PS_AIR_DODGE && state_timer > 2 && state_timer < 16 ||
state == PS_ROLL_BACKWARD && state_timer > 2 && state_timer < 16 ||
state == PS_ROLL_FORWARD && state_timer > 2 && state_timer < 16 ||
state == PS_WAVELAND && state_timer < 4){
	//visible = false;
	draw_indicator = false;
	
} else { /*visible = true;*/ }

if (state == PS_RESPAWN && state_timer == 120){
	platform_id = instance_create(x+1 * spr_dir, y-5, "obj_article1");
	platform_id.state = 2;
}

if (free == false && move_cooldown[AT_FSPECIAL] > 2){ move_cooldown[AT_FSPECIAL] = 1; }

/*
if (ChaosEmerald >= 1){
	ChaosEmerald -= 1;
	emerald_id = instance_create(x+20 * spr_dir, y-1, "obj_article1");
	emerald_id.player_id = id;
	emerald_id.state = 3;
	emerald_id.state_timer = 0;
	emerald_id.vsp = -9;
	emerald_id.hsp = -5;
	emerald_id.free = true;
	//EmeraldChance = false;
	emerald_id.hit_wall = false;
	emerald_id.ignores_walls = false;
	emerald_id.can_be_grounded = true;
	if (SuperMech == true){
	SuperMech = false;	
	}
}
*/

if (state == PS_SPAWN && state_timer == 2){
	respawn_id = instance_create(x+2 * spr_dir, y-10, "obj_article1");
	respawn_id.player_id = id;
	respawn_id.state = 4;
	respawn_id.state_timer = 0;
	//respawn_id.vsp = 0;
	//respawn_id.hsp = 0;
	respawn_id.free = true;
	respawn_id.hit_wall = false;
	respawn_id.ignores_walls = true;
	respawn_id.can_be_grounded = false;
}


if ((has_hit_id != noone && has_hit_id.state != PS_HITSTUN && marked_id == false)
|| has_hit_id != noone && has_hit_id.state == PS_DEAD
|| has_hit_id != noone && has_hit_id.state == PS_RESPAWN) { has_hit_id = noone; }
if (previous_id != noone){
if (previous_id.state == PS_DEAD || previous_id.state == PS_RESPAWN){
	if (free == true || attack == AT_EXTRA_2){ spawn_hit_fx(x, y-30, 204); vsp = -3; attack = AT_FSPECIAL; window = 2; previous_id = noone; }
	if (free == false){ spawn_hit_fx(x, y-30, 204); previous_id = noone; }
	}
}

if instance_number(oPlayer) == 2 {
if move_cooldown[AT_NSPECIAL_2] == 0 && hitstop{
with oPlayer if (activated_kill_effect) {
  if hit_player_obj == other {
  	
  	
  	with other {
  		
  			move_cooldown[AT_NSPECIAL_2] = 130
					var dspecial;
					dspecial[0] = "Mecha_NO_USE";
					dspecial[1] = "Mecha_heh";
					dspecial[2] = "Mecha_Peace";
				sound_play( sound_get(dspecial[random_func(0, 3, true)]));
  				}
			}
		}
	}
}


if(ChaosEmerald == 7){
//SuperMech = true;
	if(SoundPlayed == false){
	//sound_play(sound_get("ChaosEmerald"));
	//SoundPlayed = true;
	}
}
/*
}else{
SoundPlayed = false;
SuperMech = false;
}
*/

if (state == PS_PRATFALL && has_walljump){
	can_wall_jump = true;
}

if !(state_cat == SC_GROUND_COMMITTED || state_cat == SC_GROUND_NEUTRAL){
	air_special = true;
} else {
	air_special = false;
}
/*
if (state == PS_IDLE_AIR && state_timer > 8 || state == PS_FIRST_JUMP){
		if (telepunch == 1 || telepunch == 2){
		telepunch = 3;
		y = y-10;
	}
}
*/
if (state_cat == SC_GROUND_NEUTRAL){
		if (telepunch > 0){
		telepunch = 0;
		//vsp = -90;
	}
}

//if (state_cat == SC_GROUND_NEUTRAL && state_timer > 4 || state == PS_WALL_JUMP || state_cat == SC_GROUND_COMMITTED && state_timer > 4){
//if (state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_START){ y = y-20; }

if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
	//Dodging article that causes Foresight
	//if (state_timer < 5){ invincible = true; }
    if (state_timer == 0 && instance_exists(asset_get("camera_obj")) ){
    dodge_id = instance_create(x+1 * spr_dir, y-9000, "obj_article1");
    dodge_id.state = 0;
    dodge_id.state_timer = 0;
    }
    //if (state_timer > 10){
    //state = PS_LAND;
    //}
}
//It going on cooldown causes the Foresight and freezes enemies
cooldowntime = move_cooldown[AT_EXTRA_2];
if (move_cooldown[AT_EXTRA_2] > 1 && (cooldowntime mod 1) == 0){
with (asset_get("oPlayer")) {
        if (player != other.player) {
            if (hitstop == 0 or abs(vsp) > 1 or abs(hsp) > 1){
                old_vsp = vsp;
                old_hsp = hsp;
                vsp = 0;
                hsp = 0;
            }
            vsp = 0;
            hsp = 0;
            hitstop = 2;
            hitstop_full = 2;
            hitpause = false;
        }
    }
}
if (timestop == true && (state_timer mod 1) == 0){
with (asset_get("oPlayer")) {
        if (player != other.player) {
        	soft_armor = 100;
        	//old_vsp = vsp;
        	//old_hsp = hsp;
            //hsp = 0;
            //vsp = 0;
            //can_fast_fall = false;
            //can_move = false;
            if (hitstop == 0 or abs(vsp) > 1 or abs(hsp) > 1 or !(state == PS_RESPAWN || state == PS_DEAD)){
            //hitstop = 10;
            //hitstop_full = 0;
            //old_vsp = vsp;
            //old_hsp = hsp;
            //vsp = 0;
            //hsp = 0;
            }
        }
    }
}
if (timestop == true){
with (asset_get("oPlayer")) {
        if (player != other.player) {
        	soft_armor = 100;
        	super_armor = true;
        	//invincible = true;
        	hitstop = 1;
        	hitpause = true;
        	if (hit_player_obj > 0){
        		if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
        	state = prev_state;
        		}
        	//hitpause = false;
        	//hitstop = 0;
        	hit_player_obj = noone;
        	}
        	//old_vsp = vsp;
        	//old_hsp = hsp;
            //hsp = 0;
            //vsp = 0;
            //can_fast_fall = false;
            //can_move = false;
            //joy_pad_idle = true;
        }
    }
}
//if (timestop == true && timestop_amount > 0){ timestop_amount--; } else if (timestop == true && timestop_amount <= 10){
	//timestop = false; timestop_amount = 500;
//}
if (timestop == true){
	if (timestop_amount < 1){ timestop = false; timestop_amount = 20; timestop_time = 207; }
	if (timestop_time > 0 && instance_exists(timestop_BG) && timestop_BG.state_timer > 22){ timestop_time -= 1; }
	if (timestop_time == 0){ timestop = false; timestop_amount = 20; timestop_time = 207; }
}
	

if (timestop == false){
	if (visible == false && state_timer > 1){ visible = true; }
	with (asset_get("oPlayer")) {
		if (player != other.player) {
			prev_damage = (get_player_damage( player ));
		}
	}
}

if (move_cooldown[AT_NSPECIAL] > 0 && nspecial_time < 37){
	nspecial_time += 1 / 10;
	move_cooldown[AT_NSPECIAL] = 10;
}

if (cooldowntime == 19){ vanishing = instance_create(x+1 * spr_dir, y-5, "obj_article1"); vanishing.state = 1; 
dodgesound = sound_play(sound_get("instanttransmission")); attack = AT_EXTRA_1; window_timer = 0; can_jump = true; }
//if (cooldowntime > 1){ /*dodging_id = instance_create(x+1 * spr_dir, y-1, "obj_article1"); dodging_id.state = 1;*/ invincible = true; } //dodging.image_alpha = 1;  }
if (foresight > 1 && invincible == true){ foresight--; }
if (foresight <= 1 && invincible == true){ invincible = false; }

if (Bullets == 0){ hit_fx_create( sprite_get( "nspecial_gunhit" ),4); }
if (Bullets == 1){ hit_fx_create( sprite_get( "nspecial_gunhit" ),4); }
if (Bullets == 2){ hit_fx_create( sprite_get( "nspecial_gunhit2" ),4); }
if (Bullets == 3){ hit_fx_create( sprite_get( "nspecial_gunhit2" ),4); }

if ((hsp > 1 || hsp < -1) && crouch_dash == 0){ crouch_dash = 1; }
if (crouch_dash == 1 && state == PS_CROUCH){
    set_attack(AT_EXTRA_3);
    window_timer = 0;
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

if (EmeraldChance == true){
if ((get_gameplay_time() mod 2) == 0){
	//EmeraldSense = 1;
}
if ((get_gameplay_time() mod 4) == 0){
	//EmeraldSense = 0;
	}
}

if (EmeraldChance == true){
	if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
		//EmeraldChance = false;
	}
	if (has_hit == true && hitpause && state != PS_PARRY){
		/*
		EmeraldChance = false;
		landed_id = instance_create(x+190 * spr_dir, y-20, "obj_article1");
		landed_id.player_id = id;
		landed_id.state = 3;
		landed_id.state_timer = 0;
		landed_id.vsp = -5;
		landed_id.hsp = 1 * spr_dir;
		landed_id.free = true;
		landed_id.hit_wall = false;
		landed_id.ignores_walls = false;
		landed_id.can_be_grounded = true;
		*/
	}
}

//if (SuperMech == false){
//MOTION BLUR CODE
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

/*  https://youtu.be/KAHLwAxS7FI */
if (SuperMech == true){
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
	if (has_hit == true){ air_dodge_speed = 11; }
	if (has_hit == false){ air_dodge_speed = 9; }
	roll_backward_max = 13;
	roll_forward_max = 13;
}
if (SuperMech == false){ air_dodge_speed = 7.5; roll_backward_max = 10; roll_forward_max = 10; }
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

if ((state == PS_IDLE_AIR || state == PS_DOUBLE_JUMP || state == PS_FIRST_JUMP)
&& vsp >= 17 && fassfall_check == false && fassfall == 0){ fassfall = 20; fassfall_check = true; }
if (fassfall > 0 && fassfall_check == true){
	fassfall--;
	if (free == false){ fassfall = 0; }
}
if (fassfall == 0){ fassfall_check = false; sound_stop(fallsound) }

if (fassfall == 19 && fassfall_check == true){ sound_play(fallsound); }

if (IllCrushYou > 0){ IllCrushYou--; }



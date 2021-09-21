//Updating hitboxes

if (attack == AT_FSTRONG){
    if (hitbox_timer = 1){
	vsp = -1; hsp = 1 * spr_dir; sound_play(sound_get("whomp")); player_id.move_cooldown[AT_FSTRONG] = 30; }
	if (hitbox_timer = 7){ vsp = 0; }
    if (hitbox_timer > 15){ grav = 0.9; }
	if (hitbox_timer == 15){
	create_hitbox(AT_FSTRONG, 4, x+50 * spr_dir, y+70); grav = 0.9;
	create_hitbox(AT_FSTRONG, 5, x+50 * spr_dir, y+70); grav = 0.9;
	}
	if (hitbox_timer == 20) && free{ player_id.move_cooldown[AT_FSTRONG] = 40; } 
    if (hitbox_timer < 20){
	if (destroyed){ destroyed = false; }
	}
	if (hitbox_timer > 20){
	if (free){ image_index = 4;
	create_hitbox(AT_FSTRONG, 3, x+50 * spr_dir, y+80);
	} else if !(free){
	image_index = 5; destroyed = true; }
	}
	if (destroyed){
		if(player_id.bits == 1)
			sound_play(sound_get("8bit_break")); 
		else 
			sound_play(sound_get("sm64_break"));
		
		create_hitbox(AT_FSTRONG, 2, x+50 * spr_dir, y+80);
		var fxlol = spawn_hit_fx( x, y, player_id.whomp_explode );
		fxlol.spr_dir = spr_dir;
		//print("whomp spr_dir = " + string(spr_dir) + " fx spr_dir = " + string(fxlol.spr_dir) + " player spr_dir = " + string(player_id.spr_dir))
	}
}

if (attack == AT_DSTRONG){
    if (hbox_num == 3){
        if (hitbox_timer == 1){
		if(player_id.bits == 1){
		sound_play(sound_get("chuckyanoise_smb2")); } else { sound_play(sound_get("thwomp")); }
		}
        if (free){
		image_index = 0;
		create_hitbox(AT_DSTRONG, 1, x, y+40);
		create_hitbox(AT_DSTRONG, 2, x, y+40);
		} else if !(free){
			 img_spd = 0.3;
			 if (image_index > 2){ create_hitbox(AT_DSTRONG, 4, x, y+60); }
		     if (image_index == 3){ destroyed = true; }
		}
        if (destroyed == true){ 
		if(player_id.bits == 1){
		sound_play(sound_get("8bit_break")); } else { sound_play(sound_get("sm64_break")); }
		}
    }
}

if (attack == AT_FSPECIAL)
{
	if (player_id.nspecial_grabbed_player == id){
		++length;
		spr_dir = player_id.spr_dir;
		if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){

			var angle = 50;
			var knockback = 8; //get_hitbox_value(player_id.attack, 1, player_id.HG_BASE_KNOCKBACK)
			
			var throw_windtimer = 1;
			var throw_window = 1;
			switch(player_id.attack){
				case AT_DTHROW:
					angle = 270;
					throw_window = 2;
				break;
				case AT_UTHROW:
					angle = 100;
					throw_window = 2;
				break;
				case AT_EXTRA_1:
					angle = 135;
					throw_window = 2;
				break;
				default:
					angle = 50;
					throw_window = 2;
				break;
			}
				
			if (player_id.attack == AT_FTHROW || player_id.attack == AT_DTHROW || player_id.attack == AT_UTHROW || player_id.attack == AT_EXTRA_1) && (player_id.window == throw_window && player_id.window_timer == throw_windtimer){
				player_id.nspecial_grab_timer = 0;
				player_id.nspecial_grabbed_player = noone;
				
				hsp = (knockback * cos(degtorad(angle)) * player_id.spr_dir);
				vsp = (-knockback * sin(degtorad(angle)));
				
				if hsp != 0 // correct face dir
					spr_dir = sign(hsp);
				
				bounced = true;
			}
		}
	}
	else{
		if !(free){
			player_id.move_cooldown[AT_FSPECIAL] = 60;
			if (bounced == true)
				destroyed = true;
			else{
				bounced = true; vsp = -5; hsp = 4 * spr_dir;
				spawn_hit_fx( x, y, player_id.bomb_bounce );
				if(player_id.bits == 1)
					sound_play(sound_get("8bit_bounce")) 
				else 
					sound_play(sound_get("sm64_stomp"))
			}
			if (destroyed == true) {
				if player_id.player == orig_player.player
					sound_play(sound_get("sm64_blast_short"))
				
				create_hitbox( AT_FSPECIAL, 2, x, y);
			}
		}
		
		var chuck_distance = point_distance(player_id.x, player_id.y, x, y);
		if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
			if (player_id.attack == AT_NSPECIAL) && (chuck_distance <= 50 && player_id.nspecial_grabbed_player == noone) && (player_id.window <= 2){
				player_id.nspecial_grab_timer = player_id.nspecial_grab_max_time;
				player_id.nspecial_grabbed_player = id;
			}
		}
	}
}

if (attack == AT_TAUNT_2 && hbox_num == 1) {
	depth = player_id.depth + 1;
	if (hitbox_timer == 50 && the_variable_to_check_if_you_need_to_stop_existing == false){
		hitbox_timer = 1;
	}
}

if (attack == AT_TAUNT_2 && hbox_num == 2){
if (free == false){
destroyed = true;
if(player_id.bits == 1){
sound_play(sound_get("8bit_break")); } else { sound_play(sound_get("sm64_break")); }
}
}

if (attack == 49 && hbox_num == 1){
if (destroyed == true){
destroyed = false;
}
}


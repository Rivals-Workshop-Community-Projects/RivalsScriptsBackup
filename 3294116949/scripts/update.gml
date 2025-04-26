//update

// if (instance_exists(axe.axe_hitbox) and instance_exists(axe)){
// 	if (axe.axe_hitbox.was_parried){
// 		instance_destroy(axe.axe_hitbox);
// 	}
// }

can_wall_cling = !axeless;

if "fixed_drift" not in self {
	for(var i = 0; i <= 50; i++){
	    for(var j = 0; j <= 20; j++){
	        if(get_hitbox_value(i, j, HG_DRIFT_MULTIPLIER) == 0) set_hitbox_value(i, j, HG_DRIFT_MULTIPLIER, 1);
	    }
	}
	fixed_drift = true;
}

with(hit_fx_obj){
	if(player_id == other && "fennek_player_depth" in self){
		depth = other.depth - 1;
	}
}

if(attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	
} else {
	if instance_exists(uspec_lamp_id) && uspec_lamp_id.player_id == self && uspec_lamp_id != lamp { instance_destroy(uspec_lamp_id) uspec_lamp_id = noone }
	fennek_uspec_grab = noone;
	with(oPlayer) if self != other {
		if(FNK_no_mask == other){
			mask_index = FNK_orig_mask;
			FNK_no_mask = noone;
		}
	}
}

// if (instance_exists(lamp)){
// 	if (instance_exists(lamp.lamp_hitbox)){
//     	print("Belongs to" + string(lamp.lamp_who_exp));
// 	}
// }

if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL){
	if(has_hit_player && window < 7) attack_invince = 1;
}

// if (lamp_number>=1){
// 	move_cooldown[AT_DSPECIAL]=50;
// 	move_cooldown[AT_DSPECIAL_AIR]=50;
// }
// if ((attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR) && window == 3)&& (lamp_number<2){
// 	move_cooldown[AT_DSPECIAL]=50;
// 	move_cooldown[AT_DSPECIAL_AIR]=50;
// }


//wall cling

if state == PS_WALL_JUMP && !clinging {
    if state_timer == 0{
        walljump_timer = 0
        if (!axeless){
        sound_play(asset_get("sfx_kragg_roll_land"))
        }
    }
    else walljump_timer++
    //print(walljump_timer);
}

//Airstall

if (airstall == 1) && (airstall_timer > 7){
	airstall = 0;
	airstall_timer = 0;
}
if (airstall == 1){
	airstall_timer++;
	//print(airstall_timer);
}

// if (instance_exists(axe)){
// 	move_cooldown[AT_NSPECIAL]=12;
// 	if (place_meeting(x,y,axe) and axe.state==2){
// 		axe_touch_despawn++;
// 		if(axe_touch_despawn>=axe_touch_despawn_end){
// 			print("axe should despawn");
// 			if(instance_exists(axe.axe_hitbox_return)){
// 				instance_destroy(axe.axe_hitbox_return);
// 			}
// 			instance_destroy(axe);
// 			axe_touch_despawn=0;
// 		}
// 	}
// }


//Fspecial Cooldown
// if (!free && move_cooldown[AT_FSPECIAL] > 70)
// {
//      move_cooldown[AT_FSPECIAL] = 0;
// }
if(state == PS_WALL_JUMP || state == PS_DEAD || state == PS_RESPAWN || state_cat == SC_HITSTUN)
{
	move_cooldown[AT_FSPECIAL] = 0;
}
if !free move_cooldown[AT_FSPECIAL] = min(50, move_cooldown[AT_FSPECIAL]);


//Uspecial Cooldown
if !free or (state == PS_WALL_JUMP or state_cat == SC_HITSTUN or state == PS_DEAD or state == PS_RESPAWN) {
	move_cooldown[AT_USPECIAL] = 0;
	uspec_bounce = true;
}


// if (lamp_bounce and attack == AT_FSPECIAL) {
// 	if (window <= 3){
// 	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
// 	window = 4;
// 	window_timer = 1;
// 	}
// 	if (window == 1 && window_timer == 1){
// 	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
// 	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, -1);
// 	lamp_bounce = false;
// 	}
// }

// if (lamp_bounce and attack == AT_USPECIAL){
//     can_fast_fall = false;
// 	if (window == 1){
// 		set_num_hitboxes(AT_USPECIAL, 3);
// 		set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 7);
// 	}
// 	if (window == 4){
// 		set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
// 		set_num_hitboxes(AT_USPECIAL, 6);
//     	lamp_bounce=false;
// 	}
// 	if (window == 5){
//     	lamp_bounce=false;
// 	}
// 	if (window == 8){
// 		move_cooldown[AT_USPECIAL] = 90;
// 	}
// }


// if (lamp_bounce and attack == (AT_FAIR)){
// 	if window == 2 && vsp > -2{
// 		// FAIR float
// 		if (free) {
// 			old_hsp *= 0.9;
// 			old_vsp = -3;
// 	can_fast_fall = true;
//     lamp_bounce=false;
// 		} else { if (free) or down_down{
// 			old_vsp = 0;
// 			}
// 		}
// 	}
// 		if window >= 4{
// 		// FAIR float
// 		if (free) {
// 			old_hsp *= 0.9;
// 			old_vsp = -5;
// 	can_fast_fall = true;
//     	lamp_bounce=false;
// 		} else { if (free) or down_down{
// 			old_vsp = 0;
// 			}
// 		}
// 	}
// }

/*
//DSPECIAL SWAP (TEST)
if (is_special_pressed( DIR_DOWN ) && normal == 1 && (switched == 5)){
	aero = 1;
	normal = 0;
	switched = 6;
}

if (is_special_pressed( DIR_DOWN ) && aero == 1 && (switched == 5)){
	aero = 0;
	normal = 1;
	switched = 6;
}
if (!joy_pad_idle){
		switched++;
		if (switched >= 8){
			switched = 0;
		}
	}
*/
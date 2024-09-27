if(my_hitboxID.attack == AT_USPECIAL){
	switch(my_hitboxID.hbox_num){
		case 1: case 2: case 3:
		with(pHitBox) if player_id == other && attack == AT_NSPECIAL can_hit[other.hit_player_obj.player] = false;
		if(my_hitboxID.hbox_num < 3){
			hit_player_obj.mask_index = asset_get("empty_sprite");
			hit_player_obj.FNK_no_mask = self;
		} else {
			hit_player_obj.should_make_shockwave = false;
			hit_player_obj.mask_index = hit_player_obj.FNK_orig_mask;
			hit_player_obj.FNK_no_mask = noone;
			fennek_uspec_grab = hit_player_obj;
			if(uspec_grounded){
				uspec_orig_x = hit_player_obj.x;
				uspec_orig_y = hit_player_obj.y;
			} else {
				uspec_orig_x = x;
				uspec_orig_y = y;
			}
			destroy_hitboxes();
		}
		hit_player_obj.can_wall_tech = false;
		hit_player_obj.x = my_hitboxID.x;
		hit_player_obj.y = my_hitboxID.y + hit_player_obj.char_height/2;
		break;
		case 4:
		var hbox = noone;
		with(pHitBox) if player_id == other && hbox_num == 3 && attack == AT_USPECIAL hbox = self;
		hit_player_obj.mask_index = asset_get("empty_sprite");
		hit_player_obj.FNK_no_mask = self;
		if(hbox != noone){
			hit_player_obj.can_wall_tech = false;
			hit_player_obj.x = hbox.x;
			hit_player_obj.y = hbox.y + hit_player_obj.char_height/2;
		}
		break;
	}
}

if(!hit_player_obj.free && my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num < 3){
	state_timer = min(30, state_timer);
	if hit_player_obj.y < y { hit_player_obj.can_bounce = true; }
}

if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	with(my_hitboxID){
		hsp = -4 * spr_dir;
		vsp = -4;
		has_bounced = true;
		sound_play(asset_get("sfx_zap"));
		hit_priority = 0;
	}
}

if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 6 && hit_player_obj.state == PS_HITSTUN){
	hit_player_obj.free = true;
}

// if (my_hitboxID.attack == AT_USPECIAL && window == 2) {
//     hit_player_obj.x = x + spr_dir * 40
//     hit_player_obj.y = y + -10
// }

// if (my_hitboxID.attack == AT_USPECIAL && window == 3) {
//     hit_player_obj.x = x + spr_dir * 50
//     hit_player_obj.y = y + -80
// }

// if (my_hitboxID.attack == AT_USPECIAL && window == 4) {
//     hit_player_obj.x = x + spr_dir * 60
//     hit_player_obj.y = y + -150
// }

// if (my_hitboxID.attack == AT_USPECIAL && window == 5) {
//     hit_player_obj.x = x + spr_dir * 50
//     hit_player_obj.y = y + -70
// }

// if (my_hitboxID.attack == AT_USPECIAL && window == 6) {
//     hit_player_obj.x = x + spr_dir * 40
//     hit_player_obj.y = y + -60
// }
if (my_hitboxID.attack == AT_USPECIAL_GROUND && window == 2) {
    hit_player_obj.x = x + spr_dir * 40
    hit_player_obj.y = y + -10
}

if (my_hitboxID.attack == AT_USPECIAL_GROUND && window == 3) {
    hit_player_obj.x = x + spr_dir * 50
    hit_player_obj.y = y + -80
}

if (my_hitboxID.attack == AT_USPECIAL_GROUND && window == 4) {
    hit_player_obj.x = x + spr_dir * 60
    hit_player_obj.y = y + -150
}

if (my_hitboxID.attack == AT_USPECIAL_GROUND && window == 5) {
    hit_player_obj.x = x + spr_dir * 50
    hit_player_obj.y = y + -60
}

if (my_hitboxID.attack == AT_USPECIAL_GROUND && window == 6) {
    hit_player_obj.x = x + spr_dir * 20
    hit_player_obj.y = y + -30
}


if(my_hitboxID.attack == AT_EXTRA_1){ //dash attack hitbox 1 and 2 pulls enemy
   if (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2 ){
       
       axe_has_hit=true;
       //rishi.hitstop=hit_player_obj.hitstop;
     }
}

if(my_hitboxID.attack == AT_EXTRA_2){ //dash attack hitbox 1 and 2 pulls enemy
   if (my_hitboxID.hbox_num == 2){
       lamp_has_hit=true;
       //rishi.hitstop=hit_player_obj.hitstop;
     }
}

/*
if (my_hitboxID.attack == (43)) || (my_hitboxID.attack == (44)) || (my_hitboxID.attack == (45)){
	if (my_hitboxID.hbox_num == 1){
          	lamp=instance_create(hit_player_obj.x + 1*spr_dir, hit_player_obj.y + -30, "obj_article2" ); //SPAWNS REMNANT
        	lamp.anim_timer=0;
        	lamp.state_timer=0;
        	lamp_number++;
	}
}
*/

//BOUNCE FLOATS
	
// if (attack == (AT_FAIR)){
// 	if window == 2 && vsp > -2{
// 		// FAIR float
// 		if (free) {
// 			old_hsp *= 0.9;
// 			old_vsp = -3;
// 	can_fast_fall = true;
// 		} else { if (free) or down_down{
// 			old_vsp = 0;
// 			}
// 		}
// 	}
// 		if window == 4{
// 		// FAIR float
// 		if (free) {
// 			old_hsp *= 0.9;
// 			old_vsp = -5;
// 	can_fast_fall = true;
// 		} else { if (free) or down_down{
// 			old_vsp = 0;
// 			}
// 		}
// 	}
// 		if window == 6{
// 		// FAIR float
// 		if (free) {
// 			old_hsp *= 0.9;
// 			old_vsp = -1;
// 	can_fast_fall = true;
// 		} else { if (free) or down_down{
// 			old_vsp = 0;
// 			}
// 		}
// 	}
// }

if (attack == (AT_FTILT)){
	if window >= 1 && vsp > 0{
		// FTILT float
		if (free) {
			old_hsp *= 0.7;
		} else { if (free) or down_down{
			old_vsp = 0;
			}
		}
	}
}
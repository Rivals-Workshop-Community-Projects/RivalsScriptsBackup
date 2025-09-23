// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DAIR){
    trigger_b_reverse();
}

var window_end = get_window_value(attack, window, AG_WINDOW_LENGTH);

if (attack == AT_DTILT){
	can_fast_fall = false;
        // set_attack_value(42,AG_CATEGORY,2);
    if window == 2 && window_timer == 1{
    	var slidedust = hit_fx_create( sprite_get( "slide_fx" ), 14 );
    	spawn_hit_fx( x-50*spr_dir, y-58, slidedust);
    }
    if ((window == 3)){
    	if (attack_pressed) or (down_strong_pressed) or (down_stick_pressed){
    		destroy_hitboxes();
    		window = 5;
    		window_timer = 0;
		}
	}
    if window == 6 && window_timer == 1{
    		var slidejumpdust = hit_fx_create( sprite_get( "slidejump_fx" ), 21 );
    		spawn_hit_fx( x-10*spr_dir, y-58, slidejumpdust);
    }
	if(window >= 7) set_attack_value(AT_DTILT, AG_CATEGORY, 1);
    /*if (window == 3 && window_timer > 5){ //Rising Up Tilt Cancel
    	if (up_down && attack_pressed) or (up_strong_pressed) or (up_stick_pressed){
        attack_end();
		destroy_hitboxes();
        set_attack(AT_UTILT);
    	}
    }*/
}
if (attack == (42)){
    can_fast_fall = false;
    if(window > 2){
        set_attack_value(42,AG_CATEGORY,1);
    }
}
if (attack == AT_DSPECIAL) {
    if(window == 1 && window_timer == 8 && !free && !hitpause) hsp += 4 * spr_dir;
}


// if (attack == AT_DAIR) or (attack == (45)) or (attack == (44)){
// 	if window == 1 && window_timer <= 2 {
//             if left_down && !right_down{
//                 spr_dir = -1 
//             }
//             if !left_down && right_down{
//                 spr_dir = 1
//         }
// 	}
// }


// if (lamp_number == 1){
// }
// if (attack == AT_DSPECIAL){
// 	if window == 3 && window_timer ==1 and lamp_number< 3 {
//           print("Lantern spawned");
//           	lamp=instance_create( x+20*spr_dir, y-9, "obj_article2" ); //SPAWNS REMNANT
//         	lamp.anim_timer=0;
//         	lamp.state_timer=0;
//         	lamp_number++;
// 	}
// }


// if (attack == AT_DSPECIAL_AIR) and lamp_number < 3{
// 		if (window == 3 && window_timer == 1){
//           print("Lantern spawned");
//           	lamp=instance_create( x+20*spr_dir, y-9, "obj_article2" ); //SPAWNS REMNANT
//         	lamp.anim_timer=0;
//         	lamp.state_timer=0;
//         	lamp.state=3;
//         	lamp_number++;
// 		}
// }

if(attack == AT_DSPECIAL_2){
	if(window == 2 && window_timer == 1 && !hitpause && instance_exists(lamp) && lamp.state == 1){
		lamp.state = 2;
		lamp.state_timer = 0;
	}
}

if (attack == (46)){ //Directional Whip Code (John Morris Castlevania Bloodlines)
	if (window == 1 && window_timer <= 5){
		set_attack_value(46, AG_NUM_WINDOWS, 3);
	}
	if (window == 2 && window_timer >= 6){
		if (down_down){
		set_attack_value(46, AG_NUM_WINDOWS, 6);
		window = 4;
		}
	}
	if (window == 2 && window_timer >= 6){
		if (up_down){
		set_attack_value(46, AG_NUM_WINDOWS, 9);
		window = 7;
		}
	}
}
	
if (attack == (AT_FSPECIAL)){
    if (window <= 2 or (window >= 5 && !axeless)) {
    	if (state_timer % 4 == 0){
      		instance_create(x , y, "obj_article3");
    	}
    }
    if (window == 2 && !hitpause){
    	if(up_down){
    		vsp = -5;
    	} else if(down_down){
    		vsp = 5;
    	} else {
    		vsp = 0;
    	}
    }
    // if(window == 3){
    // 	vsp = min(vsp, 5);
    // }
    // if (window == 3){
    // if (up_down){
    // 	vsp = -2;
    // 	}else
    // if (down_down){
    // 	vsp = 2;
    // 	}
    // }
    // if (window==6){
    // 	lamp_bounce=false;
    // }
}

//AXELESS FIXES
if (!axeless){
	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("alt_axe2"));
	set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -15);
} else {
	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("alt_fspecial_hurt"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -45);
}


// if (attack == AT_USPECIAL_GROUND){
//     can_fast_fall = false;
// 	if (window == 1){
// 		set_num_hitboxes(AT_USPECIAL_GROUND, 3);
// 	}
// 	if (window == 4) && (has_hit){
// 		set_num_hitboxes(AT_USPECIAL_GROUND, 6);
// 	}
// 	if (window == 8){
// 		move_cooldown[AT_USPECIAL_GROUND] = 45;
// 		move_cooldown[AT_USPECIAL] = 45;
// 	}
// }

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if(window == 1) uspec_grounded = !free;
	if(window > 1) off_edge = false;
	if(window < 4){
		if vsp > 0 vsp *= .9;
		hsp *= .92;
		if !uspec_grounded && window == 2 && window_timer == window_end && uspec_bounce && !hitpause {
			uspec_bounce = false;
			vsp = -7;
		}
		has_hit = false;
		if window_timer > window_end has_hit_player = false;
	}
	
	var lamp_list = [];
	if instance_exists(lamp) array_push(lamp_list, lamp);
	
	with(obj_article2){
		if(player_id != other && player_id.url == other.url) array_push(lamp_list, self);
	}
	
	if uspec_lamp_id == noone uspec_lamp_id = find_lamp(lamp_list)
	
	var hbox = noone;
	with(pHitBox) if player_id == other && hbox_num == 3 && attack == AT_USPECIAL hbox = self;
	
	with(pHitBox){
		if(player_id == other && attack == AT_USPECIAL && hbox_num <= 3){
			if(instance_exists(other.lamp) && place_meeting(x, y, other.lamp)){
				other.lamp.x = x;
				other.lamp.y = y;
			}
		}
		if(player_id == other && attack == AT_USPECIAL && hbox_num == 4 && hbox != noone){
			if(instance_exists(other.lamp) && place_meeting(x, y, other.lamp)){
				other.lamp.x = hbox.x;
				other.lamp.y = hbox.y;
			}
		}
	}
	
	if uspec_lamp_id == noone uspec_lamp_id = find_lamp(lamp_list);
	if instance_exists(uspec_lamp_id) && uspec_lamp_id.player_id != self {
		uspec_lamp_id.player_id.move_cooldown[AT_DSPECIAL_2] = max(uspec_lamp_id.player_id.move_cooldown[AT_DSPECIAL_2], 2);
		uspec_lamp_id.player_id.move_cooldown[AT_DSPECIAL] = max(uspec_lamp_id.player_id.move_cooldown[AT_DSPECIAL], 2);
	}
	if window <= 5 && !hitpause && uspec_lamp_id != noone && !instance_exists(uspec_lamp_id) {
		uspec_lamp_id = instance_create((uspec_grounded ? round(x + 30 * spr_dir) : round(lamp_prev_x - 30 * spr_dir)),
		(uspec_grounded ? round(y - 36) : round(lamp_prev_y + 36)), "obj_article2");
	}
	
	if(uspec_lamp_id != noone && window == 4 && window_timer >= 1 + has_hit_player && !uspec_should_tether && !uspec_grabbed_lamp){
		var lamp_1 = collision_ellipse(x + (60 * spr_dir) - 25, y - 178 - 30, x + (60 * spr_dir) + 25, y - 168 + 30, uspec_lamp_id, false, true);
	    var lamp_2 = collision_ellipse(x + (35 * spr_dir) - 25, y - 118 - 30, x + (35 * spr_dir) + 25, y - 118 + 30, uspec_lamp_id, false, true);
	    var lamp_3 = collision_ellipse(x + (15 * spr_dir) - 20, y - 68 - 30, x + (15 * spr_dir) + 20, y - 68 + 30,   uspec_lamp_id, false, true);
	    
	    if(lamp_1 || lamp_2 || lamp_3){
	    	destroy_hitboxes();
	    	uspec_grabbed_lamp = true;
	    	uspec_lamp_id.x = x + 60 * spr_dir;
	    	uspec_lamp_id.y = y - 168;
	    	if !instance_exists(fennek_uspec_grab){
	    		sound_play(asset_get("sfx_hod_ustrong_whip"));
	    		if(uspec_grounded){
					uspec_orig_x = uspec_lamp_id.x;
					uspec_orig_y = uspec_lamp_id.y;
				} else {
					uspec_orig_x = x;
					uspec_orig_y = y;
				}
	    	}
	    	spawn_hit_fx(uspec_lamp_id.x, uspec_lamp_id.y, HFX_GEN_SWEET);
	    }
	}
	
	if(!uspec_grounded && window == 4 && window_timer >= 1 + has_hit_player && !instance_exists(fennek_uspec_grab) && !uspec_should_tether && !uspec_grabbed_lamp){
		var sol_1 = collision_ellipse(x + (60 * spr_dir) - 25, y - 178 - 30, x + (60 * spr_dir) + 25, y - 168 + 30, asset_get("par_block"), false, true);
	    var sol_2 = collision_ellipse(x + (35 * spr_dir) - 25, y - 118 - 30, x + (35 * spr_dir) + 25, y - 118 + 30, asset_get("par_block"), false, true);
	    var sol_3 = collision_ellipse(x + (15 * spr_dir) - 20, y - 68 - 30, x + (15 * spr_dir) + 20, y - 68 + 30,   asset_get("par_block"), false, true);
	    
	    var plat_1 = collision_ellipse(x + (60 * spr_dir) - 25, y - 178 - 30, x + (60 * spr_dir) + 25, y - 168 + 30, asset_get("par_jumpthrough"), false, true);
	    var plat_2 = collision_ellipse(x + (35 * spr_dir) - 25, y - 118 - 30, x + (35 * spr_dir) + 25, y - 118 + 30, asset_get("par_jumpthrough"), false, true);
	    var plat_3 = collision_ellipse(x + (15 * spr_dir) - 20, y - 68 - 30, x + (15 * spr_dir) + 20, y - 68 + 30,   asset_get("par_jumpthrough"), false, true);
	    
	    if(sol_1 || sol_2 || sol_3 || plat_1 || plat_2 || plat_3){
	    	sound_play(asset_get("sfx_hod_ustrong_whip"))
	    	destroy_hitboxes();
	    	if(sol_1 || plat_1){
	    		spawn_hit_fx(x + 60 * spr_dir, y - 178, HFX_GEN_SWEET);
	    		uspec_should_tether = 1;
	    	} else if(sol_2 || plat_2){
	    		spawn_hit_fx(x + 35 * spr_dir, y - 118, HFX_GEN_SWEET);
	    		uspec_should_tether = 2;
	    	} else if(sol_3 || plat_3){
	    		spawn_hit_fx(x + 15 * spr_dir, y - 68, HFX_GEN_SWEET);
	    		uspec_should_tether = 3;
	    	}
	    }
	}
	if(window == 4 && (instance_exists(fennek_uspec_grab) || uspec_should_tether || uspec_grabbed_lamp)){
		vsp = 0;
		hsp = 0;
		can_move = false;
		if(window_timer == window_end && uspec_should_tether){
			vsp = -16 + 3 * (uspec_should_tether-1);
			vsp = max(vsp, -15);
		}
	}
	
	if(has_hit_player || uspec_should_tether) set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 8);
	else set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 12);
	
	if(instance_exists(fennek_uspec_grab)){
		fennek_uspec_grab.hitstop = max(fennek_uspec_grab.hitstop, 2);
		if(window == 5){
			if(window_timer == 1){
				sound_play(asset_get("sfx_hod_ustrong_whip"))
			}
			hsp = 0;
			vsp = 0;
			if(!uspec_grounded){
				x = ease_quadOut(round(uspec_orig_x), round(fennek_uspec_grab.x - 30 * spr_dir), window_timer, window_end);
				y = ease_quadOut(round(uspec_orig_y), round(fennek_uspec_grab.y + fennek_uspec_grab.char_height/2), window_timer, window_end);
			} else {
				fennek_uspec_grab.x = ease_quadOut(round(uspec_orig_x), round(x + 30 * spr_dir), window_timer, window_end);
				fennek_uspec_grab.y = ease_quadOut(round(uspec_orig_y), round(y - 10), window_timer, window_end);
			}
			if(window_timer == window_end && !hitpause && !uspec_grabbed_lamp){
				if !uspec_grounded {
					vsp = -10;
					create_hitbox(AT_USPECIAL, 5, round(x), round(y + fennek_uspec_grab.char_height/2));
				} else {
					create_hitbox(AT_USPECIAL, 6, round(x), round(y + fennek_uspec_grab.char_height/2));
				}
				fennek_uspec_grab = noone;
			}
		}
	}
	
	if(instance_exists(uspec_lamp_id) && uspec_grabbed_lamp){
		if(window == 5){
			hsp = 0;
			vsp = 0;
			if(!uspec_grounded && !instance_exists(fennek_uspec_grab)){
				x = ease_quadOut(round(uspec_orig_x), round(uspec_lamp_id.x - 30 * spr_dir), window_timer, window_end);
				y = ease_quadOut(round(uspec_orig_y), round(uspec_lamp_id.y + 36), window_timer, window_end);
			} else if(uspec_grounded){
				uspec_lamp_id.x = ease_quadOut(round(uspec_orig_x), round(x + 30 * spr_dir), window_timer, window_end);
				uspec_lamp_id.y = ease_quadOut(round(uspec_orig_y), round(y - 36), window_timer, window_end);
			}
			if(window_timer == window_end && !hitpause){
				if !uspec_grounded {
					set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1); //up special pratfall
					//set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1); //up special whifflag
					vsp = -10; //formerly -14
					hsp = 2 * spr_dir;
					create_hitbox(AT_USPECIAL, 7, round(x), round(y + char_height/2));
		    		// burned = true;
		    		// burnt_id = self;
		    		// burn_timer = 0;
		    		instance_destroy(uspec_lamp_id);
		    		sound_play(asset_get("sfx_burnapplied"));
					sound_play(asset_get("sfx_forsburn_combust"));
					sound_play(asset_get("sfx_rag_whip"));
					var hfx = spawn_hit_fx(x + 20 * spr_dir, y - 40, HFX_SHO_FLAME_BIG);
					hfx.depth = depth - 1;
					uspec_grabbed_lamp = false;
					fennek_uspec_grab = noone;
					uspec_did_grab_lamp = true;
				} else {
					create_hitbox(AT_USPECIAL, 8, round(x), round(y + char_height/2));
		    		// burned = true;
		    		// burnt_id = self;
		    		// burn_timer = 0;
		    		instance_destroy(uspec_lamp_id);
		    		sound_play(asset_get("sfx_burnapplied"));
					sound_play(asset_get("sfx_forsburn_combust"));
					sound_play(asset_get("sfx_rag_whip"));
					var hfx = spawn_hit_fx(x + 20 * spr_dir, y - 40, HFX_SHO_FLAME_BIG);
					hfx.depth = depth - 1;
					uspec_grabbed_lamp = false;
					fennek_uspec_grab = noone;
					uspec_did_grab_lamp = true;
				}
			}
		}
		
		if(instance_exists(uspec_lamp_id)){
			lamp_prev_x = uspec_lamp_id.x;
			lamp_prev_y = uspec_lamp_id.y;
		}
	}
	
	if(window == 7){
		can_wall_jump = true;
		if(uspec_grounded){
			if has_hit_player move_cooldown[AT_USPECIAL] = 45;
			if uspec_did_grab_lamp move_cooldown[AT_USPECIAL] = 60;
		} else {
			if has_hit_player move_cooldown[AT_USPECIAL] = 60;
			if uspec_should_tether move_cooldown[AT_USPECIAL] = 90;
			if uspec_did_grab_lamp move_cooldown[AT_USPECIAL] = 120;
		}
	}
	
	
	
 //   can_fast_fall = false;
	// if (window == 1){
	// 	set_num_hitboxes(AT_USPECIAL, 3);
	// 	set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 7);
	// }
	// if (window == 4) && (has_hit == true){
	// 	set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
	// 	set_num_hitboxes(AT_USPECIAL, 6);
	// }
	// if (window == 8){
	// 	move_cooldown[AT_USPECIAL] = 90;
 //   	lamp_bounce=false;
	// }
}


//Down Air Fall
// if (attack == AT_DAIR){
// 	if window == 4{
// 		if vsp = 0 && hitpause = 0 {
// 		window = 6;
// 		}
// 	}
// }

//Greatsword Charge
if (attack == (43)){
    can_fast_fall = false;
	if (window == 2 && window_timer == 2){
		if (special_down) {
		window = 2
		window_timer = 1;
		}
	}
}
/*
if (attack == (43)) && (free) && (special_down) && (vsp > 0){
	if (window == 1 && window_timer == 6){
		hsp *= 0.2;
		vsp = -6;
	}
}*/

if (attack == AT_DAIR) {
	can_fast_fall = false;
	if window == 4 && state_timer >= 35 && !hitpause {
		can_jump = true;
		can_wall_jump = true;
		can_shield = true;
		if is_special_pressed( DIR_UP ) && (move_cooldown[AT_USPECIAL] < 1){
			set_attack( AT_USPECIAL );
			vsp = 0;
		}
	}
	if(window == 4 && !hitpause && !free){
		shake_camera(4,8);
		spawn_base_dust(x + 30 * spr_dir, y, "dash_start", -spr_dir)
		destroy_hitboxes();
		sound_play(asset_get("sfx_blow_heavy2"));
		sound_play(asset_get("sfx_kragg_rock_land"));
		sound_play(asset_get("sfx_kragg_spike"));
		window++;
		window_timer = 0;
	}
}

if (attack == AT_FSTRONG) {
	if(window == 4 && window_timer == 8 && !hitpause){
		shake_camera(4,8);
		spawn_base_dust(x + 60 * spr_dir, y, "dash_start", -spr_dir)
		sound_play(asset_get("sfx_blow_heavy2"));
	}
}

/*
if (attack == (AT_FAIR)) {
	can_fast_fall = false;
}*/
if (attack == AT_USTRONG) {
	if window ==3 && window_timer == 6{
	shake_camera( 2, 4);
	spawn_base_dust(x + 30 * -spr_dir, y, "dash_start", spr_dir)
	// sound_play(asset_get("sfx_blow_heavy1"), false, noone, .7)
	}
}	


//DSTRONG SPIN CHARGE
if(attack == AT_DSTRONG){
	can_move = false;
	if(window == 2) spin_count = round(strong_charge/50);
	if(window == 2 && window_timer == window_end && !hitpause){
		// sound_play(asset_get("sfx_spin_longer"), false, noone, true, .9);
	}
	if(window == 3 && !hitpause){
		if(window_timer == 6) sound_play(asset_get("sfx_swipe_heavy1"))
		if(left_down) hsp -= 1;
		if(right_down) hsp += 1;
		hsp = clamp(hsp, -4, 4);
		if window_timer == window_end && spin_count > 0 { spin_count--; window_timer = 0; attack_end(); }
		
	}
	if(window == 5 && !hitpause && window_timer == 1) strong_charge/=2;
	if(window == 5 && window_timer == window_end) {
		sound_play(asset_get("sfx_rag_axe_swing"));
		spawn_base_dust(x + 30 * spr_dir, y, "dash_start", -spr_dir)
		spawn_base_dust(x + 30 * -spr_dir, y, "dash_start", spr_dir)
	}
	/*if window == 5 && window_timer == 2{
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	if(window == 6 && hitpause) shake_camera( 6, 2);*/
}

//Down Strong Shenanigans
// if (attack == AT_DSTRONG) {
// 	if window == 7 && window_timer == 1{
// 	shake_camera( 4, 8);
// 	}
// }	
// if (attack == AT_DSTRONG) {
// 	if window == 2 && window_timer == 15{
// 		if (down_strong_down) or (strong_down){
// 		window = 3;
// 		} else{
// 			window = 5;
// 			window_timer = 0;
// 		}
// 	}
// }	

// if (attack == AT_DSTRONG){
// 	if window == 1{
// 		spin_count = 5;
// 	}
// 	if window == 4 && spin_count == 0{
// 		window = 5;
// 		window_timer = 0;
// 	}
// }

// if (attack == AT_DSTRONG) && (window > 2 && window < 6){
// 	can_move=true;
// 	if (right_down) && (!hitpause){
// 		hsp = 1.5;
// 	} else if (left_down) && (!hitpause){
// 		hsp = -1.5;
// 	}
// }

// if (attack == AT_DSTRONG) && (window == 6) && window_timer == 1{
// 	if (left_down) && (!right_down){
// 		spr_dir = -1;
// 	}
// 	if (!left_down) && (right_down){
// 		spr_dir = 1;
// 	}
// }
	
// if (attack == AT_DSTRONG) { //Spin Loop Code
// 	if window == 4 && window_timer == 12 && ((down_strong_down) or (strong_down)){
// 	window = 3;
// 	window_timer = 10;
// 	--spin_count;
// 		attack_end();
// 	sound_play(asset_get("sfx_swipe_heavy1"))
// 	}
// }

/*if (attack == AT_NSPECIAL){
	if (((window == 2) or (window == 3)) && (vsp > 7)){
		airstall = 1;
	}
}
if (attack == AT_NSPECIAL) && (airstall == 1){
	//if (airstall_timer <= 4){
		vsp *= 0.7;
		hsp *= 0.9;
	//}
}*/

if (attack == AT_DSPECIAL){
	if ((window == 1) && window_timer == 14) && (vsp > 12){
		airstall = 1;
	}
}

if (attack == AT_DSPECIAL) && (airstall == 1){
	//if (airstall_timer <= 4){
		vsp *= 0.7;
		hsp *= 0.7;
	//}
}

//UP SPECIAL AIRTALL
if (attack == AT_USPECIAL){
	if ((window == 1) && window_timer == 8) && (vsp > 6) && (airstall_cooldown == 0){
		airstall = 1;
	}
}

if (attack == AT_USPECIAL) && (airstall == 1){
	//if (airstall_timer <= 4){
		vsp *= 0.7;
	//}
}

if(attack == AT_FAIR){
	if(hitpause && has_hit && !did_hit && !fast_falling){
		did_hit = true;
		old_vsp = min(-4, old_vsp);
	}
	if(window == 3 || window == 5){
		if(attack_pressed || attack_down || strong_down || 
		(spr_dir == 1 && (right_strong_pressed || right_strong_down || right_stick_pressed || right_stick_down)) ||
		(spr_dir == -1 && (left_strong_pressed || left_strong_down || left_stick_pressed || left_stick_down))){
			window++;
			window_timer = 0;
			has_hit = false;
			did_hit = false
		}
	}
}


/*if (attack == AT_DSTRONG){
	if (window == 4 && window_timer == 5){
		sound_play(asset_get("sfx_rag_axe_swing"));
		spawn_base_dust(x + 30 * spr_dir, y, "dash_start", -spr_dir)
		spawn_base_dust(x + 30 * -spr_dir, y, "dash_start", spr_dir)
	}
}*/

//Forward Air Input Fixes
// if (attack == (AT_FAIR)){
// 	if (window == 3) && (window_timer >= 1){
// 		if(right_strong_pressed) or (left_strong_pressed) or (left_stick_pressed) or (right_stick_pressed){
// 		window = 4;
// 		window_timer = 0;	
// 		}
// 	}
// 	if (window == 5) && (window_timer >= 1){
// 		if(right_strong_pressed) or (left_strong_pressed) or (left_stick_pressed) or (right_stick_pressed){
// 		window = 6;
// 		window_timer = 0;
// 		}
// 	}
// }

if (attack == AT_UTILT){
	// can_fast_fall = false;
	// if window == 4 && window_timer > 6 * + (6/2 * !has_hit){
 //         can_jump = true;
	// }
	if(was_parried) hsp = clamp(hsp, -2, 2);
}

if (attack == AT_DATTACK) && window == 2{
	if window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)) && (!hitpause) && (!has_hit){
         sound_play(asset_get("sfx_ice_dspecial_ground"));
         shake_camera( 2, 6);
	}
}
if (attack == AT_DATTACK) && (down_down){ //Short Distance Dash Attack
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 6);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 2);
}else{
	set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 9);
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5);
}

if (attack == AT_FSPECIAL) {
	can_fast_fall = false;
    // can_jump = false;
    can_wall_jump = true;
    if(window == 1) if vsp < 0 vsp *= .9 else vsp *= .7;
    if(window == 2){
    	
    	if (place_meeting(x + hsp + 2 * spr_dir, y, asset_get("par_block")) && free && !hitpause) {
            for (var i = 1; i < 30; i++){
                if (!place_meeting(x + hsp + 2 * spr_dir, y- i ,asset_get("par_block"))) {
                    y -= i;
                    if hsp == 0 {
                    	if (window >= 5 && window <= 8) {
                    		hsp = 40 * spr_dir;
                    	}	
                    	if (window >= 11 && window <= 14) {
                    		hsp = 15 * spr_dir
                    	}
                    }
                    break;
                }
            }
        }
    	
    }
    if window == 3 if vsp > 0 vsp *= .7;
}

if (attack == AT_FSPECIAL){
	if (free && !fspec_grounded){
	move_cooldown[AT_FSPECIAL] = 99999;
	} else if(free && fspec_grounded){
	move_cooldown[AT_FSPECIAL] = 50;
	} else {
	move_cooldown[AT_FSPECIAL] = 30;
	if(window == 1 || window == 3) fspec_grounded = true;
	}
	if(window == 2) {
		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) + 4 * (fspec_grounded && free));
	}
	if has_hit || !free || fspec_grounded set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
	else set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7); // Side Special Pratfall
	// if window == 3 && window_timer == 12 && !has_hit{
	// 	if (free) set_state( PS_PRATFALL );
	// }
}

if (attack == AT_NSPECIAL){
	if (window == 4){
	move_cooldown[AT_NSPECIAL] = 70;
	}
}

if attack == AT_FSPECIAL && window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 8 {
	spawn_hit_fx( x + -50*spr_dir, y + -86, airdash);
}
// if attack == AT_FSPECIAL && (window == 5) && window_timer == 2 {
// 	if right_down * spr_dir {
// 	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 7);
// 	}if right_down * -spr_dir {
// 	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, -3);
// 	}
// 	if left_down * spr_dir {
// 	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, -3);
// 	}if left_down * -spr_dir {
// 	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 7);
// 	}
// }



#region //ARTICLE STUFF

//article spawns

if (attack==AT_NSPECIAL) && (!free){
	if  (window == 2) && (window_timer == 6) {
		spawn_hit_fx( x + -80*spr_dir, y + -70, sparks1);
	}
	if (window == 3) && (window_timer == 6) {
		spawn_hit_fx( x + 30*spr_dir, y + -70, sparks2);
	}
}

if (attack==AT_NSPECIAL and window==3 and window_timer==6){
	axe=instance_create( x+40*spr_dir, y-42, "obj_article1" ); //SPAWNS REMNANT
	// if free && !hitpause && !fast_falling vsp = min(-6, vsp);
}

if (attack==AT_NSPECIAL_2 and window==1 and window_timer==1 && !hitpause){
    if (instance_exists(axe.axe_hitbox)){
        instance_destroy(axe.axe_hitbox)	
    }
    with(axe){
		is_hittable = true;
		ignores_walls = true;
		sprite_index = sprite_get("spinning_axe2");
		state = 3;
		state_timer = 0;
		return_magnintude = 10;
		return_dir = point_direction(x, y, other.x, other.y);
		if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
		returning = true;
		if(ignited){
    		axe_hitbox = create_hitbox(AT_NSPECIAL, 5, x, y);
			axe_hitbox.spr_dir = spr_dir;
    	}
		axe_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
		axe_hitbox.spr_dir = spr_dir;
    }
    if(axe.ignited) with(oPlayer) if self != other && hit_player_obj == other can_be_hit[other.player] = 0;
    // with(oPlayer) if self != other && hit_player_obj == other can_be_hit[other.player] = 0;
}


#endregion 



//Copen's Bullit Dash (legacy code)
/*if attack == AT_FSPECIAL && (window == 1) && window_timer <= 5 {
	if up_down{
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -6);
	}if down_down{
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 6);
	}
}if attack == AT_FSPECIAL && (window == 3) && window_timer == 1 {
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
}
*/
if (attack == AT_FSPECIAL) {
	if window <= 3 && has_hit && !hitpause {
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
	}
	if window == 1 && window_timer == 1{
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
		set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 0);
	}
}

#define find_lamp
/// @param {undefined} lamps
var lamps = argument0;
var the_lamp = noone;
var end_it = false;
for(var i = 0; i < array_length(lamps); i++){
	var lamp_1 = collision_ellipse(x + (60 * spr_dir) - 25, y - 178 - 30, x + (60 * spr_dir) + 25, y - 168 + 30, lamps[@i], false, true);
    var lamp_2 = collision_ellipse(x + (35 * spr_dir) - 25, y - 118 - 30, x + (35 * spr_dir) + 25, y - 118 + 30, lamps[@i], false, true);
    var lamp_3 = collision_ellipse(x + (15 * spr_dir) - 20, y - 68 - 30, x + (15 * spr_dir) + 20, y - 68 + 30,   lamps[@i], false, true);
    
    if !lamps[@i].in_use && window == 4 && window_timer >= 1 + has_hit_player && (lamp_1 || lamp_2 || lamp_3) { 
    	end_it = true 
    	lamp_prev_x = lamps[@i].x;
    	lamp_prev_y = lamps[@i].y;
    	return lamps[@i];
    }
}
if !end_it return noone;

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
{
	if (hitpause) return;
	var dlen; //dust_length value
	var dfx; //dust_fx value
	var dfg; //fg_sprite value
	var dfa = 0; //draw_angle value
	var dust_color = 0;
	var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;
	
	switch (name) {
		default: 
		case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
		case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
		case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
		case "doublejump": 
		case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
		case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
		case "land": dlen = 24; dfx = 0; dfg = 2620; break;
		case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
		case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
		case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
		case "anime": dlen = 1; dfx = 22; dfg = 2656; dust_color = 1; break;
		case "flake": dlen = 1; dfx = 14; dfg = 2656; dust_color = 1; break;
	}
	var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
	newdust.dust_fx = dfx; //set the fx id
	if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
	newdust.dust_color = dust_color; //set the dust color
	if dir != 0 newdust.spr_dir = dir; //set the spr_dir
	newdust.draw_angle = dfa;
	return newdust;
} // Supersonic
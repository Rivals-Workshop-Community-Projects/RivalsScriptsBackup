//AR article1_update
//acid raincloud
//looks like i basically have to code it from scratch. eheh.
//guess i'll steal a lot (referencely) from guadua
//can you blame me? i am a noob and nothing is written in the doc
//kinda my fault for complaining while it's merely
//in an open beta, though.

//VERSION 2 where i attempt AoE rain.
//if you need the old version it's down in the reloc folder
//check it out y'all

//start idleloop charge  lightning disappear
//0-3:4 4-9:6    10-12:3 13-17:5   18-21:4

if (get_player_color( player ) == 6){
	sprite_index = sprite_get("acidraincloud_jis");
}

if (init == 0){
    init = 1;    
    with (asset_get("oPlayer")){
        if (id == other.player_id){
            arc_active = true;
        }
    }
	if (player_id.runeL){
	arc_num_max = 2;
	}else{
    arc_num_max = 1;
	}
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id){
		arc_num = arc_num+1;
			if (state < 2 && arc_num >= arc_num_max){
				state = 2;
				state_timer = 0;
			}
        }
    }
}


state_timer++;

//i'll assume ++ just adds 1 each time it's called?

// // // // START
var summon_time = 24;
if (state == 0){ //growing
    image_index = state_timer * 4 / summon_time;
	//that's (2 * 4 = 8) / 12 = 0....?
	//
	//    image_index = 5 + state_timer * 4 / die_time;
	//i get that, i get that, but not exactly...?
	//
	//4 + 6 * 6 / 20
	//
//    if (state_timer == floor(summon_time*.5)){
//        create_hitbox(AT_DSPECIAL, 1, x-11*spr_dir, y-40);
//    }
    if (state_timer == floor(summon_time*.2)){
		sound_play(asset_get("sfx_absa_cloud_place"));
	}
    if (state_timer == summon_time){
        state = 1;
        state_timer = 0;
    }
}

//arc_lm = 1;
//arc_c = 1;
//arc_rm = 1;

//start idleloop charge  lightning disappear
//0-3:4 4-9:6    10-12:3 13-17:5   18-21:4

// // // // IDLE
var idle_time = 60;
if (state == 1){
    image_index = 4 + state_timer * 6 / idle_time;
	if (state_timer == 1){
		// near copy from dspecial code in attack_update
		// this checks for floor below every time idle loop starts
		// 58 (center) - 27 (left) = 31
		// 86 (right) - 58 (center) = 28
		// l=29=29
		// r=87=29
		var arc_lm_temp_y = 0;
		var arc_c_temp_y = 0;
		var arc_rm_temp_y = 0;
		var max_temp_y = 300;
		while ((arc_lm_temp_y < max_temp_y) && (!position_meeting((x-29),y+arc_lm_temp_y, asset_get ("par_block"))) && (!position_meeting((x-29),y+arc_lm_temp_y, asset_get("par_jumpthrough")))){
			arc_lm_temp_y+= 30;
		}
		while ((arc_c_temp_y < max_temp_y) && (!position_meeting(x,y+arc_c_temp_y, asset_get ("par_block"))) && (!position_meeting(x,y+arc_c_temp_y, asset_get("par_jumpthrough")))){
			arc_c_temp_y+= 30;
		}
		while ((arc_rm_temp_y < max_temp_y) && (!position_meeting((x+29),y+arc_rm_temp_y, asset_get ("par_block"))) && (!position_meeting((x+29),y+arc_rm_temp_y, asset_get("par_jumpthrough")))){
			arc_rm_temp_y+= 30;
		}
		if (arc_lm_temp_y < 300) {
			arc_lm = 1;
		}
		if (arc_c_temp_y < 300) {
			arc_c = 1;
		}
		if (arc_rm_temp_y < 300) {
			arc_rm = 1;
		}
		if (arc_lm_temp_y == 300) {
			arc_lm = 0;
		}
		if (arc_c_temp_y == 300) {
			arc_c = 0;
		}
		if (arc_rm_temp_y == 300) {
			arc_rm = 0;
		}
		//these were for checking
//		if (arc_lm == 1 && arc_c == 1 && arc_rm == 1){
//			sound_play(sound_get("DING"));
//		}
//		if (arc_lm == 0 && arc_c == 0 && arc_rm == 0){
//			sound_play(sound_get("uh_oh"));
//		}
	} // this marks the end of floor check / state_timer == 1
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 4;
		state_timer = 0;
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}

	if (state_timer == idle_time){
        state_timer = 0;
		image_index = 4;
		if (!player_id.phone_cheats[player_id.cheat_cloud]){
			idle_cycle = idle_cycle+1;
		}
    }
	
	//this is to detect "reflection" and it will then try to remove itself from existance
//if (damage != 1){
if (pre_rfl != player_id){
	state = 4;
	state_timer = 0;
	sound_play(asset_get("sfx_clairen_hit_med"));
//    instance_destroy(ARain);
//	with ("obj_article3"){
//		if (variable_instance_exists(id,"rain_gfx_hit")){
//			instance_destroy();
//		}
//	}
}
	
	//summon rain
	
	if (state_timer % 5 == 0 && pre_rfl == player_id && arc_cooldown == 0){ //10
//		if (variable_instance_exists(player_id, "ardev")){
			var ARain = instance_create((x+(-32 + random_func( 0, 64, true ))), (y+(6 - random_func( 0, 2, true )) ), "obj_article3");
			ARain.player_id = player_id;
			ARain.player = player;
//		}
//		else{
//			var rfl_x = x;
//			var rfl_y = y;
//			var rfl_plr_id = player_id;
//			var rfl_plr_nm = player;
//			with (pre_rfl){
//				var ARain = instance_create((rfl_x+(-32 + random_func( 0, 64, true ))), (rfl_y+(6 - random_func( 0, 2, true )) ), "obj_article3");
//				ARain.player_id = rfl_plr_id;
//				ARain.player = rfl_plr_nm;
//			}
//		}
    }
	
	//
	//BIG RAY DETECTION ATTEMPT HOLY CRAP
	//
	
		// 58 (center) - 27 (left) = 31
		// 86 (right) - 58 (center) = 28
		// l=29=29
		// r=87=29
		
		//var arc_lm_temp_y = 0;
		//var arc_c_temp_y = 0;
		//var arc_rm_temp_y = 0;
		
		if (arc_cooldown > 0){
			arc_cooldown--;
			image_alpha = 0.75-((arc_cooldown/250)/4)
			player_id.arc_cooldown = true;
		}else{
			image_alpha = 1
			player_id.arc_cooldown = false;
		}
		
if (state_timer % 3 == 0 && arc_cooldown == 0){
	var ray_x_n = 0;
	var ray_x;
	var ray_l = x-29; //29
	var ray_r = x+29;
	var ray_max_y = 300;
	var ray_tmp_y = 30;
	var acidhitsnd = sound_get("AcidDamage");
//	var dingsnd = sound_get("DING");
//	var uhohsnd = sound_get("uh_oh");
	var rain_hit = [false, false, false, false];
//	var rainhitvfx = hit_fx_create( sprite_get( "rainhit" ), 6 );
	var opponent_y = 0;
	var col_s = asset_get ("par_block");
	var col_j = asset_get("par_jumpthrough");
	
	for (ray_x = ray_l; ray_x < ray_r; ray_x += 18){ //14 or 18
//		while ((ray_tmp_y < ray_max_y) && (!position_meeting(ray_x,y+ray_tmp_y, asset_get ("par_block"))) && (!position_meeting(ray_x,y+ray_tmp_y, asset_get("par_jumpthrough")))){
		//for loop does horizontal ray
		//while loop does vertical ray
		while ((ray_tmp_y < ray_max_y) && (!position_meeting(ray_x,y+ray_tmp_y, col_s)) && (!position_meeting(ray_x,y+ray_tmp_y, col_j)) && (!position_meeting(ray_x,y+ray_tmp_y, asset_get("plasma_field_obj")))){
			//crouch while ardev is on to show vertical ray
			if (variable_instance_exists(player_id, "ardev")){
				if (player_id.ardev==1&&player_id.state==32){
				spawn_hit_fx( ray_x, y+ray_tmp_y, 18 );
				}
			}
//			var cur_ray_x = ray_x;
//			var cur_ray_y = y+ray_tmp_y;
			//for tests
//			if (position_meeting(cur_ray_x, cur_ray_y, player_id)){
//				sound_play(dingsnd);
//			}
			with (asset_get("oPlayer")){
				if (id != other.player_id && position_meeting(ray_x, other.y+ray_tmp_y, id)){
//					if (place_meeting(cur_ray_x, cur_ray_y, id)){
					if (!rain_hit[player-1] && !invincible && invince_time == 0 && state != PS_RESPAWN && state != PS_DEAD && !ar_rain_immune){
//						sound_play(dingsnd);
						var pidcopy = other.player_id;
						ar_rain = ar_rain + 1;
						rain_hit[player-1] = true;
						opponent_y = y-(char_height+(floor(char_height/3)));
						if (ar_rain == ar_rain_max) {
							sound_play(acidhitsnd);
							//if (pidcopy.runeD){
							//	poison = clamp(poison+1, 0, 4);
							//}
							take_damage( player, other.player, 2 );
							spawn_hit_fx( x, y-floor(char_height/2), 116 );
							ar_rain = 0;
						}
						if (state==PS_PARRY){ //the "fake parry" here
							if (window==1){
								window_timer = 0;
								hitpause = true;
								hitstop = 10;
								hitstop_full = 10;
								hsp = 0;
								vsp = 0;
								old_hsp = 0;
								old_vsp = 0;
								other.arc_cooldown = 230//250
								spawn_hit_fx( other.x, other.y-16, 116 );
								var tmp_id = other.player_id
								var pass_rainhitvfx = other.rainhitvfx
								var pass_id = other
								parry_got = true;
								invincible = true;
								invince_time = 60;
								sound_play(asset_get("sfx_parry_success"))
								tmp_id.fakeparry_got = true;
								tmp_id.fakeparry_id = id;
								if (url == tmp_id.url){
									sound_stop(sound_get("SE034_low"));
									sound_play(sound_get("SE031_low"));
								}
								with (obj_article3){
									if (player_id==tmp_id){
										if (ar_a3_type == 0){
											spawn_hit_fx( x, y, pass_rainhitvfx );
											pass_id.vsp = -6;
											instance_destroy(id);
										}
									}
								}
								
							}
						}
						
					}
				} //player_if_end
					if (id == other.player_id && position_meeting(ray_x, other.y+ray_tmp_y, id)){
						if (!rain_hit[player-1]){
//							sound_play(dingsnd);
							rain_hit[player-1] = true;
							/*if (burned){
								burn_timer+=5;
							}
							if (bubbled){
								bubble_time-=3;
							}
							if ((attack == 8 || attack == 7 || attack == 9)&&strong_charge > 0&&strong_charge < 58&&state==6){
								strong_charge+=1;
							}*/
						}
					} //player_if_end
			}
			ray_tmp_y = ray_tmp_y + 30;
//		if (rain_hit_gfx && random_func( 1+ray_x_n, 3, true ) == 1){
//			spawn_hit_fx( (ray_x+(random_func( 1+ray_x_n, 8, true )-4)), (opponent_y+(random_func( 2+ray_x_n, 8, true )-4)), rainhitvfx );
//			rain_hit_gfx = false;
//		}
		}
		//crouch while ardev is on to show horizontal ray
		if (variable_instance_exists(player_id, "ardev")){
			if (player_id.ardev==1&&player_id.state==32){
			spawn_hit_fx( ray_x, y+ray_tmp_y, 18 );
			}
		}
		ray_tmp_y = 30;
		ray_x_n++;
	}
}
	
	
	
	
	
	
	
	
	
	
}

// // // // IDLE EXPIRED
var idle_max = 16;
if (idle_cycle >= idle_max && state == 1){
	if (arc_cooldown==0){
		state = 2;
		state_timer = 0;
		sound_play(asset_get("sfx_bubblepop"));
	}
	}

//start idleloop charge  lightning disappear
//0-3:4 4-9:6    10-12:3 13-17:5   18-21:4

// // // // DISAPPEARING
var poof_time = 16;
if (state == 2){
    image_index = 18 + state_timer * 4 / poof_time;
    if (state_timer == poof_time){
		with (asset_get("oPlayer")){
			if (id == other.player_id){
				arc_active = false;
				arc_cooldown = false;
			}
		}
        instance_destroy();
        exit;
    }
}

// // // // LIGHTNING
var charge_time = 32;
if (state == 3){
    image_index = 10 + state_timer * 3 / charge_time;
	if (state_timer == 1){
		arc_faircharge = 0;
	}
    if (state_timer == charge_time){
		sound_stop( sound_get( "scopCDC" ) );
		sound_play( sound_get( "lightning2" ) );
		sound_play( sound_get( "elec" ) );
		var lg_temp_y = 30;
		var max_temp_y = 300;
		//uncomment these to re-activate thruplat
		if (!arc_thruplat){
			while ((lg_temp_y < max_temp_y) && (!position_meeting(x,y+lg_temp_y, asset_get ("par_block"))) && (!position_meeting(x,y+lg_temp_y, asset_get("par_jumpthrough")))){
				lg_temp_y++;
			}
		}else{
			while ((lg_temp_y < max_temp_y) && (!position_meeting(x,y+lg_temp_y, asset_get ("par_block")))){
				lg_temp_y++;
			}
		}
		var ARLightn = instance_create(x, y+(floor(lg_temp_y/2)), "obj_article2"); //y-42
		ARLightn.player_id = player_id;
		ARLightn.player = player;
//		ARLightn.spr_dir = spr_dir;
		ARLightn.dista_y = lg_temp_y;
		ARLightn.r_dista_y= lg_temp_y;
		state = 4;
        state_timer = 0;
    }
}

//start idleloop charge  lightning disappear
//0-3:4 4-9:6    10-12:3 13-17:5   18-21:4

// // // // LIGHTNING END
var lightning_time = 23;
if (state == 4){
    image_index = 13 + state_timer * 5 / lightning_time;
    if (state_timer == lightning_time){
		with (asset_get("oPlayer")){
			if (id == other.player_id){
				arc_active = false;
			}
		}
        instance_destroy();
        exit;
    }
}

// // // // OFFSTAGE DETECT

//referencely stolen from guadua
//    with (asset_get("pHitBox")){
//        if (player_id == other.player_id && (attack == AT_DAIR) && place_meeting(x,y,other.id)){
//            other.vsp = 20;
//        }
//	}
//this was a leftover from my attempt at something.
//it's been reverted now

//NEEDS POLISHING HERE:
//if it hits the ledge it should 'bounce' to direction...?

//var stage_x = get_stage_data( SD_X_POS );
//var stage_w = get_stage_data( SD_WIDTH );

//if ((x + 12) < stage_x || (x - 12) > stage_w + stage_x){
//if (state == 1){
//vsp = vsp + 0.04;
//}
//if (state == 4){
//vsp = 0;
//}
//if (state == 3 || state == 2){
//vsp = vsp / 1.1;
//}
//}
//}

// // // // DESTROY BY BLASTZONE
var stage_y = get_stage_data( SD_Y_POS );
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (stage_y + stage_b < y){
		with (asset_get("oPlayer")){
			if (id == other.player_id){
				arc_active = false;
				arc_cooldown = false;
			}
		}
		sound_play(asset_get( "sfx_bubblepop" ));
        instance_destroy();
        exit;
}

// // // // OFFSTAGE DETECT TAKE 2

	//6. check from leftmost, center, and rightmost of the cloud size
	//7. i will refer to them as 0,0,0 respectively
	//8. when 1,1,0 it would mean rightmost isn't detecting a floor within set detection range, but center is still detecting a floor so it should shift itself to left slowly
	//9. when 0,1,1 it would mean leftmost is over a pit but center is still over a floor so it should shift itself to right slowly
	//10. when 1,0,0 or 0,0,1 it means rightmost(or leftmost) and center isn't detecting a floor, so it should start getting affected by gravity
	//11. when 0,0,0 it straight up means it's offstage so it should falling down
	//12. when 1,1,1 it's stable over floor so do nothing
	//13. when 0,1,0 it's in a weird spot so might as well fall

//		if (arc_lm == 1 && arc_c == 1 && arc_rm == 1){
//			sound_play(sound_get("DING"));
//		}
//		if (arc_lm == 0 && arc_c == 0 && arc_rm == 0){
//			sound_play(sound_get("uh_oh"));
//		}

	if (state == 1){
if (arc_c == 1) {
	if (arc_lm == 1 && arc_rm == 1) { // 111 12.
//		if (vsp > 0){
//			// larger than - so if it's falling
//			vsp = vsp + 1;
//		}
		if (vsp <= 0){
			//smaller than or equal to - so if it's rising or idle
		}
	}
	if (arc_lm == 1 && arc_rm == 0) { // 110 8. shift to LEFT
//		if (vsp > 0){
//			// larger than - so if it's falling
//			vsp = vsp + 1;
//		}
		if (state_timer % 5 == 0){
		x = x - 1; //plus is right
		}
	}
	if (arc_lm == 0 && arc_rm == 1) { // 011 9. shift to RIGHT
//		if (vsp > 0){
//			// larger than - so if it's falling
//			vsp = vsp + 1;
//		}
		if (state_timer % 5 == 0){
		x = x + 1; //plus is right
		}
	}
	if (vsp > 0){
	// larger than - so if it's falling
	vsp = vsp / 1.1;
		}
}

	if (arc_lm == 0 && arc_c == 1 && arc_rm == 0) { // 010 12.
		vsp = vsp + 0.03;
	}

if (arc_c == 0) {

//	if (arc_lm == 1 && arc_rm == 1) { // 101 basically 13.
//		vsp = vsp + 0.04;
//	}
//	if (arc_lm == 1 && arc_rm == 0) { // 100 10. gravity
//		vsp = vsp + 0.04;
//	}
//	if (arc_lm == 0 && arc_rm == 1) { // 001 10. gravity
//		vsp = vsp + 0.04;
//	}
//	if (arc_lm == 0 && arc_rm == 0) { // 000 11. gravity
//		vsp = vsp + 0.04;
//	}
	//oops that basically means when center is 0 it can just fall down basically.. so comment everything out then
		vsp = vsp + 0.03;
}
	}
	
	if (state == 4 && vsp != 0){
	vsp = 0;
	}
	if ((state == 3 || state == 2) && vsp != 0){
	vsp = vsp / 1.1;
	}
	if (state == 5 && vsp < 0 && state_timer > 10){
	if (state_timer % 5 == 0){
	vsp = vsp / 1.1;
	}
	}

//that was a lot of text, all for nothing
//but hey, what works - works, right...?

// // // // GROUND BOUNCE
if (!free) {
	if (state != 5){
	if (x < (room_width / 2)){
	vsp = vsp - 10;
	hsp = hsp - 6;
	} else {
	vsp = vsp - 10;
	hsp = hsp + 6;
	}
	}
	if (state == 5){
	vsp = vsp - 19;
	state_timer = 10;
	}
	sound_play(asset_get("sfx_absa_jump"));
}

if (vsp < 0) {
	vsp = vsp + 1;
}

if (state != 3 || state != 4){
if (hsp < 0) {
	hsp = hsp + 0.5;
}
if (hsp > 0) {
	hsp = hsp - 0.5;
}
}

if (state == 3){
if (hsp < 0) {
	hsp = hsp / 1.07;
}
if (hsp > 0) {
	hsp = hsp / 1.07;
}
}

if (state == 4){
if (hsp != 0) {
	hsp = 0;
}
}

// // // // HITBOX INTERACT
//spaghetti... what mess

if (state == 1){
if (arc_cooldown == 0){
	var archit = 0
	
	//enemy
	/*
	var elecsound = sound_get("elec");
    with (asset_get("pHitBox")){
		if (place_meeting(x,y,other.id)){
			if (player_id != other.player_id && !player_id.hitpause){
				if (type == 1){
					sound_play(asset_get( "sfx_bubblepop" ));
					sound_play(asset_get("sfx_blow_medium3"));
					player_id.has_hit = true;
					player_id.old_hsp = player_id.hsp;
					player_id.old_vsp = player_id.vsp;
					player_id.hitpause = true;
					player_id.hitstop_full = 6;
					player_id.hitstop = 6;
					if (other.arc_faircharge = 0){
						spawn_hit_fx( other.x, other.y, 305 );
						other.state = 2;
						other.state_timer = 0;
					}else{
						spawn_hit_fx( other.x, other.y, 305 );
						sound_play(elecsound);
						other.state = 5;
						other.state_timer = 0;
						other.arc_faircharge--;
					}
				}
			}
		}
	}*/
	//FTILT
    with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_FTILT && hbox_num == 2 && place_meeting(x,y,other.id) && !player_id.hitpause){
            other.vsp = -15;
//			spawn_hit_fx( x, y, 27 );
			sound_play(asset_get("sfx_absa_jump"));
			sound_play(asset_get("sfx_blow_medium2"));
			other.state = 5;
			other.state_timer = 0;
			archit = 1;
        }
	}
	//DAIR
	with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_DAIR && hbox_num == 2 && place_meeting(x,y,other.id) && !player_id.hitpause){
			if (other.arc_faircharge <= 1 && archit == 0){
				other.vsp = 15;
//				spawn_hit_fx( x, y + 8, 27 );
				sound_play(asset_get("sfx_blow_medium3"));
				sound_play(sound_get("elec"));
				if (other.arc_faircharge == 0 && !player_id.runeK){
					sound_play(sound_get("Charge1"));
				}
				if (other.arc_faircharge == 1 || player_id.runeK){
					sound_play(sound_get("Charge2"));
				}
				other.state = 5;
				other.state_timer = 0;
				if (player_id.runeK){
				other.arc_faircharge = 2;
				}else{
				other.arc_faircharge = other.arc_faircharge + 1;
				}
				archit = 2;
			}
			if (other.arc_faircharge == 2 && archit == 0){
				other.vsp = 10;
//				spawn_hit_fx( x, y + 8, 27 );
				sound_play(asset_get("sfx_blow_medium3"));
				sound_play(sound_get("elec"));
				sound_play(sound_get("scopCDC"));
				other.state = 3;
				other.state_timer = 0;
				other.arc_faircharge = 0;
				archit = 2;
				//other.arc_thruplat = true;
			}
        }
	}
	//USTRONG
	with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_USTRONG && hbox_num == 1 && place_meeting(x,y,other.id) && !player_id.hitpause){
			if (other.arc_faircharge <= 1 && archit == 0){
				other.vsp = -18;
				other.hsp = 8 * spr_dir;
				spawn_hit_fx( x, y + 8, 302 );
				sound_play(asset_get("sfx_blow_heavy2"));
				other.state = 5;
				other.state_timer = 0;
				archit = 2;
			}
			if (other.arc_faircharge == 2 && archit == 0){
				other.vsp = -28;
				other.hsp = 10 * spr_dir;
				spawn_hit_fx( x, y + 8, 302 );
				sound_play(asset_get("sfx_blow_heavy2"));
				sound_play(sound_get("elec"));
				sound_play(sound_get("scopCDC"));
				other.state = 3;
				other.state_timer = 0;
				other.arc_faircharge = 0;
				archit = 2;
				//other.arc_thruplat = true;
			}
        }
	}
	//BAIR
	with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_BAIR && hbox_num == 1 && place_meeting(x,y,other.id) && !player_id.hitpause){
			if (other.arc_faircharge <= 1 && archit == 0){
				other.vsp = -4;
				other.hsp = 9 * (spr_dir * -1);
				spawn_hit_fx( x, y + 8, 27 );
				sound_play(asset_get("sfx_blow_heavy2"));
				sound_play(sound_get("elec"));
				if (other.arc_faircharge == 0 && !player_id.runeK){
					sound_play(sound_get("Charge1"));
				}
				if (other.arc_faircharge == 1 || player_id.runeK){
					sound_play(sound_get("Charge2"));
				}
				other.state = 5;
				other.state_timer = 0;
				if (player_id.runeK){
				other.arc_faircharge = 2;
				}else{
				other.arc_faircharge = other.arc_faircharge + 1;
				}
				archit = 1;
			}
			if (other.arc_faircharge == 2 && archit == 0){
				other.vsp = -6;
				other.hsp = 14 * (spr_dir * -1);
				spawn_hit_fx( x, y + 8, 27 );
				sound_play(asset_get("sfx_blow_heavy2"));
				sound_play(sound_get("elec"));
				sound_play(sound_get("scopCDC"));
				other.state = 3;
				other.state_timer = 0;
				other.arc_faircharge = 0;
				archit = 2;
				//other.arc_thruplat = true;
			}
        }
	}
	//UAIR
	with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_UAIR && hbox_num == 2 && place_meeting(x,y,other.id) && !player_id.hitpause){
			if (other.arc_faircharge <= 1 && archit == 0){
				other.vsp = -7;
				other.hsp = 4 * spr_dir;
				sound_play(asset_get("sfx_blow_medium3"));
				sound_play(sound_get("elec"));
				if (other.arc_faircharge == 0 && !player_id.runeK){
					sound_play(sound_get("Charge1"));
				}
				if (other.arc_faircharge == 1 || player_id.runeK){
					sound_play(sound_get("Charge2"));
				}
				other.state = 5;
				other.state_timer = 12;
				if (player_id.runeK){
				other.arc_faircharge = 2;
				}else{
				other.arc_faircharge = other.arc_faircharge + 1;
				}
				archit = 1;
			}
			if (other.arc_faircharge == 2 && archit == 0){
				other.vsp = -16;
				other.hsp = 6 * spr_dir;
				sound_play(asset_get("sfx_blow_medium3"));
				sound_play(sound_get("elec"));
				sound_play(sound_get("scopCDC"));
				other.state = 3;
				other.state_timer = 0;
				other.arc_faircharge = 0;
				archit = 2;
				//other.arc_thruplat = true;
			}
        }
	}
	//NAIR
	with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_NAIR && hbox_num == 2 && place_meeting(x,y,other.id) && !player_id.hitpause){
			if (other.arc_faircharge <= 1 && archit == 0){
				other.hsp = 6 * spr_dir;
				sound_play(asset_get("sfx_blow_medium3"));
				sound_play(sound_get("elec"));
				if (other.arc_faircharge == 0 && !player_id.runeK){
					sound_play(sound_get("Charge1"));
				}
				if (other.arc_faircharge == 1 || player_id.runeK){
					sound_play(sound_get("Charge2"));
				}
				other.state = 5;
				other.state_timer = 12;
				if (player_id.runeK){
				other.arc_faircharge = 2;
				}else{
				other.arc_faircharge = other.arc_faircharge + 1;
				}
				archit = 1;
			}
			if (other.arc_faircharge == 2 && archit == 0){
				other.hsp = 8 * spr_dir;
				sound_play(asset_get("sfx_blow_medium3"));
				sound_play(sound_get("elec"));
				other.state = 5;
				other.state_timer = 12;
				archit = 2;
			}
        }
	}
	//FAIR
	with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_FAIR && hbox_num == 1 && place_meeting(x,y,other.id) && !player_id.hitpause){
			spawn_hit_fx( x, y, 113 );
			if (other.arc_faircharge <= 1 && archit == 0){
				other.vsp = -2;
				other.hsp = 5 * spr_dir;
				sound_play(asset_get("sfx_blow_heavy2"));
				sound_play(sound_get("elec"));
				if (other.arc_faircharge == 0 && !player_id.runeK){
					sound_play(sound_get("Charge1"));
				}
				if (other.arc_faircharge == 1 || player_id.runeK){
					sound_play(sound_get("Charge2"));
				}
				other.state = 5;
				other.state_timer = 22;
				if (player_id.runeK){
				other.arc_faircharge = 2;
				}else{
				other.arc_faircharge = other.arc_faircharge + 1;
				}
				archit = 2;
			}
//			if (other.arc_faircharge == 1 && archit == 0){
//				other.vsp = -2;
//				other.hsp = 2 * spr_dir;
//				sound_play(asset_get("sfx_blow_heavy2"));
//				sound_play(sound_get("elec"));
//				sound_play(sound_get("Charge2"));
//				other.state = 5;
//				other.state_timer = 22;
//				other.arc_faircharge = other.arc_faircharge + 1;
//				archit = 2;
//			}
			if (other.arc_faircharge == 2 && archit == 0){
				other.vsp = -6;
				other.hsp = 24 * spr_dir; //16
				sound_play(asset_get("sfx_blow_heavy2"));
				sound_play(sound_get("elec"));
				sound_play(sound_get("scopCDC"));
				other.state = 3;
				other.state_timer = 0;
				other.arc_faircharge = 0;
				archit = 2;
				//other.arc_thruplat = true;
			}
        }
	}
	//HITPAUSE
	if (archit = 1){
		with (asset_get("oPlayer")){
			if (id == other.player_id){
				has_hit = true;
				hitpause = true;
				hitstop = 3;
				hitstop_full = 3;
				old_hsp = hsp;
				old_vsp = vsp;
//				sound_play(sound_get("DING"));
			}
		}
		spawn_hit_fx( x, y, 27 );
		archit = 0;
	}
	if (archit = 2){
		with (asset_get("oPlayer")){
			if (id == other.player_id){
				has_hit = true;
				hitpause = true;
				hitstop = 7;
				hitstop_full = 7;
				old_hsp = hsp;
				old_vsp = vsp;
//				sound_play(sound_get("DING"));
			}
		}
		spawn_hit_fx( x, y, 27 );
		archit = 0;
	}
}
}//hitbox interact end

var stun_time = 32;
if (state == 5){
    image_index = 4 + state_timer * 2 / stun_time;
    if (state_timer == stun_time){
		state = 1;
		state_timer = 0;
    }
}

//center 58 54
//top 35
//left 27
//right 86
//bottom 66
	// 58 (center) - 27 (left) = 31
	// 86 (right) - 58 (center) = 28
	// l=29=29
	// r=87=29
//vert 31
//hori 58

if (arc_faircharge == 2){
	if (state_timer % 10 == 0){
//	random_func( 1, 100, true );
	var afcr1 = x + ((random_func( 3, 30, true ))-15)
	var afcr2 = y + ((random_func( 4, 20, true ))-10)
	spawn_hit_fx( afcr1, afcr2, 21 );
//	spawn_hit_fx( x, y, 20 );
	}
}

if (arc_faircharge == 1){
	if (state_timer % 16 == 0){
//	random_func( 1, 100, true );
	var afcr1 = x + ((random_func( 3, 58, true ))-29)
	var afcr2 = y + ((random_func( 4, 30, true ))-15)
	spawn_hit_fx( afcr1, afcr2, 20 );
//	spawn_hit_fx( x, y, 20 );
	}
}

//	with (asset_get("obj_article3")){
//	if (player_id != other.player_id && place_meeting(x,y,other.id)){
//		other.state = 2;
//		other.state_timer = 0;
//		sound_play(asset_get("sfx_bubblepop"));
//	}
//	}

/*
*/


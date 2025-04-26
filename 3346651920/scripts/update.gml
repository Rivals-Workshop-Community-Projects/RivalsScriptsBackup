//update

if (object_index != asset_get("oTestPlayer")){
	if (get_synced_var( player )!=666){
		set_synced_var( player, 666 );
		//day_one_special_intro = true;//nvm i'll let intro be always available
	}
	if (DAY_ONE_MODE){
		if (state!=PS_SPAWN){
		DAY_ONE_MODE = false;
		set_ui_element( UI_HUD_ICON, sprite_get("_hud_real") );
		}
	}
}
//reset stuff for dev
/*
set_synced_var( player, 0 );
set_ui_element( UI_HUD_ICON, asset_get("empty_sprite") );
*/

if (state==PS_WALK_TURN){
	if (left_down&&right_down){
		state_timer = 1;
	}
}

if (fsp_did){
	move_cooldown[AT_FSPECIAL] = 2;
	if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
		fsp_did = false;
		move_cooldown[AT_FSPECIAL] = 0;
	}
}
if (dsp_real_cd>0){
	dsp_real_cd--;
}

if (free){
	move_cooldown[AT_DSPECIAL] = 2;
	if (collision_line(x, y, x, y+dsp_air_max_distance, asset_get("par_block"), false, false)){
		move_cooldown[AT_DSPECIAL_AIR] = 0;
	}else{
		move_cooldown[AT_DSPECIAL_AIR] = 2;
	}
}else if (dsp_real_cd!=0){
	move_cooldown[AT_DSPECIAL] = dsp_real_cd;
}
if (dsp_air_try_cd>0){
	dsp_air_try_cd--;
}
if (dsp_air_try_cd_timer>0){
	dsp_air_try_cd_timer--;
}

if (slender_staticheavy_sound_id==-4){
	slender_staticheavy_sound_id = sound_play(sound_get("staticheavy"),true);
	if (gimme_20_dollars){ slender_staticmedium_sound_id = sound_play(sound_get("gimm20dollars"),true); }
	else{ slender_staticmedium_sound_id = sound_play(sound_get("staticmedium"),true); }
	sound_volume(slender_staticheavy_sound_id,0,0);
	sound_volume(slender_staticmedium_sound_id,0,0);
}

if (state==PS_DASH_START){
	if (state_timer==1){
		sound_play(asset_get("sfx_syl_dstrong"),false,noone,0.5,1.2);
		sound_play(asset_get("sfx_syl_dstrong"),false,noone,0.4,0.8);
		sound_play(asset_get("sfx_springswitch"),false,noone,0.4,1.6);
	}
}


//STATIC STUFF

if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
	if(attack==AT_JAB && jab_timer>jab_timer_staticstart){
		if (window<7){
var is_it_heavy_distance = false;
var is_it_medium_distance = false;
with(oPlayer){
	if (id!=other.id){
		if ((state==PS_RESPAWN&&visible==false)||state==PS_DEAD){}else{//dont do this if invisible while respawn
		/*if (point_distance(x, y, other.x, other.y-66)<other.dist_m_static){
			is_it_medium_distance = true;
			if (get_gameplay_time()%50==0){
				take_damage( player, other.player, 1 );
			}
		}*/
		if ( get_player_team( other.player ) != get_player_team( player ) ){
			if (point_distance(x, y, other.x, other.y-66)<other.dist_h_static){
				is_it_heavy_distance = true;
				if (get_gameplay_time()%5==0){
					take_damage( player, other.player, 2 );
				}
				if (slender_haunt == -4){
					slender_buildup+=1.075;
				}
			}
		}
		//you might notice that this doesn't check for invincibility.... yes, it is NTENTIONAL
		}
		
		
	}
}
if (is_it_heavy_distance==true){
	slender_staticheavy_volume=clamp(slender_staticheavy_volume+0.03, 0, 0.4);
}else{
	slender_staticheavy_volume=clamp(slender_staticheavy_volume-0.01, 0, 0.4);
}
sound_volume(slender_staticheavy_sound_id,slender_staticheavy_volume,10);

//if (is_it_medium_distance==true){
	slender_staticmedium_volume=clamp(slender_staticmedium_volume+0.01, 0, 0.5);
//}else{
//	slender_staticmedium_volume=clamp(slender_staticmedium_volume-0.01, 0, 0.5);
//}
sound_volume(slender_staticmedium_sound_id,slender_staticmedium_volume,10);
		}else{
	slender_staticheavy_volume=clamp(slender_staticheavy_volume-0.02, 0, 0.4);
	slender_staticmedium_volume=clamp(slender_staticmedium_volume-0.02, 0, 0.7);
	sound_volume(slender_staticheavy_sound_id,slender_staticheavy_volume,10);
	sound_volume(slender_staticmedium_sound_id,slender_staticmedium_volume,10);
		}
	}
}
if ((state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR)&&attack==AT_JAB){
}else{
	//print("a")
	slender_staticheavy_volume=clamp(slender_staticheavy_volume-0.05, 0, 0.4);
	slender_staticmedium_volume=clamp(slender_staticmedium_volume-0.05, 0, 0.7);
	sound_volume(slender_staticheavy_sound_id,slender_staticheavy_volume,10);
	sound_volume(slender_staticmedium_sound_id,slender_staticmedium_volume,10);
}

//static stuff over

var vwoom = sound_get("ETCSE_00000")
with(oPlayer){
	if (id!=other.id){
		if (slender_haunt == -4){
			if (slender_buildup>0){
				if (!hitpause){
					slender_buildup-=0.075;
				}
			}
			if (slender_buildup>slender_buildup_max){
				slender_buildup = 0;
				sound_play(vwoom)
				sound_play(vwoom,false,noone,0.5)
				slender_haunt = other.id;
				slender_haunt_timer = 400;
			}
		}
		if (state==PS_RESPAWN || state==PS_DEAD){
			slender_buildup = 0;
		}
	}
}

if (state==PS_AIR_DODGE){
	if (state_timer==2){
		if (!hitpause){
			summon_afterimage(0, 0);
			sound_play(sound_get("staticmedium_short"),false,noone,0.5,3)
			sound_play(sound_get("distort_4"),false,noone,0.55,3)
		}
	}
}


if (state==PS_ROLL_BACKWARD||state==PS_ROLL_FORWARD){
	if (state_timer==1){
		if (!hitpause){
			summon_afterimage(0, 0);
			sound_play(sound_get("staticmedium_short"),false,noone,0.5,3)
			sound_play(sound_get("tta_20"),false,noone,0.5,5)
		}
	}
}


if (state==PS_WAVELAND){
	if (state_timer==1){
		if (!hitpause){
			summon_afterimage(0, 0);
			sound_play(sound_get("cut_2"),false,noone,0.4)
			sound_play(sound_get("tta_5"),false,noone,0.55,1.5)
		}
	}
}



//slender sickness stuff ?


if (background_drawer_id==-4){
	background_drawer_id = instance_create( 0, 0, "obj_article2" );
	//print("background drawer "+string(background_drawer_id))
}
var pianon = sound_get("piano");
with(oPlayer){
	if (id != other.id){
		if (false){
			if (state==PS_HITSTUN||state==PS_HITSTUN_LAND){//taken atk
				if (hitpause){
					if (hitstop == hitstop_full){
					}
				}
			}
		}
		if (slender_haunt == other.id){
			if (slender_haunt_timer>0){//slendersickness active
				
				if (state==PS_HITSTUN||state==PS_HITSTUN_LAND){//taken atk
					if (hitpause){
						if (hitstop == hitstop_full){//halve the taken hitpause
							hitstop = round(hitstop/2);
							hitstop_full = round(hitstop_full/2);
							hit_player_obj.hitstop = round(hit_player_obj.hitstop/2);
							hit_player_obj.hitstop_full = round(hit_player_obj.hitstop_full/2);
							//print("hitpause thing ran")
						}
					}
				}
				
				if (!hitpause){
					if (get_gameplay_time()%4==0){
						set_player_damage( player, get_player_damage( player )+11 )//1
					}
					if ((get_gameplay_time()+2)%4==0){
						set_player_damage( player, clamp(get_player_damage( player )-11,0,99999999/*idk*/) )//1
					}
				}
				
				if (temp_level==0){//ONLY IF not a CPU...
				if (state==PS_IDLE||state==PS_WALK||state==PS_CROUCH){
					slender_haunt_standstill++;
					if (slender_haunt_standstill > slender_haunt_standstill_max){
						slender_haunt_standstill = 0;
						sound_play(pianon,false,noone,0.75);
						was_parried = true;
						state = PS_PRATLAND;
						state_timer = 0;
						hsp = 0;
						vsp = 0;
						old_hsp = 0;
						old_vsp = 0;
						hitpause = true;
						hitstop = 60;
						hitstop_full = 60;
						slender_haunt = -4;
						slender_haunt_timer = 0;
					}
				}else{
					slender_haunt_standstill = 0;
				}
				}
				
				if (state==PS_RESPAWN || state==PS_DEAD){
					slender_haunt = -4;
					slender_haunt_timer = 0;
				}
				
			}else{//timer ran out
				//print("welp there goes timer")
				slender_haunt = -4;
			}
		}
	}
}

if (static_hitpause!=-4){
	if (!hitpause){
		static_hitpause = -4;
	}
}

var teleportthing = -4;
with(pHitBox){
	if (player_id != other.id){
		if (type==2){
			if (!variable_instance_exists(id,"slender_sickness_check")){
				if (player_id.slender_haunt == other.id){
					if (player_id.slender_haunt_timer>0){
						slendersick_proj = true;
					}
				}
				slender_sickness_check = true;
			}
			if (variable_instance_exists(id,"slendersick_proj")){
				if (place_meeting(x, y, other.hurtboxID)){
					print("hitbox overlap happened")
					teleportthing = player_id;
				}
			}
		}
		
	}
}//with
if (teleportthing!=-4){
	if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
		if (attack==AT_DSPECIAL||attack==AT_JAB||(attack==AT_FSPECIAL&&super_armor)){
			static_hitpause = hit_player_obj;
				sound_play(sound_get("antici_1"));
				sound_play(sound_get("distort_4"),false,noone,0.5);
				sound_play(sound_get("distort_6"));
				sound_play(sound_get("ETCSE_00000"));
				//sound_play(sound_get("distort_ex_2"),false,noone,0.6);
				sound_play(sound_get("distort_ex_2"));
			hit_player_obj.hitstop=40
			hit_player_obj.hitstop_full=40
			hitstop=40
			hitstop_full=40
				
			summon_afterimage(0, 0);
			spr_dir = teleportthing.spr_dir;
			
			if (position_meeting(teleportthing.x - (30*teleportthing.spr_dir), y+1, asset_get("par_block"))||position_meeting(teleportthing.x - (30*teleportthing.spr_dir), y+1, asset_get("par_jumpthrough"))){
				x = teleportthing.x - (30*teleportthing.spr_dir);
			}else{
				x = teleportthing.x
			}
			y = teleportthing.y;
			invincible = true;
			invincible_time = 1;
			
			if (get_player_color( player ) == 21){//ender
				sound_play(sound_get("z_tele_ender"),false,noone,0.8);
				sound_play(sound_get("z_tele_ender"),false,noone,0.8);
				sound_play(sound_get("piano"),false,noone,0.75);
			}else{
				sound_play(sound_get("piano"));
				sound_play(sound_get("cut_5"));
			}
			if (teleportthing.slender_haunt == -4){teleportthing.slender_buildup+=20;}
			teleportthing.was_parried = true;
			teleportthing.state = PS_PRATLAND;
			teleportthing.state_timer = 0;
			teleportthing.hsp = 0;
			teleportthing.vsp = 0;
			/*teleportthing.old_hsp = teleportthing.hsp;
			teleportthing.old_vsp = teleportthing.vsp;
			teleportthing.hitpause = true;
			teleportthing.hitstop = 30;
			teleportthing.hitstop_full = 30;*/
			with(teleportthing){
				attack_end()
				destroy_hitboxes()
			}
			
			dsp_real_cd = 120;
			state = PS_SPAWN;
			state_timer = 100;
			attack_end();
		}
	}
}





sl_prev_vsp = vsp
sl_prev_vsp_old = old_vsp
sl_prev_hsp = hsp
sl_prev_hsp_old = old_hsp
sl_prev_state = state
sl_prev_prev_state = prev_state
sl_prev_prev_prev_state = prev_prev_state
sl_prev_state_cat = state_cat
sl_prev_state_timer = state_timer
sl_prev_attack = attack
sl_prev_window = window
sl_prev_window_timer = window_timer
sl_prev_spr_dir = spr_dir
sl_prev_strong_charge = strong_charge













//=======================================================================================================================//


#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create( x, y, "obj_article1" );
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
aft_.spr_dir = spr_dir;
aft_.hsp = hsp/3*argument[0];
aft_.vsp = vsp/3*argument[1];
return aft_;




//update

if (col_check == false){
	//a
	switch (get_player_color( player )){
		case 0://default
			body = sprite_get("main")
			body_filename = "main";
			set_victory_portrait(sprite_get("exp_portrait_0"));
		break;
		case 1://polkadot
			body = sprite_get("costume3")
			body_filename = "costume3";
			set_victory_portrait(sprite_get("exp_portrait_1"));
		break;
		case 2://pirate
			body = sprite_get("costume1")
			body_filename = "costume1";
			set_victory_portrait(sprite_get("exp_portrait_2"));
		break;
		case 3://ladygreen
			body = sprite_get("costume2")
			body_filename = "costume2";
			set_victory_portrait(sprite_get("exp_portrait_3"));
		break;
		case 4://steamguy
			body = sprite_get("costume4")
			body_filename = "costume4";
			set_victory_portrait(sprite_get("exp_portrait_4"));
		break;
		case 5://purplescarf
			body = sprite_get("costume7")
			body_filename = "costume7";
			set_victory_portrait(sprite_get("exp_portrait_5"));
		break;
		case 6://rex
			body = sprite_get("costume8")
			body_filename = "costume8";
			set_victory_portrait(sprite_get("exp_portrait_6"));
		break;
		case 7://redlady
			body = sprite_get("costume6")
			body_filename = "costume6";
			set_victory_portrait(sprite_get("exp_portrait_7"));
		break;
		case 8://minfinity
			body = sprite_get("costume5")
			body_filename = "costume5";
			set_victory_portrait(sprite_get("exp_portrait_8"));
		break;
		case 9://philipp NOT DONE//DONE NOW WOOOO
			body = sprite_get("costume9")
			body_filename = "costume9";
			set_victory_portrait(sprite_get("exp_portrait_9"));
		break;
		
		default: break;
	}
	
	col_check = true;
}

//jumping is current vel y - 350 * (higherJump ? 1.25 : 1) yada yada
if (state==PS_DOUBLE_JUMP && state_timer==0){
	vsp = clamp(e_prev_vsp, -3, 1) - exp_djump_speed; //exp_djump_speed is defined in init.gml
	sound_play(sound_get("put_down_softer"))
	dust_spawn(x, y-40, 15, false, 7, 6, 1)
	doublejumped = true;
	//(x, y, spread, horizontal, amount, pattern, type)
}
/*if (state==PS_DOUBLE_JUMP && state_timer==double_jump_time-1){
	sound_play(sound_get("pick_up_softer"))
}*/
if (state!=PS_DOUBLE_JUMP && doublejumped){
	sound_play(sound_get("pick_up_softer"))
	dust_spawn(x, y-20, 15, false, 3, 6, 1)
	double_rand = random_func( id%5, 9, true );
	doublejumped = false;
}
if (state==PS_AIR_DODGE && state_timer==1){
	sound_play(sound_get("put_down_softer"))
	dust_spawn(x, y-20, 15, false, 3, 6, 1)
}
if (state==PS_AIR_DODGE && state_timer==13){
	sound_play(sound_get("pick_up_softer"))
	invince_rand = random_func( id%5, 9, true );
	dust_spawn(x, y-20, 15, false, 3, 6, 1)
}
if (state==PS_WAVELAND && state_timer==1){
	invince_rand = random_func( id%5, 9, true );
}
if ((state==PS_DASH_START||state==PS_WALK) && state_timer==0){
	if (state==PS_DASH_START){
		sound_stop(asset_get("sfx_dash_start"))
		if (spr_dir == 1){
			dust_spawn(x, y, 4, true, 2, 4, 2)
			//(x, y, spread, horizontal, amount, pattern, type)
		}
		if (spr_dir == -1){
			dust_spawn(x, y, 4, true, 2, 5, 2)
			//(x, y, spread, horizontal, amount, pattern, type)
		}
	}
	if (runsound_cooldown==0){ sound_play(sound_get("footsteps")); runsound_cooldown = 40 }
}
if (state==PS_WALK && state_timer==2){
	walkin = true;
	sound_play(sound_get("put_down_softer"));
	dust_spawn(x, y-20, 15, false, 7, 6, 1)
		if (spr_dir == 1){
			dust_spawn(x, y, 4, true, 2, 4, 2)
			//(x, y, spread, horizontal, amount, pattern, type)
		}
		if (spr_dir == -1){
			dust_spawn(x, y, 4, true, 2, 5, 2)
			//(x, y, spread, horizontal, amount, pattern, type)
		}
}
if (state!=PS_WALK && walkin){
	sound_play(sound_get("pick_up_softer"))
	dust_spawn(x, y-20, 15, false, 7, 6, 1);
	heavy_rand = random_func( id%5, 5, true );
	walkin = false;
}



if (runsound_cooldown>0){
	runsound_cooldown--;
}
if (state==PS_LAND && state_timer==1){
	if (fall_dur >= 25||e_prev_vsp >= 13){
		//print("yes")
		sound_stop(sound_get("colliding_soft"))
		sound_play(sound_get("colliding"))
		dust_spawn(x, y, 4, true, 4, 1, 1)
		//(x, y, spread, horizontal, amount, pattern, type)
	}else{
		dust_spawn(x, y, 12, true, 2, 3, 2)
		//(x, y, spread, horizontal, amount, pattern, type)
	}
}

//rise/fall dust code
if (state!=PS_RESPAWN&&
	!((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&(
	attack == AT_NTHROW||attack == AT_FTHROW||attack == AT_BTHROW
	||attack == AT_DTHROW||attack == AT_UTHROW))){
	if (free){
		if (vsp > 2 || vsp < 1){
			if (random_func( 9, 11, false )>9){
				dust_spawn(x, y, 15, false, 1, 2, 2)
				//(x, y, spread, horizontal, amount, pattern, type)
			}
		}
	}
}

if (vsp > 1){
	fall_dur++;
}else{
	fall_dur = 0;
}//28
if (state==PS_IDLE|| ((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&attack==AT_TAUNT) ){
	if (state_timer > 800){
		blink_time = 2
	}else{
		if (blink_time>0){
			blink_time--;
			if (blink_time==0){
				blink_cooldown = 80 + random_func( 8, 70, true );
			}
		}
		if (blink_cooldown>0){
			blink_cooldown--;
			if (blink_cooldown==0){
				blink_time = 10 + random_func( 4, 10, true );
			}
		}
	}
}else{
	blink_time = 0;
}

if (state==PS_SPAWN){
	if (state_timer<39){draw_indicator=false;}
	if (state_timer==39){dust_spawn(x, y-19, 19, false, 7, 6, 1);sound_play(sound_get("pick_up_softer"));draw_indicator=1}
}

if ((state!=PS_ATTACK_GROUND&&state!=PS_ATTACK_AIR)||attack!=AT_TAUNT){
	if (chair != -4){
		chair.state_timer = chair.state_end;
		chair = -4;
	}
}
if ((state!=PS_ATTACK_GROUND&&state!=PS_ATTACK_AIR)&&bouncy_track!=-4){
	bouncy_track.display_expire = true;
	bouncy_track = -4;
}
if ((state!=PS_ATTACK_GROUND&&state!=PS_ATTACK_AIR)&&fst_track[0]!=-4){
	for (var i = 0; i <= fst_track_amt; i += 1){
		if (fst_track[i]!=-4){
			fst_track[i].state_timer = fst_track[i].state_end;
			fst_track[i] = -4;
		}
	}
}
if (state==PS_ROLL_BACKWARD||state==PS_ROLL_FORWARD){
	if (window==0 && window_timer==2){ sparkle_spawn(x, y-30, 30, false, 6, 3, 0, 0);
	boost_mini = 0; sound_play(sound_get("boost_short"), false, noone, 0.5)}
	if (window==1){
		if (window_timer==13){ sparkle_spawn(x, y-30, 30, false, 6, 3, 0, 0);
		}else if (window_timer%3==0){ sparkle_spawn(x, y-30, 8, false, 1, 3, 0, 0); }
	}
}
if (state==PS_TECH_BACKWARD||state==PS_TECH_FORWARD){
	if (window==0 && window_timer==1){ sparkle_spawn(x, y-30, 30, false, 6, 3, 0, 0);
	boost_mini = 0; sound_play(sound_get("boost_short"), false, noone, 0.5)}
	if (window==1){
		if (window_timer==11){ sparkle_spawn(x, y-30, 30, false, 6, 3, 0, 0);
		}else if (window_timer%3==0){ sparkle_spawn(x, y-30, 8, false, 1, 3, 0, 0); }
	}
}
if (boost_mini!=-1){
	boost_mini++;
	if (boost_mini>=boost_mini_dur){
		boost_mini = -1;
	}
}



//practical code time

with (asset_get("obj_article_solid")){
    if (player_id == other.id){
		if (state_timer == state_end-1){
			if (moved){ sound_play(sound_get("pick_up_softer"));
			}else{
				sound_play(sound_get("drop_in_trash_softer"));
				if (!not_recover){
					//other.nsp_inc = 0;
					//other.nsp_remain++;
					//sound_play(sound_get("success_bling"),false,noone,0.8)
					//sparkle_spawn(other.x, other.y-30, 40, false, 6, 0, 0, 0) //(x, y, spread, horizontal, amount, type, horiz, vert)
				}else{sound_play(sound_get("drop_in_trash_softer"));}
			}
			dust_spawn(x, y, 19, false, 4, 6, 1);
			
		}
	}
}
with (asset_get("obj_article2")){
    if (player_id == other.id){
		if (state == 1){
			if (state_timer == 1){
				dust_spawn(x+(16*spr_dir), y-10, 9, false, 4, 3, 2);
				if (sent_player){dust_spawn(x+(16*spr_dir), y-10, 11, false, 7, 6, 1);}
			}
		}
		if (state == 2){
			if (state_timer == 18){
				sound_play(sound_get("drop_in_trash_softer"));
				dust_spawn(x, y, 19, false, 7, 6, 1);
			}
		}
	}
}
with (asset_get("pHitBox")){
	if (player_id == other.id){
		if (attack == AT_DSTRONG){
			if (hitbox_timer == length-1){
				sound_play(sound_get("drop_in_trash_softer"));
				dust_spawn(x, y+16, 18, true, 3, 6, 1);
				//dust_spawn(x, y, 19, false, 7, 6, 1);
			}
		}//dstr
		if (attack==AT_FSPECIAL){
			if (hbox_num==1){
				//print ("yeah?")
				var tmp_bl_id = instance_place(x, y, asset_get("obj_article_solid"))
				if ( tmp_bl_id!=-4 ){
					//print ("yeah yeah")
					if (tmp_bl_id.player_id == player_id){
						//print ("yeah yeah beebiss")
						if (tmp_bl_id.state_timer>20&&tmp_bl_id.state_timer<tmp_bl_id.state_end-4){
							tmp_bl_id.state_timer = tmp_bl_id.state_end-4;
						}
						player_id.hitpause = true;
						player_id.old_hsp = player_id.hsp;
						player_id.old_vsp = player_id.vsp;
						player_id.hitstop = 4;
						player_id.hitstop_full = 4;
						player_id.has_hit = true;
						player_id.window = 4;
						player_id.window_timer = 4;
						if (player_id.nsp_remain < 3){
							player_id.nsp_remain++;
							sound_play(sound_get("success_bling"),false,noone,0.8)
							sparkle_spawn(player_id.x, player_id.y-30, 40, false, 6, 0, 0, 0)
							player_id.nsp_inc = 0;
						}
						instance_destroy();
					}
				}
			}
		}//fsp
	}
}

if (nair_count_before_land>0&&!free){//if i land after nair
	nair_count_before_land = 0;
}
if (dtilt_c_cooldown>0){
	dtilt_c_cooldown--;
}
if (state==PS_LANDING_LAG&&attack==AT_UAIR){
	destroy_hitboxes()
}
if ((state==PS_HITSTUN_LAND||state==PS_HITSTUN)&&attack==AT_DATTACK){
	destroy_hitboxes()
}

clamp(nsp_remain,0,3)
if (nsp_remain < 3){
	nsp_inc++;
	if (nsp_inc>nsp_inc_max){
		nsp_remain++;
		sound_play(sound_get("success_bling"),false,noone,0.8)
		sparkle_spawn(x, y-30, 40, false, 6, 0, 0, 0) //(x, y, spread, horizontal, amount, type, horiz, vert)
		nsp_inc = 0;
	}
}
if (nsp_remain == 0){
	//move_cooldown[AT_NSPECIAL] = 2;
}
if (nsp_remain == 3){
	nsp_inc = 0;
}
if (nsp_locked>0){
	nsp_locked--;
}
if (usp_did){
	//print(string(move_cooldown[AT_USPECIAL]))
	move_cooldown[AT_USPECIAL] = 2;
	if ( (!free&&!place_meeting(x, y+1, asset_get("obj_article_solid")))||state==PS_WALL_JUMP||state==PS_HITSTUN ){
		//print("happened")
		usp_did = false;
	}
}
/*boostinit = false;
boostinit_timer = 0;
boostinit_max = 100;*/
if (boostinit){
	boostinit_timer++;
	if (boostinit_timer>=boostinit_max){
		boostinit = false;
		boostinit_timer = 0;
		sound_play(sound_get("success_bling"))
		if (boost_selected==1){
			boost_duration_max = 400;
			boost_duration = boost_duration_max;
		}
		if (boost_selected==2){
			boost_duration_max = 400;
			boost_duration = boost_duration_max;
		}
		if (boost_selected==3){
			boost_duration_max = 500;
			boost_duration = boost_duration_max;
		}
		if (boost_selected==4){
			boost_duration_max = 500;
			boost_duration = boost_duration_max;
		}
		//boost_duration = boost_duration_max;
	}
}
if (boost_duration>0){
	boost_duration--;
	if (boost_selected==1){
		set_view_position(x, y - (char_height / 2) );
	}
	if (boost_selected==2){//boost 2 - harmful heat
		//if (!hitpause){
			//create_hitbox( AT_DSPECIAL, 3, x, y )
			//boost_duration = 0;
			if (boost_duration%40==0||boost_duration==boost_duration_max-1){
				attack_end()
				create_hitbox( AT_DSPECIAL, 4, x, y-28 )
				sound_play(asset_get("sfx_burnapplied"),false,noone,0.7)
			}
			if (boost_duration%30==0){
				var scr_mid_w = room_width/2
				var scr_mid_h = room_height/2
				var rand_x = scr_mid_w-400+random_func( 1, 800, true )
				var rand_y = scr_mid_h-200+random_func( 2, 400, true )
				spawn_dust_fx( rand_x, rand_y, sprite_get("heat_ember"), 20 )
			}
		//}
	}
	if (boost_selected==3){//boost 3 - me roll moving
		if (!hitpause){
		if (state==PS_DASH||state==PS_WALK){
			if (state_timer%15){
				attack_end()
				create_hitbox( AT_DSPECIAL, 2, x, y-28 )
				hsp = clamp(hsp+(0.5*spr_dir), (dash_speed+1)*-1, dash_speed+1);
			}
		}
		}
	}
	if (boost_selected==4){//boost 4 - crumble jump
		if (!hitpause){
		if (state==PS_LANDING_LAG||state==PS_LAND){
			if (state_timer==1){
				create_hitbox( AT_DSPECIAL, 1, x, y-28 )
				shake_camera( 8, 3 )
				sound_play(asset_get("sfx_kragg_rock_shatter"))
				spawn_dust_fx( x, y, sprite_get("crumblejump"), 16 )
			}
		}
		}
	}
	if (boost_duration <= 0){
		sound_play(sound_get("boost-end"))
		boost_selected = 0;
	}
}

if (boost_duration&&boost_selected==2){
	if (heat_time<heat_max){
		heat_time++;
	}
}else{
	if (heat_time>0){
		heat_time--;
	}
}

if (grab_cooldown){
	grab_cooldown--;
}

//enemy override
with(asset_get("oPlayer")){
	if (id != other.id){
		if (exp_custom_hurt){
			if (state!=PS_HITSTUN){
				exp_custom_hurt = false;
				visible = true;
			}else{
				visible = false;
				if (state_timer>=hitstun-1){visible = true;}
			}
		}
	}
}









//these need to be the very last thing to be updated because of code order
e_prev_hsp = hsp;
e_prev_vsp = vsp;
e_previ_x = e_prev_x;
e_previ_y = e_prev_y;
e_prev_x = x;
e_prev_y = y;
//usp_did_prev2 = usp_did_prev;
//usp_did_prev = usp_did;


#define dust_spawn(x, y, spread, horizontal, amount, pattern, type) //dust_spawn(x, y, 15, false, 4, 0, 1)
//here i spawn dust
//dust_spawn(x, y, 15, false, 4, 0, 1)
//(x, y, spread, horizontal, amount, pattern, type)
var dx = round(argument0)
var dy = round(argument1)
var spw = argument2
var sph = (argument5==3)?1:(argument3)?2:argument2
var amt = clamp(argument4, 1, 7)
var ptn = argument5 //0 = spread, 1 = upward, 2 = still, 3 = tiny, 4 = left, 5 = right, 6 = semispread
var typ = argument6 //0/1 = big, 2 = small

for (var i = 0; i < amt; i += 1){//for

//hey future me, if you ever end up needing to tweak this
//
//i'm sorry
//- hyuponia 2021 08 02
var dID = instance_create(dx-spw+random_func( 1+i, spw*2, true ), dy-sph+random_func( 8+i, sph*2, true ), "obj_article1");
dID.dust_type = typ;
dID.hsp = (ptn == 6)? ((-1)+random_func( 1+i, 2, false )) : (ptn == 5)? ((3)+random_func( 1+i, -3, false )) : (ptn == 4)? ((-3)+random_func( 1+i, 3, false )) : (ptn == 3)? ((-1)+random_func( 1+i, 1, false )) : (ptn != 2)? ((-3)+random_func( 1+i, 6, false )) : 0;
dID.vsp = (ptn == 6)? ((-1)+random_func( 1+i, 2, false )) : (ptn == 3||ptn == 4||ptn == 5)? ((-1)+random_func( 8+i, 1, false )) : (ptn == 1)? ((-2)+random_func( 8, 1, false )) : (ptn != 2)?((-1.5)+random_func( 8+i, 3, false )) : 0;
if (ptn == 4||ptn == 5){dID.no_lerp=true;dID.state_end=20;}
if (ptn == 2){dID.image_alpha=0.5;dID.depth=1;}

}//for

/*
	spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-48+random_func( 8, 96, true ), particle1 );
	spawn_hit_fx( x-40+random_func( 2, 80, true ), y-(char_height/2)-48+random_func( 9, 96, true ), particle3 );
	spawn_hit_fx( x-40+random_func( 3, 80, true ), y-(char_height/2)-48+random_func( 10, 96, true ), particle2 );
	spawn_hit_fx( x-40+random_func( 4, 80, true ), y-(char_height/2)-48+random_func( 11, 96, true ), particle1 );
	spawn_hit_fx( x-40+random_func( 5, 80, true ), y-(char_height/2)-48+random_func( 12, 96, true ), particle3 );
	spawn_hit_fx( x-40+random_func( 6, 80, true ), y-(char_height/2)-48+random_func( 13, 96, true ), particle2 );
	spawn_hit_fx( x-40+random_func( 7, 80, true ), y-(char_height/2)-48+random_func( 14, 96, true ), particle2 );
*/


#define sparkle_spawn(x, y, spread, horizontal, amount, type, horiz, vert) //dust_spawn(x, y, 15, false, 4, 0, 1)
//here i spawn sparkle
//sparkle_spawn(x, y, 15, false, 4, 1, hsp, vsp)
//(x, y, spread, horizontal, amount, type, horiz, vert)
var dx = argument0
var dy = argument1
var spw = argument2
var sph = argument2
var amt = clamp(argument4, 1, 5)
var typ = argument5 //0/1 = big, 2 = small
var hrz = argument6 //hsp
var vrt = argument7 //vsp

for (var i = 0; i < amt; i += 1){//for
var sID = instance_create(dx-spw+random_func( 1+i, spw*2, true ), dy-sph+random_func( 8+i, sph*2, true ), "obj_article1");
sID.particle_type = 1;
sID.sparkle_type = typ;
sID.hsp = hrz;
sID.vsp = vrt
sID.state_end = 12;

}






















//print("Update start "+string(play)+" "+string(current_time));

init -= sign(init);
inactionable = inactionable & 1;
intangible = intangible & 1;
roughed = roughed & 1;
if init == 1 {
	init_kart();
}
h_in = 0;
v_in = 0;
k_in = 0;

var HSP = hsp, VSP = vsp, IMAGE_ANGLE = image_angle, X = x, Y = y, H_IN, V_IN, handbrake = false, ttime = get_gameplay_time(), gen_var;

p_in = min(++p_in, 0);
var time_total = 0;
if owner != noone && instance_exists(owner) {
	if ai_enabled == 0 {
		 if ("ai_target" in owner) {
			ai_enabled = 1;
		 } else ai_enabled = -1;
	}
	if ai_enabled {
		owner.custom_clone = true;
		owner.ai_disabled = true;
		update_kart_ai();
	} else {
//	print_debug("Input");
	v_in = owner.attack_down// - (owner.shield_down && !owner.jump_down);
	if !tap_jump {
		h_in = owner.right_down - owner.left_down;
	} else {
		if !owner.joy_pad_idle {
			//gen_var = angle_difference(owner.joy_dir, IMAGE_ANGLE);
			h_in = sign(-angle_difference(owner.joy_dir, IMAGE_ANGLE));
			//v_in = (abs(gen_var) < 150);
		}
	}
	if p_in >= 0 p_in = ((owner.jump_down || owner.strong_down) + (owner.jump_pressed || owner.right_strong_pressed || owner.up_strong_pressed || owner.down_strong_pressed || owner.left_strong_pressed)*2);
	if k_in >= 0 k_in = (owner.special_down + owner.special_pressed*2);
	handbrake_in = (handbrake_in+1) * owner.shield_down;
	owner.x = X; owner.y = Y; owner.hsp = 0; owner.vsp = 0;
	owner.mask_index = obj_stage_main.hfx[7];
	
	if owner.shield_down && (spd < 0.5 or abs(angle_difference(point_direction(0,0,HSP,vsp),IMAGE_ANGLE)) > 120) {v_in -= 0.5; handbrake_in = 0}
	
	}
} else {
owner = noone;
handbrake_in = 0;
}


invincible -= (invincible > 0);

var dest_pitch = noone;

hsp = HSP; vsp = VSP; image_angle = IMAGE_ANGLE; x = X; y = Y; 
update_kart_state();
HSP = hsp; VSP = vsp; IMAGE_ANGLE = image_angle; X = x; Y = y; 
H_IN = h_in;
V_IN = v_in;

user_event(2);
if battle_hp > noone {
	if obj_stage_main.lap_count != 0 {
		set_player_stocks(play,battle_hp);
	} else set_player_damage(play, battle_hp);
	invincible = 99*(!battle_hp);
}
H_IN *= !inactionable;
V_IN *= !inactionable;
p_in = min(p_in, p_in*!inactionable);
k_in = min(k_in, k_in*!inactionable);
handbrake_in *= !inactionable;

handbrake = (handbrake_in >= 6);



IMAGE_ANGLE -= H_IN*(handbrake ? drift_steer : steer);

IMAGE_ANGLE = (IMAGE_ANGLE+360) mod 360;

var hvec = dcos(IMAGE_ANGLE);
var vvec = -dsin(IMAGE_ANGLE);

var dir = point_direction(0,0,HSP,VSP);

var diff = max(abs(dsin(angle_difference(dir, IMAGE_ANGLE))), handbrake);
if ttime & 1 { //Split it up so it only does half the calcs every frame for cosmetic stuff.
	if !init {
		if !dest_pitch dest_pitch = point_distance(0,0,HSP,VSP)/4;
		var old_pitch = engine_pitch;

		engine_pitch = lerp(engine_pitch, dest_pitch, 0.06)
		//print(engine_pitch);
		if engine < 0 {
			engine = sound_play(engine_sound, 1, 0, 0.5, 0.25);
	//		print(engine_sound)
		} else {
			audio_sound_pitch(engine, engine_pitch)
			
			var vol = abs(engine_pitch-old_pitch)*20 + 0.2;
			sound_volume(engine, vol, 0)
	//		print(string(vol)+" "+string(engine_pitch)+" "+string(old_pitch))
		}
		image_index += anim_speed;
		image_index +=  + (spd*anim_speed_scale);
		if image_index >= frames image_index = abs(image_index-frames);
		
		
	//	image_index = (image_index+aspd) mod frames;
	}
	lap_time_text[@0] = convert_time(lap_time);
	if !inactionable && (abs(X- room_width/2) > obj_stage_main.bz[0]
	or Y < obj_stage_main.bz[1] or Y > obj_stage_main.bz[2]) {
		state = PS_RESPAWN;
		state_timer = 0;
		sound_play(asset_get("sfx_death1"));
	}
} else {
	if handbrake or (abs(dsin(diff)) > 0.7 && spd > drift_fric) {
	//	print_debug("Drift");
	//	z = (ttime mod 4 < 2)*2;
		if ttime mod 4 == 2 {sound_play(asset_get("sfx_kragg_roll_turn"), 0, 0, 0.2)
			var h = spawn_hit_fx(X,Y,obj_stage_main.hfx[0]);
			h.player_id = noone;
		}
		if ttime mod floor(5/clamp(spd*0.6,1,5)) == 0 {
	//		print("drift spawned "+string(floor(5/max(spd*0.6,1))))

			var h = spawn_dust_fx(X,Y,drift_spr,45);
			h.draw_angle = IMAGE_ANGLE;
			h.depth = depth;
			h.player_id = noone;
			h.dust_color = 0;
			h.fg_index = -1;
			h.player = play;
		}
	}
	if owner.taunt_pressed {
		if !horning {
			if horn > -1 {
				sound_stop(horn);
			}
			horn = sound_play(horn_sound);
			horning = true;
		}
	} else {
		horning = false;
	}
	if powerup_rolling & 3 == 3 {
		sound_play(asset_get("mfx_hp"))	
	}
	if progress <= -360 {
		progress += 360;
	}
}

diff *= drift_fric;

VSP += V_IN*accel*vvec + V_IN*drift_accel*vvec*handbrake;
VSP -= VSP*(drag+(handbrake*drift_drag));
VSP = max(abs(VSP+dsin(dir)*diff), 0)*sign(VSP);

HSP += V_IN*accel*hvec + V_IN*drift_accel*hvec*handbrake;
HSP -= HSP*(drag+(handbrake*drift_drag));
HSP = max(abs(HSP-dcos(dir)*diff), 0)*sign(HSP);

spd = point_distance(0,0,HSP,VSP)
var old_boost = floor(should_boost);
if handbrake should_boost = clamp(should_boost+0.05 + (should_boost >= 1)*0.05, 0, coins)
else if should_boost && V_IN > 0 {
	coins -= floor(should_boost);
	should_boost = floor(should_boost)*1.25;

	HSP += should_boost*hvec*0.5;
	VSP += should_boost*vvec*0.5;
	sound_play(asset_get("sfx_ell_utilt_cannon"), 0, noone, 0.7, 1);
	
	should_boost = false;
	var h = spawn_dust_fx(X,Y,obj_stage_main.hfx[1],12);
	h.draw_angle = IMAGE_ANGLE;
	h.hsp = -HSP;
	h.vsp = -vsp;
	h.depth = depth;
	h.dust_color = 0;
//	h.fg_index = h.sprite_index;
//	h.player = play;
} else should_boost = 0;


if old_boost < floor(should_boost) {
	sound_pitch(sound_play(asset_get("sfx_gator_laugh")), 1+(old_boost*0.1));
}


//Parrying? In MY kart game?
gen_var = parry_cooldown;
if owner.shield_pressed{
	if !gen_var {
		gen_var = 40;
		parry = 14;
		sound_play(asset_get("sfx_parry_use"))
	}
	if z <= 0 && !roughed{
		zsp = 1;
	}
}
parry -= sign(parry);
gen_var -= sign(gen_var);

total_dist += point_distance(0, 0, HSP, VSP);

//COLLISION GOES HERE

if !intangible {
	hsp = HSP; vsp = VSP; image_angle = IMAGE_ANGLE; x = X; y = Y;
	user_event(4);
	HSP = hsp; VSP = vsp; IMAGE_ANGLE = image_angle; X = x; Y = y;
}
if found_wall {
	if parry {
		gen_var = 6;	
		sound_play(asset_get("sfx_tech"));
	} else {
		spd *= 0.5;
		HSP *= 0.5;
		VSP *= 0.5;
		clean_lap = (clean_lap & 2); //whoops.
	}
	sound_play(bump_sound,0,0,min(spd*0.5,1));
}
parry_cooldown = gen_var;
gen_var = powerup_rolling;
if (p_in) && powerup && !gen_var {
	switch(powerup) {
		default: powerup = 499+powerup; break;
	}
	if state == PS_ATTACK_GROUND{
		image_angle += 180;
	}
	var ins = instance_create(floor(X),floor(Y),"obj_stage_article", powerup);
	ins.owner = id;
	ins.play = play;
	ins.depth = depth;
	ins.image_angle = image_angle;
	p_in = -7;
	if state == PS_ATTACK_GROUND {
		image_angle -= 180;
	}
//	print("pw, p_in is "+string(p_in));
	powerup = 0;

}
if ((p_in >= 2) or (k_in >= 2)) && k_in >= 0  {
//	print("spin, p_in is "+string(p_in));
	state = PS_ATTACK_GROUND;
	state_timer = 0;
}
gen_var -= (gen_var > 0);
if gen_var == 1 {
	sound_play(asset_get("mfx_hp_spawn"))
}
powerup_rolling = gen_var;

++lap_time;
++total_time;

if !battle {
	var prog = ((point_direction(control.x,control.y,X,Y)-control.image_angle)+360) mod 360;
	progress += angle_difference(-prog*(-1+clockwise*2), progress);
	max_prog = max(progress, prog);

	display_relative -= sign(display_relative);


	if progress >= 360 && battle_hp <= noone {
		progress -= 360;
		max_prog -= 360;

		if array_length_1d(obj_stage_main.lap_time) < lap {

			obj_stage_main.lap_time[@(lap-1)] = total_time;
		}
		display_relative = 60*5; //too lazy to math
		latest_time = total_time;
		
		//Determining sub-frame lap time
		var ang_prev = abs(angle_difference(control.image_angle, point_direction(control.x,control.y,old_x,old_y)));
		var ang_cur = abs(angle_difference(control.image_angle, point_direction(control.x,control.y,X,Y)));
		var lerptime = (ang_cur) / (ang_cur + ang_prev);
		lap_time -= lerptime;
		clean_lap = ((clean_lap << 1) & 3)+1;
	//	print(clean_lap)
		
	//	print(string(ang_prev)+" "+string(ang_cur)+" "+string(lerptime))
	//	print("coords "+string(xprevious)+" "+string(x)+" | "+string(yprevious)+" "+string(y))
		++lap;
		safe_x = X;
		safe_y = Y;
		safe_layer = collision_layer;
		safe_prog = progress;
		safe_angle = control.image_angle+90+(clockwise*180);
		
		last_last_lap_time = last_lap_time;
		last_lap_time = lap_time;
		if last_last_lap_time == 0 last_last_lap_time = last_lap_time;

		if best_lap_time == 0 or lap_time < best_lap_time {last_best_lap_time = best_lap_time; best_lap_time = lap_time} //setting it for first lap;
		else last_best_lap_time = best_lap_time;
		
		if last_best_lap_time == 0 last_best_lap_time = best_lap_time;
		lap_time = 0;
		
		lap_time_text[@1] = convert_time(last_lap_time);
		lap_time_text[@2] = convert_time(best_lap_time);
		
	//	print_debug(string(get_match_setting(SET_STOCKS)))
		
		if lap-1 == obj_stage_main.lap_count && obj_stage_main.lap_count > 0 {
			++control.amt_finished;
			finished_place = control.amt_finished;
			
			if control.amt_finished == 1 { //ALRIGHT, FIRST PLACE!
				sound_play(asset_get("mfx_player_found"));	
			} else {
				sound_play(asset_get("mfx_player_ready"));	
			}
		} else if lap == obj_stage_main.lap_count && obj_stage_main.lap_count > 0 {
			sound_play(asset_get("sfx_fish_collect"));	
		} else {
			sound_play(asset_get("sfx_diamond_small_collect"));		
		}
	}
}
//print(get_stage_data(SD_WIDTH) + get_stage_data(SD_SIDE_BLASTZONE));


old_x = X;	old_y = Y;
inactionable = (inactionable > 0) ? 2 : 0;
intangible = (intangible > 0) ? 2 : 0;
roughed = (roughed > 0) ? 2 : 0;

X += HSP;	Y += VSP;
hsp = HSP; vsp = VSP; image_angle = IMAGE_ANGLE; x = X; y = Y;
z = max(z+zsp, 0);
zsp -= 0.1;
zsp *= sign(z);

#define init_kart() {
	init = 0;
		print("Final kart coords "+string(x)+" "+string(y));
		image_alpha = 0;
		with(obj_stage_article) {
	//		print_debug("num is "+string(num))
			if num == 2 && other.control == noone {
				battle = true;
				other.control = id;
				++amt_players;
				other.image_angle = point_direction(other.x,other.y,x,y);
				other.safe_angle = other.image_angle;
				print("Detected article2 "+string(other.image_angle));
				if obj_stage_main.lap_count <= 0 other.battle_hp = noone;
			}
			if num == 10 {
				battle = false;
				other.battle_hp = noone; //noone HP is race mode.
				other.control = id;
				++amt_players;
//				print_debug("YAY");
				if !set user_event(5); //Setting angle if it isn't already.
				other.progress = -angle_difference(image_angle, point_direction(x,y,other.x,other.y) );
				other.image_angle = image_angle+90
				if other.progress > 0 {
					other.progress *= -1;
					other.image_angle += 180;
//					print_debug("Flipping");
					other.clockwise = true;
				}
				
				other.safe_prog = other.progress;
				other.safe_angle = other.image_angle;
				print("Detected article10 "+string(other.image_angle));
				break;
			}
		}
		
		if !is_player_on(play) && play != 5 {
//			print_debug("no player on slot "+string(player))
			if instance_exists(control) {
				control.amt_players--;
			}
			instance_destroy();
			exit;
		} 
		
		drift_spr = obj_stage_main.hfx[2];
		var ra = [0, 4, 1,0,0,sound_get("sfx_engine_vroom"), horn_sound = sound_get("sfx_horn_honk"), 1];
		with(oPlayer) {
			if player == other.play {
				other.owner = id; //print_debug("found player slot "+string(other.play))
				other.tap_jump = can_tap_jump();
				kart_inside = true;
				//frame offset, frame limits, frame count, anim speed, anim scaling, engine, horn, drift spr
				//none 0, vroom 1, heavy 2, quiet 3, prop 4
				//honk 0, beep 1, hunk 2, squeaky 3, whistle 4, bleat 5
				//none, two tire, one tire, wide
				switch(select) {
					case CH_ZETTERBURN:
						ra = [4, 4, 1,0,0, 1, 0, 1];
					break;
					case CH_ORCANE:
						ra = [8, 8, 1,0,0, 4, 4, 1];
					break;
					case CH_WRASTOR:
						ra = [16, 8, 2, 0.03, 0.1, 4, 1, 2];
					break;
					case CH_KRAGG:
						ra = [24, 5, 1,0,0, 2, 2, 3];
					break;
					case CH_FORSBURN:
						ra = [29, 4, 1,0,0, 2, 0, 1];
					break;
					case CH_MAYPUL:
						ra = [33, 4, 1,0,0, 1, 1, 1];
					break;
					case CH_ABSA:
						ra = [37, 4, 1,0,0, 3, 5, 0];
					break;
					case CH_ETALUS:
						ra = [41, 5, 1,0,0, 2, 2, 1];
					break;
					case CH_ORI:
						ra = [46, 5, 1,0,0, 3, 5, 2];
					break;
					case CH_CLAIREN:
						ra = [51, 5, 1,0,0, 1, 0, 2];
					break;
					case CH_RANNO:
						ra = [56, 5, 1,0,0, 4, 3, 3];
					break;
					case CH_SYLVANOS:
						ra = [61, 4, 1,0,0, 2, 2, 1];
					break;
					case CH_ELLIANA:
						ra = [65, 6, 1,0,0, 4, 0, 1];
					break;
					case CH_SHOVEL_KNIGHT:
						ra = [71, 4, 1,0,0, 1, asset_get("sfx_shop_invalid"), 1];
					break;
					default: if select >= 17 {
						ra[0] = -1;
						if "kart_sprite" in self {other.sprite_index = kart_sprite;
							other.frame_count = other.image_number;
						} else {
							with (other) {sprite_index = sprite_get("cars_extra")};
							if url != "" switch(real(url) mod 6) {
								default: 
									other.frame_off = 0; other.frame_count = 6;
								break;
								case 1:
									other.frame_off = 6; other.frame_count = 6;
								break;
								case 2:
									other.frame_off = 12; other.frame_count = 12; other.frames = 2; other.kart_anim_speed = 0.5;
								break;
								case 3:
									other.frame_off = 24; other.frame_count = 6;
								break;
								case 4:
									other.frame_off = 30; other.frame_count = 3;
								break;
								case 5:
									other.frame_off = 33; other.frame_count = 8;
								break;
							}
						}
						if "kart_frames" in self other.frames = kart_frames;
						if "kart_anim_speed" in self other.anim_speed = kart_anim_speed;
						if "kart_anim_speed_scaling" in self other.anim_speed_scale = kart_anim_speed_scaling;
						if "kart_engine_sound" in self other.engine_sound = kart_engine_sound;
						if "kart_drift_spr" in self other.drift_spr = kart_drift_spr;
						if "kart_horn_sound" in self other.horn_sound = kart_horn_sound;
						
					}
					break;
				}

				break;
		//		other.bump_sound = land_sound;
			
			}
		}
		if ra[0] != -1 {
		frame_off = ra[0]
		frame_count = ra[1]
		frames = ra[2]
		anim_speed = ra[3]
		anim_speed_scale = ra[4]
		engine_sound = ra[5];
		horn_sound = ra[6]
		drift_spr = ra[7]
		}
		//print("set horn "+string(horn_sound));
		switch(drift_spr) {
			case 0: drift_spr = asset_get("empty_sprite"); break;
			case 1: drift_spr = obj_stage_main.hfx[2]; break;
			case 2: drift_spr = obj_stage_main.hfx[3]; break;
			case 3: drift_spr = obj_stage_main.hfx[4]; break;
			default: break;
		}
		switch(engine_sound) {
			case 0: engine_sound = asset_get("music_empty"); break;
			case 1: engine_sound = sound_get("sfx_engine_vroom"); break; 
			case 2: engine_sound = sound_get("sfx_engine_heavy"); break;
			case 3: engine_sound = sound_get("sfx_engine_quiet"); break;
			case 4: engine_sound = sound_get("sfx_engine_prop"); break;
			case 5: engine_sound = sound_get("sfx_engine_bland"); break;
			default: break;
		}
		switch(horn_sound) {
			case 0: horn_sound = sound_get("sfx_horn_honk"); break;
			case 1: horn_sound = sound_get("sfx_horn_beep"); break; 
			case 2: horn_sound = sound_get("sfx_horn_hunk"); break; 
			case 3: horn_sound = sound_get("sfx_horn_squeaky"); break;
			case 4: horn_sound = sound_get("sfx_horn_whistle"); break;
			case 5: horn_sound = sound_get("sfx_horn_bleat"); break;
			default: break;
		}
		frames = max(frames, 1)
		framediv = frame_count / frames;

		obj_stage_main.kart_ins[@obj_stage_main.total_karts] = id;
		++obj_stage_main.total_karts;
}
#define update_kart_state() {
	switch(state) { //States
		case PS_IDLE: 
			state_cat = SC_GROUND_NEUTRAL;
			if h_in != 0 last_steer = h_in;
			draw_angle = 0;
			if battle_hp > noone && battle_hp <= 0 && obj_stage_main.lap_count > 0 {
				state = SC_HITSTUN;
				state_timer = 0;
			}
		else break;
		case SC_HITSTUN: //Permadead. Used for battle mode.
			state_cat = SC_GROUND_COMMITTED;
			if state_timer == 0 && !finished_place {
				set_player_stocks(play,0);
				create_deathbox(floor(x),floor(y),9999,9999,play,true,1,1,1);
				finished_place = control.amt_players - control.amt_finished;
	//			print("FINISHED! "+string(control.amt_players)+" - "+string(control.amt_finished)+" = "+string(finished_place));
				++control.amt_finished;
				sound_play(asset_get("sfx_death1"));
			}
			state_timer = 1;
			dest_pitch = 0;
			engine_pitch = 0;
		break;
		case PS_HITSTUN: 
			state_cat = SC_HITSTUN;
			v_in = 0;
			h_in = 0;
			handbrake_in = 0;
			handbrake = false;

			invincible = 1;
			intangible = 1;
			inactionable = true;
			if state_timer > 0 {
				state = PS_IDLE;
				state_timer = 0;
				take_kart_damage();
			}	
			++state_timer;
		break;
		case PS_SPAWN:
			state_cat = SC_GROUND_COMMITTED;
			dest_pitch = v_in*0.5;
			time_total = 120;
			if v_in > 0 dest_pitch = 1;
			v_in = 0;
			h_in = 0;
			hsp = 0;
			vsp = 0;
			x = safe_x;
			y = safe_y;
	//		collision_layer = safe_layer;
			handbrake_in = 0;
			handbrake = false;
			p_in = -60;
			scale = 1;
			invincible = 1;
			lap_time = -1;
			++state_timer;
			if state_timer > time_total {
				state = PS_IDLE;
				state_timer = 0;
			}	
			inactionable = true;
			draw_angle = 0;
		break;		
		case PS_TUMBLE: //Fireball stun
			state_cat = SC_HITSTUN;
			if state_timer == 0 {
				zsp = 2.5;
			}
			time_total = 45;

			v_in = 0;
			h_in = 0;
			handbrake_in = 0;
			handbrake = false;
			image_angle += (720/time_total)*last_steer;

	//		z += cos((state_timer/(time_total-1))*pi);

			++state_timer;		

			if state_timer > time_total {
				state = PS_IDLE;
				state_timer = 0;
				take_kart_damage();
			}
			inactionable = true;
		break;
		case PS_PRATLAND: //Puddle slip
			state_cat = SC_HITSTUN;
			time_total = 30;

			v_in = 0;
			h_in = 0;
			handbrake_in = 0;
			handbrake = false;
			image_angle -= ease_sineOut(10, 0, state_timer, time_total)*last_steer;
			
			++state_timer;		
			if state_timer > time_total {
				state = PS_IDLE;
				state_timer = 0;
				take_kart_damage();
			}
		break;
		case PS_DASH: //Tornado
			state_cat = SC_GROUND_COMMITTED;
			time_total = 20;

			v_in = 2;

			++state_timer;		
			if state_timer > time_total {
				state = PS_IDLE;
				state_timer = 0;
			}
		break;
		case PS_ATTACK_AIR: //Zap
			state_cat = SC_GROUND_COMMITTED;
			time_total = 16;

			v_in = 2;
			h_in = 0;
			hsp = (dcos( image_angle)*11);
			vsp = (dsin(-image_angle)*11);
			++state_timer;		
			if state_timer > time_total {
				state = PS_IDLE;
				state_timer = 0;
			}
		break;

		case PS_RESPAWN:
			state_cat = SC_GROUND_COMMITTED;
			time_total = 30;
			v_in = 0;
			h_in = 0;
			hsp = 0;
			vsp = 0;
			x = safe_x;
			y = safe_y;
			progress = (safe_prog);
			collision_layer = safe_layer;
			handbrake_in = 0;
			handbrake = false;
			z = ease_quintOut(40, 0, state_timer, time_total);
			scale = 1;
			invincible = 1;
			
			image_angle = safe_angle;
			++state_timer;
			if state_timer > time_total {
				state = PS_IDLE;
				state_timer = 0;
			}	
			inactionable = true;
			draw_angle = 0;
		break;
		case PS_PRATFALL:
			state_cat = SC_HITSTUN;
			if state_timer == 0 {
				sound_play(asset_get("mfx_unstar"));

			}	
			time_total = 30;
			v_in = 0;
			h_in = 0;
			handbrake_in = 0;
			handbrake = false;
			scale = ease_cubeIn(1, 0, state_timer, time_total);
			invincible = 1;
			
			++state_timer;
			if state_timer > time_total {
				state = PS_RESPAWN;
				state_timer = 0;
				if obj_stage_main.lap_count != 0 {
					battle_hp -= (battle_hp > 0);
				} else {
					battle_hp += (battle_hp > noone); //No stocks, just hit count.
				}
				invincible += 60;
			}			
			inactionable = true;
		break;
		case PS_DEAD:
			state_cat = SC_HITSTUN;
			time_total = 45;
			if state_timer == 0 {
				sound_play(asset_get("sfx_ell_strong_attack_explosion"));
				var h = spawn_hit_fx(x,y,139);
				zsp = 4;
			}
			if state_timer & 7 {
				var h = spawn_hit_fx(x,y,14);		
			}
			v_in = 0;
			h_in = 0;
			handbrake_in = 0;
			handbrake = false;
			invincible = 1;
			image_angle += (720/time_total)*last_steer;

	//		z += cos((state_timer/(time_total-1))*pi);

			++state_timer;		

			if state_timer > time_total {
				state = PS_RESPAWN;
				state_timer = 0;
				take_kart_damage();
			}	
			inactionable = true;
		break;
		case PS_FROZEN: //Frozen
			state_cat = SC_HITSTUN;
			time_total = 60;

			v_in = 0;
			h_in = 0;
			handbrake_in = 0;
			handbrake = false;
			hsp = 0;
			vsp = 0;
			
			++state_timer;		
			if state_timer > time_total {
				state = PS_IDLE;
				state_timer = 0;
				sound_play(asset_get("sfx_ice_end"));
				take_kart_damage();
			}
			inactionable = true;
		break;
		case PS_ATTACK_GROUND:
			time_total = 30;
			draw_angle = ease_backOut(last_steer*360,0,min(20, state_timer), 20, 1);
			
			k_in = -1;
			if state_timer == 0 sound_play(asset_get("sfx_swipe_heavy2"),false,-4,1,1.2);
			
			var hbox_size = 28;
			if state_timer == clamp(state_timer, 2, 7) {
				if state_timer == 2 {
					var fx = spawn_hit_fx(x,y,obj_stage_main.hfx[8]);
					fx.depth = depth+1;
					fx.draw_angle = image_angle;
					fx.follow_id = id;
					fx.follow_time = 20;
					fx.image_yscale *= -last_steer;
				}
				var kart = obj_stage_main.kart_ins;
				for (var i = 0; i < array_length(kart); i++) {
					if (kart[i] == noone || kart[i] == id) continue;
					if abs(x-kart[i].x) <= hbox_size && abs(y-kart[i].y) <= hbox_size {
						//check for parry
						var parried = false;
						var clashed = false;
						with kart[i] {
							if inactionable || invincible || !(other.collision_layer == collision_layer or change_layer) break;
							if (state == PS_ATTACK_GROUND && state_timer == clamp(state_timer, 2, 7)) {
								//Clash
								clashed = true;
								sound_play(asset_get("sfx_infinidagger"));
								
								var fx = spawn_hit_fx(x,y,301);
								fx.depth = 1;
								
								state_timer = 7+1;
								other.state_timer = state_timer;
								var dir = point_direction(other.x,other.y,x,y);
								var spdd = 5;
								hsp = lengthdir_x(spdd,dir);
								vsp = lengthdir_y(spdd,dir);
								
								other.hsp = lengthdir_x(-spdd,dir);
								other.vsp = lengthdir_y(-spdd,dir);
							} else if !parry {
								//hit
								state = PS_TUMBLE;
								state_timer = 0;
								sound_play(asset_get("sfx_shovel_hit_med2"))
							} else {
								//parry
								user_event(3);
								invincible = 5;
								parried = true;
							}
						}
						if parried {
							//parry speed reduction
							hsp *= 0.5;
							vsp *= 0.5;
						}
					}
				}
			}
			++state_timer;
			if state_timer == time_total {
				state = PS_IDLE;
				state_timer = 0;
			}
		break;
	}
}
#define update_kart_ai() {
	v_in = 1;
	var dir = point_direction(0,0,hsp,vsp);
	var col_obj = obj_stage_article_solid;
	if collision_layer == 1 col_obj = obj_stage_article_platform;
	if ai_waypoint == noone {
		var dist = 128;
		var points = [
			position_meeting(x + lengthdir_x(dist, image_angle), y + lengthdir_y(dist, image_angle), col_obj) +
			position_meeting(x + lengthdir_x(dist, image_angle+15), y + lengthdir_y(dist, image_angle+15), col_obj) +
			position_meeting(x + lengthdir_x(dist, image_angle-15), y + lengthdir_y(dist, image_angle-15), col_obj), 0, 0
			]
		if points[0] {
			do {
				
				points[1] = position_meeting(x + lengthdir_x(dist, image_angle+15), y + lengthdir_y(dist, image_angle+15), col_obj);
				points[2] = position_meeting(x + lengthdir_x(dist, image_angle-15), y + lengthdir_y(dist, image_angle-15), col_obj);
				dist -= 4;
			} until (points[1] != points[2] or dist < 32);
			h_in = points[1] - points[2];
			if dist < 32 {h_in = last_steer; points[0] = true; print("WALL")}

		} else {
			if handbrake_in && position_meeting(x + lengthdir_x(dist, dir), y + lengthdir_y(dist, dir), col_obj) {
				points[0] = 1;
				h_in = last_steer;
			}
		}
			handbrake_in = (handbrake_in+1) * (points[0] > 0);
	} else {
		
			var point_dir = point_direction(x,y,ai_waypoint.x_offset,ai_waypoint.y_offset);
			var hb = false;
			
			if abs(angle_difference(point_direction(x,y,ai_waypoint.x,ai_waypoint.y),ai_waypoint.image_angle)) > ai_waypoint.image_alpha ai_waypoint = noone;				
			else {
				h_in = sign(angle_difference(image_angle,point_dir));
				if (!handbrake_in && abs(angle_difference(image_angle,point_dir)) > 60) or (handbrake_in && abs(angle_difference(image_angle,point_dir)) > 5) hb = true;
			}
			handbrake_in = (handbrake_in+1) * hb;
	}
	if position_meeting(x + lengthdir_x(32, dir), y + lengthdir_y(32, dir), col_obj) && abs(angle_difference(image_angle, dir)) < 100 {
		if !parry_cooldown {
			parry_cooldown = 40;
			parry = 14;
			sound_play(asset_get("sfx_parry_use"))
		}
		if z <= 0 && !roughed{
			zsp = 1;
		}
	}
	if powerup_rolling p_in = -random_func_2(play, 120, 1);
	if p_in >= 0 && powerup && !powerup_rolling p_in = 1;
}


#define take_kart_damage() {
	if obj_stage_main.lap_count != 0 {
		battle_hp -= (battle_hp > 0);
	} else {
		battle_hp += (battle_hp > noone); //No stocks, just hit count.
	}
	invincible += 60;
}
#define convert_time(_time) {
	var mins = string_replace(string_format( floor(_time / 3600), 1, 0 ), " ", "0");
	var secs = string_replace(string_format( floor(abs(_time) /   60) mod 60, 2, 0 ), " ", "0");
	var mils = string_replace(string_format( floor((frac(abs(_time) /  60))*1000), 3, 0 ), " ", "0");
	return mins+":"+secs+"."+mils;
	
}

//vsp -= back_fric*vvec*max(dsin(diff+90), 0);
//  -  fric*clamp(hsp,-abs(hvec),abs(hvec))*abs(dcos(diff))  -  drift_fric*clamp(hsp,-abs(hvec),abs(hvec))*abs(dsin(diff))
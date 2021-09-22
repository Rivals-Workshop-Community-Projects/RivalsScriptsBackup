muno_event_type = 1;
user_event(14);
attacking = phone_attacking;
if attacking window_end = phone_window_end;
playtest = phone_playtest;
practice = phone_practice;
inited = true;
ditto = phone_ditto;
blastzone_l = phone_blastzone_l;
blastzone_r = phone_blastzone_r;
blastzone_t = phone_blastzone_t;
blastzone_b = phone_blastzone_b;



// if shield_pressed held_item = IT_SHELL;

if starman{
	music_fade(0, 0.25);
	
	if !(starman < 24 && starman % 8 < 4) && !(starman > starman_max - 24 && starman % 8 < 4){
		invincible = true;
	}
	
	if !hitpause{
		starman--;
		
		if starman % 15 == 0{
			var h = spawn_hit_fx(x + random_func(1, 32, true) - 16, y - (random_func(2, 64, true)), vfx_sparkle);
			h.depth = depth;
		}
		
		if starman % 3 == 0 && has_rune("O"){
			create_hitbox(AT_NSPECIAL, 1, x, y);
			var old_atk = attack;
			attack = AT_NSPECIAL;
			attack_end();
			attack = old_atk;
		}
		
		if starman == 1{
			sound_stop(starman_sound);
			sound_play(sfx_mario_power_down);
		}
	}
}

size_mult = 1;

if mushroom{
	if !(mushroom < 24 && mushroom % 8 < 4) && !(mushroom > mushroom_max - 24 && mushroom % 8 < 4){
		size_mult = 2;
	}
	if !hitpause{
		mushroom--;
		
		if mushroom == 1{
			sound_play(sfx_mario_power_down);
		}
	}
}

if size_mult > 1{
	if hurtboxID.sprite_index != asset_get("empty_sprite") hurtboxID.sprite_index = sprite_get("double_hurtbox");
}
char_height = orig_char_height * size_mult;



fast_graphics = phone_fast;



if held_item == IT_TOTEM && has_rune("O"){
	held_item = 0;
	rune_totem = 1;
}



if state != PS_PRATFALL prat_fall_accel = 0.8;



if has_rune("A") && !held_item has_container = 1;

if held_item has_container = 0;



var vfx_exists = 0;

with asset_get("hit_fx_obj") if ("steve_manip_id" in self && steve_manip_id == other && type == 5) vfx_exists = 1;

var dead_player = noone;

if (!has_container && !held_item && !vfx_exists) with oPlayer if state == PS_RESPAWN || state == PS_DEAD{
	dead_player = self;
}

if dead_player != noone{
	sound_play(sfx_minecraft_ding1);
	var hfx = spawn_hit_fx(clamp(dead_player.steve_exp_last_x, 0, room_width), clamp(dead_player.steve_exp_last_y, 0, room_height), vfx_exp);
	hfx.steve_manip_id = self;
	hfx.type = 5;
	hfx.depth = depth - 10;
	hfx.num = 1;
}

with oPlayer{
	steve_exp_last_x = x;
	steve_exp_last_y = y;
}



if taunt_stored{
	if (state_cat == SC_HITSTUN){
		if taunt_pressed taunt_stored = 0;
	}
	else switch(state){
		case PS_TECH_GROUND:
		case PS_TECH_FORWARD:
		case PS_TECH_BACKWARD:
		case PS_WALL_TECH:
		case PS_AIR_DODGE:
			break;
		default:
			attack_end();
			set_attack(AT_JAB);
			attack = AT_TAUNT;
			window = 2;
			taunt_stored = 0;
			break;
	}
}



//chat

if !advancement_made{
	if marked has_been_marked = true;
	if burned has_been_burned = true;
	if bubbled has_been_bubbled = true;
	if wrapped has_been_wrapped = true;
	if poison has_been_poison = true;
	if frozen_player has_been_frozen_player = true;
	if plasma_pause has_been_plasma_pause = true;
	if stuck has_been_stuck = true;
	
	if has_been_marked && has_been_burned && has_been_bubbled && has_been_wrapped && has_been_poison && has_been_frozen_player && has_been_plasma_pause && has_been_stuck{
		with chat_owner{ // yea uh good luck with that
			ds_list_add(chat_txt, "Steve has completed the challenge [How Did We Get Here?]");
			ds_list_add(chat_tmr, chat_tmr_max);
			ds_list_add(chat_col, c_white);
		}
		advancement_made = true;
		sound_play(sfx_minecraft_totem);
	}
}

if ds_list_size(chat_txt) for (var i = 0; i < ds_list_size(chat_txt); i++){
	chat_tmr[|i]--;
	if !chat_tmr[|i]{
		ds_list_delete(chat_txt, i);
		ds_list_delete(chat_tmr, i);
		ds_list_delete(chat_col, i);
	}
}

// if (state == PS_CROUCH && state_timer == 1) with chat_owner{
// 	ds_list_add(chat_txt, "<MusicMaster1000> OH MY GOD");
// 	ds_list_add(chat_tmr, chat_tmr_max);
// 	ds_list_add(chat_col, c_white);
// 	ds_list_add(chat_txt, "<HoniaHaka> ?");
// 	ds_list_add(chat_tmr, chat_tmr_max);
// 	ds_list_add(chat_col, c_white);
// 	ds_list_add(chat_txt, "<MusicMaster1000> THEY CHANGED THE DOGS IN MINECRAFT");
// 	ds_list_add(chat_tmr, chat_tmr_max);
// 	ds_list_add(chat_col, c_white);
// 	ds_list_add(chat_txt, "MusicMaster1000 was slain by Polar Bear");
// 	ds_list_add(chat_tmr, chat_tmr_max);
// 	ds_list_add(chat_col, c_white);
// }

if (state == PS_RESPAWN && bed_spawn){
	x = bed_x;
	y = bed_y - 18;
}



//fstrong/dair cooldown (change to phone format)

if ("dair_sound" in self && !attacking) sound_stop(dair_sound);

if water_cooldown water_cooldown--;



if state == PS_PARRY && special_pressed && phone_cheats[CHEAT_TMI] && !has_rune("M") discard_timer = 1;

if discard_timer{
	if special_down || special_pressed{
		if discard_timer == discard_timer_max{
			held_item = IT_NOTHING;
			sound_play(sfx_minecraft_pop);
			discard_timer = 0;
			if phone_cheats[CHEAT_TMI] has_container = 1;
		}
		else{
			discard_timer++;
		}
	}
	else{
		discard_timer = 0;
	}
}



//MLG water

switch(state){
	case PS_TECH_GROUND:
	case PS_TECH_FORWARD:
	case PS_TECH_BACKWARD:
	case PS_WALL_TECH:
		if state_timer == 1{
			var hfx = spawn_hit_fx(x, y, vfx_tech_water);
			hfx.depth = -20;
			sound_play(sfx_minecraft_bucket_water);
			sound_play(sfx_minecraft_swim[0]);
		}
		break;
}



//pearl

if pearled{
	if visible{
		spawnEndVfx(10, 0, 0);
		
		x = pearl_x;
		y = pearl_y + char_height;
		vsp = -jump_speed;
		// set_player_damage(player, get_player_damage(player) + 5);
		
		spawnEndVfx(10, 0, 1);
		sound_play(sfx_minecraft_teleport2);
		sound_play(sfx_minecraft_hit);
	}
	pearled = false;
}



//elytra

if elytra{
	if !free || state_cat == SC_HITSTUN || !visible || elytra == 1{
		elytra = false;
		sound_stop(elytra_sound);
		
		//loseItem() from attack_update
		
		if !phone_cheats[CHEAT_TMI]{
			switch(items[held_item]).count_type{
			    case 0: //One-time use
			    case 1: //Three uses, item count
			    case 2: //Three uses, item durability
			        items[held_item].count++;
			        break;
			    case 3: //One-time use, mercy whiff
			        if has_hit items[held_item].count++;
			        items[held_item].count++;
			        break;
			}
			
			if !(items[held_item].count < items[held_item].count_max){
			
				sound_play(sfx_minecraft_break_tool);
				with items[held_item]{
				    count = 0;
				}
				held_item = IT_NOTHING;
			}
		}
	}
	else{
		var target = down_down ? 5 : (abs(hsp) > 2) ? 1 : 2;
		elytra_fall_speed = lerp(elytra_fall_speed, target, 0.3);
		if (state != PS_AIR_DODGE) vsp = min(vsp, elytra_fall_speed);
		
		var ely_acc = has_rune("O") ? 1 : 0.5;
		var ely_max = has_rune("O") ? 2.5 : 1.5;
		
		hsp += (right_down - left_down) * ely_acc;
		hsp = clamp(hsp, -air_max_speed * ely_max, air_max_speed * ely_max);
		
		
		if !(right_down || left_down){
			hsp -= sign(hsp) * 0.1;
			if abs(hsp) < 0.1 hsp = 0;
		}
		if (state == PS_DOUBLE_JUMP && state_timer == 1 && abs(right_down - left_down)){
			spr_dir = right_down - left_down;
		}
		if !(elytra % 10) && !fast_graphics{
			var hfx = spawn_hit_fx(x + random_func(0, 40, true) - 20, y + random_func(0, 40, true) - 40, vfx_ender);
			hfx.hsp = hsp * 0.5;
			hfx.vsp = vsp * 0.5;
			hfx.depth = depth + 1;
			
			hfx.steve_manip_id = self;
			hfx.type = 0;
			hfx.num = 0;
			
			hfx.go_up = 0;
			hfx.ignore_gravity = true;
		}
		elytra--;
	}
}



//strength pot

if strength_pot && !hitpause{
	if !(strength_pot % 20) && !fast_graphics{
		var dir_mod = (random_func(49, 2, true) ? spr_dir : -spr_dir);
		var hfx = spawn_hit_fx(x + random_func(29, 10, true) * dir_mod, y, vfx_potion_bubble_strength);
		hfx.vsp = 0;
		hfx.hsp = hsp * 0.2 + random_func(0, 4, true) * dir_mod;
		
		hfx.steve_manip_id = self;
		hfx.type = 0;
		hfx.depth = depth - 1;
		hfx.num = 10;
		
		hfx.ignore_gravity = true;
		hfx.go_up = 0.5;
	}
	strength_pot--;
}



//totem

if (held_item == IT_TOTEM || rune_totem){
	if (x + hsp != clamp(x + hsp, blastzone_l, blastzone_r)
		|| y + vsp > blastzone_b
		|| y + vsp < blastzone_t && state_cat == SC_HITSTUN){
		hsp = 0;
		vsp = -short_hop_speed;
		x = bed_x;
		y = bed_y;
		if rune_totem rune_totem = 0;
		else if !phone_cheats[CHEAT_TMI] held_item = IT_NOTHING;
		if (state_cat == SC_HITSTUN){
			set_state(PS_PRATFALL);
			prat_fall_accel = 0;
		}
		spawn_hit_fx(x, y - 32, 304);
		sound_play(sfx_minecraft_totem);
	}
}



//block meter

block_meter_fade = lerp(block_meter_fade, (blocks < max_blocks), 0.2);
if (block_meter_fade != clamp(block_meter_fade, 0.1, 0.9)) block_meter_fade = round(block_meter_fade);



//standing on block

if (on_block && state == PS_WAVELAND && state_timer == 1){
	hsp = hsp * stat_wave_land_adj[1] / wave_land_adj;
	stored_waveland_hsp = hsp;
}

if (on_block && prev_state == PS_WAVELAND && free && stored_waveland_hsp != 0){
	hsp = stored_waveland_hsp * 0.5;
	stored_waveland_hsp = 0;
}

initial_dash_speed	= stat_initial_dash_speed	[on_block && !free];
dash_speed			= stat_dash_speed			[on_block && !free];
moonwalk_accel		= stat_moonwalk_accel		[on_block && !free];
leave_ground_max	= stat_leave_ground_max		[on_block && !free];
max_jump_hsp		= stat_max_jump_hsp			[on_block && !free];
wave_land_adj		= stat_wave_land_adj		[on_block && !free];

if (prev_state == PS_ATTACK_GROUND && attack == AT_DTILT && free && state_timer == 1 && state_cat != SC_HITSTUN){
	hsp = clamp(hsp, -leave_ground_max, leave_ground_max);
}

if (on_block && state == PS_JUMPSQUAT && prev_state == PS_DASH_START) hsp = spr_dir * stat_initial_dash_speed[1];

if (on_block && (state == PS_DASH_START || state == PS_WAVELAND || (state == PS_ATTACK_GROUND && attack == AT_DTILT)) && state_timer == 1){
	sound_play(sfx_minecraft_whirlpool);
}

if on_block_timer on_block_timer--;

if !free{

	on_block = false;
	
	var on_block_2 = 0;
	
	with asset_get("obj_article_platform") if "muno_char_id" in player_id && player_id.muno_char_id == 5 with other{
		if !free && place_meeting(x, y+1, other) && !place_meeting(x, y - 3, other){
			
			if other.type == BL_ICE || has_rune("C"){
				on_block = true;
				on_block_timer = on_block_timer_max;
				other.steve_on_block = self;
			}
			
			on_block_2 = 1;
		}
	}
	
	if !on_block_2 has_properly_landed = true;
}

if on_block && !free && !prev_on_block_and_grounded{
	sound_play(sfx_minecraft_bubble);
}



blocks = max_blocks;

with obj_article_platform if player_id == other && type == other.primary_block other.blocks--;



//hfx logic

with asset_get("hit_fx_obj") if ("steve_manip_id" in self && steve_manip_id == other){
	
	if "exist_timer" not in self exist_timer = 0;
	
	switch(type){
		
		case 0: //Crits
			x += hsp;
			y += vsp;
			
			hsp *= (exist_timer > 15 - num * 2) ? 0.8 : 0.95;
			if ("go_up" in self) if (abs(vsp < 3)) vsp -= 0.5 * go_up;
			if ("ignore_gravity" in self) vsp *= (exist_timer > 15 - num * 2) ? 0.8 : 0.95;
			else vsp += (vsp > 0) ? 0.1 : 0.2;
			
			hit_length = 25 + num * 3;
			break;
		case 1: //Arrows embedded in the enemy
			x = drag_target.x + drag_x + drag_target.hsp;
			y = drag_target.y + drag_y + drag_target.vsp;
			depth = drag_target.depth - 1;
			if !drag_target.visible hit_length = 0;
			break;
		case 2: //Pick-up
			if ("pick_up_started" in self){
				x = lerp(x, other.x, 0.2);
				y = lerp(y, other.y - other.char_height / 2, 0.2);
				
				hit_length = 1000;
				pick_up_timer++;
				if pick_up_timer >= 5{
					with other sound_play(sfx_minecraft_pop);
					if (sprite_index == other.spr_fstrong_arrow){
						other.phone_arrow_cooldown = 0;
					}
					hit_length = 0;
				}
			}
			
			else if (distance_to_object(other) < 20 && exist_timer > 10){
				pick_up_started = true;
				pick_up_timer = 0;
			}
			
			if exist_timer > 3 visible = !(exist_timer > hit_length - 20 && (exist_timer % 6 < 3))
			break;
		case 3: //Block destroy
			x += hsp;
			y += vsp;
			if abs(hsp) > 1{
				hsp -= 0.3 * sign(hsp);
			}
			vsp += 0.5;
			if (place_meeting(x, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough"))) && y > parent_y + 24{
				hsp = 0;
				vsp = 0;
			}
			else draw_angle += asp;
			hit_length = 25 + num * 3;
			break;
		case 4: //Block pickup
			if ("orig_y" not in self) orig_y = y;
			
			other.blocks--;
			
			if ("has_landed" not in self) || !has_landed{
			
				x += hsp;
				y += vsp;
				if abs(hsp){
					hsp -= 0.25 * sign(hsp);
				}
				vsp += 0.5;
				
				if place_meeting(x + hsp, y, asset_get("par_block")) hsp = 0;
				
				var margin = 10;
				if (y < room_height && place_meeting(x, y + margin, asset_get("par_block")) || place_meeting(x, y + margin * 1.5, asset_get("par_jumpthrough"))) && exist_timer > 3{
					has_landed = true;
					for (i = 0; i < 40 && !(place_meeting(x, y + margin, asset_get("par_block")) || place_meeting(x, y + margin * 1.5, asset_get("par_jumpthrough"))); i++){
						y--;
					}
					orig_y = y;
					exist_timer = 0;
				}
				
				if (exist_timer > 600 && y > room_height){
					x = room_width / 2;
					if get_stage_data(SD_Y_POS) < room_height y = get_stage_data(SD_Y_POS) - 64;
					else y = room_height / 2;
					vsp = -2;
					if (exist_timer > 720){
						has_landed = true;
						orig_y = y;
						exist_timer = 0;
					}
				}
			
			}
				
			var auto_pickup = 600;
			
			if ("has_landed" in self) && has_landed{
				hsp = 0;
				vsp = 0;
				
				if ("pick_up_started" in self){
					x = lerp(x, other.x, 0.2);
					y = lerp(y, other.y - other.char_height / 2, 0.2);
					
					hit_length = 1000;
					pick_up_timer++;
					if pick_up_timer >= 5{
						with other sound_play(sfx_minecraft_pop);
						other.blocks++;
						if (sprite_index == other.spr_fstrong_arrow){
							other.phone_arrow_cooldown = 0;
						}
						hit_length = 0;
					}
				}
				
				// else if other.has_properly_landed && (distance_to_object(other) < 20 || exist_timer > auto_pickup) || (other.state == PS_RESPAWN && other.visible){
				// 	pick_up_started = true;
				// 	pick_up_timer = 0;
				// }
				
				else y = orig_y - sin(exist_timer / 10) * 6;
				
				if exist_timer > 3 visible = !(exist_timer > auto_pickup - 40 && (exist_timer % 6 < 3)) || !other.has_properly_landed;
			}
			
			if ("pick_up_started" not in self) && other.has_properly_landed && (distance_to_object(other) < 20 || exist_timer > auto_pickup) || (other.state == PS_RESPAWN && other.visible){
				pick_up_started = true;
				pick_up_timer = 0;
				has_landed = true;
			}
			break;
		case 5: // exp orb
			if ("vsp" not in self){
				vsp = -10 + (num - 1) * 2;
				hsp = other.spr_dir * (4 + num);
			}
			
			if exist_timer < 20{
				vsp += 0.5;
				hsp -= 0.2;
			}
			else{
				var spd = 1 + (distance_to_point(other.x, other.y - 32) < 64);
				hsp = clamp(hsp - spd * sign(x - other.x), -10, 10);
				vsp = clamp(vsp - spd * sign(y - (other.y - 32)), -10, 10);
			}
			
			// vel -= abs(angle_difference(dir, point_direction(x, y, other.x, other.y))) / 2;
			
			// x += lengthdir_x(vel, dir);
			// y += lengthdir_y(vel, dir);
			
			x += hsp;
			y += vsp;
			
			if place_meeting(x, y, other) && exist_timer > 30{
				hit_length = 0;
				with other sound_play(sfx_minecraft_ding2);
				other.has_container = 1;
				with other{
					var hfx = spawn_hit_fx(other.x, other.y, vfx_exp_pickup);
					hfx.depth = depth - 10;
				}
			}
			
			if other.has_container hit_length = 0;
			break;
			
	}
	
	exist_timer++;
}



//nspecial cooldown

if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) move_cooldown[AT_NSPECIAL] = 0;



if exp_shake exp_shake--;



//nspecial gui

nspecial_gui_alpha = lerp(nspecial_gui_alpha, attacking && attack == AT_NSPECIAL && window == clamp(window, 2, 3), 0.4);
if held_item_timer held_item_timer--;

if (restock_alpha > 0) restock_alpha -= 0.05;



//Fix dash anim

if (state == PS_DASH && prev_state == PS_DASH_TURN && state_timer == 8){
	state_timer = 20;
}



if (check_kill_effect){
	if hit_player_obj.activated_kill_effect{
		check_kill_effect = false;
		
		//yes this is copied from hit_player.gml, no i dont care, shut up shut up shut up

		var bias_amt = lengthdir_x(1, my_hitboxID.kb_angle);
		
		if !fast_graphics for (i = 0; i < 15; i++){ //instead of 7
			var hfx = spawn_hit_fx(cr_x, cr_y, vfx_crit);
			var angle = 10 + random_func(10 + i, 120, true);
			var spd = 10; //instead of 6
			
			var cr_x = round(lerp(hit_player_obj.x, my_hitboxID.x, 0.5) + lengthdir_x(abs(i) * 10 * my_hitboxID.spr_dir, angle));
			var cr_y = round(lerp(hit_player_obj.y - hit_player_obj.char_height / 2, my_hitboxID.y, 0.5));
			
			hfx.hsp = lengthdir_x(spd, angle) * my_hitboxID.spr_dir * 2; //instead of 1.5
			hfx.vsp = lengthdir_y(spd, angle) * 0.5; //instead of 0.75
			
			hfx.steve_manip_id = self;
			hfx.type = 0;
			hfx.depth = depth - 1;
			hfx.num = i;
			hfx.hit_length = 100;
		}
	}
}



prev_on_block_and_grounded = on_block && !free;



/*

//Funny minecraft sprint jump

switch(state){
	case PS_DASH:
	case PS_DASH_START:
	case PS_DASH_TURN:
		dash_flag = true;
		break;
	case PS_JUMPSQUAT:
		break;
	case PS_FIRST_JUMP:
	case PS_ATTACK_AIR:
		if (dash_flag && sign(hsp) == right_down - left_down && vsp == -short_hop_speed) hsp = dash_speed * 1.3 * spr_dir;
		break;
	default:
		dash_flag = false;
		break;
}

print_debug(string(vsp))

*/

//potion of invis lol

// visible = (!free && state_cat != SC_HITSTUN) || (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);



#define spawnEndVfx(count, x_off, seed)

if fast_graphics return;

for (i = 0; i < count; i++){
	var hfx_x = x + random_func(00 + i + seed, 20, true) - 10 + x_off * spr_dir;
	var hfx_y = y - random_func(10 + i + seed, 20, true);
	var hfx_v = random_func(20 + i + seed, 8, true) - 6;
	var hfx_h = random_func(30 + i + seed, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	
	hfx_v *= 1;
	hfx_h *= 3;
	
	var hfx_d = depth + 1;
	var hfx_a = random_func(40 + i + seed, 40, true) - 20;

	var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_ender);
	hfx.hsp = hfx_h;
	hfx.vsp = hfx_v;
	hfx.depth = hfx_d;
	hfx.parent_y = y;
	hfx.asp = hfx_a;
	
	hfx.steve_manip_id = self;
	hfx.type = 0;
	hfx.num = i - 2;
	
	hfx.go_up = 0.25;
	hfx.ignore_gravity = true;
}
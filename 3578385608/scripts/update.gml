//update
if steve_enabled <= -1{
	steve_enabled++;
	if steve_enabled == 0{
		with oPlayer if "unique_identifier_mjj" in self && unique_identifier_mjj == "farlander"{
			other.steve_enabled = 1;
			other.steveid = self;
		}
	}
}

if cooking cooking--;
if flavour_text flavour_text--;
if concoction_name[3] concoction_name[@3]--;
if set_armor{
	set_armor = 0;
	soft_armor = 3;
}
lab_ui_alpha = lerp(lab_ui_alpha, -.1 + cooking*1.2, .1);
if weed_boost{
	air_accel = .4;
	prat_fall_accel = .7;
	air_friction = .03;
	max_fall = 8;
	fast_fall = 13;
	gravity_speed = .3;
	weed_boost--;
	if !weed_boost{
		air_max_speed = og_air_max_speed;
		prat_fall_accel = og_prat_fall_accel;
		air_friction = og_air_friction;
		max_fall = og_max_fall;
		fast_fall = og_fast_fall;
		gravity_speed = og_gravity_speed;
	}
	if weed_boost%10 == 1 spawn_area_effect(partcs[1], x, y - 40, 50, 60, 0, 0, 0, .25, 0, 1);
}

if alcohol_boost{
	alcohol_boost--;
	if alcohol_boost%5 == 1 spawn_area_effect(partcs[3], x, y - 60, 30, 30, alcohol_boost, 0, 0, -.5, -.02);
	damage_scaling = (alcohol_boost? base_damage_scaling*.8: base_damage_scaling);
}

if morphene_boost{
	soft_armor = 5 + 5*(ego_boost > 0);
	knockback_scaling = .8;
	damage_scaling = .7;
	morphene_boost--;
	if morphene_boost%5 == 1 spawn_area_effect(partcs[4], x, y - 40, 50, 60, morphene_boost, 0, 0, -.5, 0, 1);
	if !morphene_boost{
		knockback_scaling = 1;
		damage_scaling = 1;
	}
}

if coffee_boost{
	walk_speed = 4;
	walk_accel = .4;
	initial_dash_speed = 8.5;
	dash_speed = 8;
	dash_turn_accel = 1.5;
	dash_stop_percent = .3;
	coffee_boost--;
	if !coffee_boost{
		walk_speed = og_walk_speed;
		walk_accel = og_walk_accel;
		initial_dash_speed = og_initial_dash_speed;
		dash_speed = og_dash_speed;
		dash_turn_accel = og_dash_turn_accel;
		dash_stop_percent = og_dash_stop_percent;
	}
	if coffee_boost%5 == 1 spawn_area_effect(partcs[5], x, y - 40, 50, 60, 0, 0, 0, 0, 0);
}
if ego_boost{
	ego_boost--;
	if ego_boost%8 == 1 spawn_area_effect(partcs[8], x, y - 40, 50, 60, 0, 0, 0, .2, 0);
}

with oPlayer if (breaking_bad_handler == noone || breaking_bad_handler == other){
	breaking_bad_handler = other;
	if breaking_bad_walt_fall && !freemd{
		breaking_bad_walt_fall--;
		breaking_bad_acid_pratland = 11 + (other.ego_boost>0)*20;
		breaking_bad_acid_initial_pratland = breaking_bad_acid_pratland;
		fall_through = 1;
		y += 4;
		if state != PS_RESPAWN && state != PS_DEAD set_state(PS_PRATFALL);
	}
	if state == PS_RESPAWN || state == PS_DEAD{
		breaking_bad_meth_pos_timer = 0;
		breaking_bad_meth_neg_timer = 0;
		breaking_bad_nitrogen = 0;
		breaking_bad_lily = 0;
	}
	
	if state == PS_PRATLAND && breaking_bad_acid_pratland-1{
		breaking_bad_acid_pratland--;
		state_timer--;
	}else if breaking_bad_acid_pratland != breaking_bad_acid_initial_pratland && breaking_bad_acid_pratland{
		breaking_bad_acid_pratland = 0;
		set_state(PS_IDLE);
	}
	if breaking_bad_nitrogen{
		breaking_bad_nitrogen--;
		if get_gameplay_time()%5 == 0 with other spawn_area_effect(partcs[0], other.x, other.y - other.char_height, floor(other.char_height*1.2), other.char_height/2, other.breaking_bad_nitrogen, 0, 0, 0, .05);
		if state_cat == SC_HITSTUN && !hitpause breaking_bad_freezable++;
		else if !hitpause breaking_bad_freezable = 0;
		if state_cat == SC_HITSTUN && breaking_bad_freezable == 15{
			spawn_hit_fx(x, y - char_height/2, 199);
			old_hsp = hsp;
			old_vsp = vsp;
			hsp = 0;
			vsp = 0;
			hitstop = 30;
			hitstop_full = 30;
			hitpause = 1;
			breaking_bad_freezable++;
			breaking_bad_freezable_times--;
			with other sound_play(sound_get("freezing"));
		}
		if !breaking_bad_freezable_times breaking_bad_nitrogen = 0;
	}
	if breaking_bad_lily{
		breaking_bad_lily--;
		if random_func_2(89, breaking_bad_lily, 1) == 0 || !(breaking_bad_lily%150){
			take_damage(player, other.player, 1);
			with other spawn_area_effect(partcs[2], other.x, other.y - other.char_height/2, floor(other.char_height*1.5), other.char_height);
		}
	}
	if breaking_bad_meth_stack{
		if breaking_bad_meth_neg_timer{
			outline_color = [178, 0, 255]
			breaking_bad_meth_neg_timer--;
			if breaking_bad_meth_neg_timer%5 == 0 with other spawn_area_effect(partcs[7], other.x, other.y - other.char_height, floor(other.char_height*1.2), other.char_height/2, other.breaking_bad_meth_neg_timer, 0, 0, .25, 0, 1);
			if state_cat != SC_HITSTUN{
				if abs(hsp)>1 x -= floor(hsp*.15*breaking_bad_meth_stack);
				if vsp<1 y -= floor(vsp*.15*breaking_bad_meth_stack);
			}else{
				if abs(hsp)>1 x += floor(hsp*(.6 - .1*breaking_bad_meth_stack));
				if vsp<1 y += floor(vsp*(.6 - .1*breaking_bad_meth_stack));
			}
			if !breaking_bad_meth_neg_timer outline_color = [0, 0, 0]
			if breaking_bad_old_damage < get_player_damage(player) take_damage(player, player, floor((get_player_damage(player) - breaking_bad_old_damage)*(.3 + .1*breaking_bad_meth_stack)));
		}
		if breaking_bad_meth_pos_timer{
			outline_color = [15, 247, 255]
			breaking_bad_meth_neg_timer = 0;
			breaking_bad_meth_pos_timer--;
			if breaking_bad_meth_pos_timer%5 == 1 with other spawn_area_effect(partcs[6], other.x, other.y - other.char_height, floor(other.char_height*1.2), other.char_height/2, other.breaking_bad_meth_pos_timer, 0, 0, .25, 0, 1);
			if state_cat != SC_HITSTUN{
				if abs(hsp)>1 x += floor(hsp*(.4 - .06*breaking_bad_meth_stack));
				if vsp<1 y += floor(vsp*(.4 - .06*breaking_bad_meth_stack));
			}else{
				if abs(hsp)>1 x -= floor(hsp*.15*breaking_bad_meth_stack);
				if vsp<1 y -= floor(vsp*.15*breaking_bad_meth_stack);
			}
			if !breaking_bad_meth_pos_timer outline_color = [0, 0, 0]
			if breaking_bad_old_damage < get_player_damage(player) take_damage(player, player, floor((breaking_bad_old_damage - get_player_damage(player))*(.6 - .1*breaking_bad_meth_stack)));
			if !breaking_bad_meth_pos_timer breaking_bad_meth_neg_timer = min(40, 20 + 4*breaking_bad_meth_stack - 4)*60;
		}
	}
	breaking_bad_old_damage = get_player_damage(player);
}
with hit_fx_obj if player_id == other{
	if array_find_index(other.partcs, hit_fx)+1{
		var idx = array_find_index(other.partcs, hit_fx);
		image_alpha = 3 - step_timer*3/hit_length;
		if idx == 0 draw_angle += 4;
		//if idx == 1 draw_angle += 10;
		if idx == 4 draw_angle += 3;
	}
	if hit_fx == other.acidbubbbles hsp = dsin(step_timer*10 + id*180);
}




#define spawn_area_effect
/// spawn_area_effect(fx, dx, dy, area_width, area_height, angle = 1, seed = 0, hspd = 0, vspd = 0, grav = 0, move_out = 0;)
var fx = argument[0], dx = argument[1], dy = argument[2], area_width = argument[3], area_height = argument[4];
var angle = argument_count > 5 ? argument[5] : 1;
var seed = argument_count > 6 ? argument[6] : 0;
var hspd = argument_count > 7 ? argument[7] : 0;
var vspd = argument_count > 8 ? argument[8] : 0;
var grav = argument_count > 9 ? argument[9] : 0;
var move_out = argument_count > 10 ? argument[10] : 0;;
/*effect ids
0 -vfx_ssj2_lightning
1 -vfx_evo_sparkle
2 -vfx_galick_gun_charge
3 -vfx_ssj2_lightning_small
4 -vfx_ki_charge
*/
var og_x = dx;
var og_y = dy;
dx += random_func(1 + seed, area_width, true) - area_width/2;
dy += random_func(2 + seed, area_height, true) - area_height/2;

var da = angle;

var h = spawn_hit_fx(floor(dx), floor(dy), fx);

h.hsp = hspd;
h.vsp = vspd;
if move_out{
	var am = point_distance(0, 0, hspd, vspd);
	var dir = point_direction(og_x, og_y, dx, dy);
	h.hsp = lengthdir_x(am, dir);
	h.vsp = lengthdir_y(am, dir);
}
h.grav = grav;
h.draw_angle = da;
if dx % 2 == 0 h.depth = depth-1;

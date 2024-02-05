//hitbox_update
if cond{
	proj_angle -= hsp*6;
	if !free || (vsp > 0 && (place_meeting(x, y + 1, asset_get("par_block")) || (place_meeting(x, y + vsp, asset_get("par_jumpthrough")) && !place_meeting(x, y - 5, asset_get("par_jumpthrough"))))){
		vsp = prevsp*-.6;
		hsp *= .7;
		if abs(vsp) >= 1 sound_play(sound_get("sfx_shell_bounce"), 0, noone, .3, 1.3 - .1*(cond=2));
	}
	prevsp = vsp;
	if abs(hsp) > 1 && abs(vsp) > 1 && !free && y <= room_height hitbox_timer = 0;
}
if attack == AT_NSPECIAL{
	if has_rune("F") damage = 10*point_distance(0, 0, hsp, vsp)/10;
	hitbox_timer = 0;
	hb_timer++;
	hb_life++;
	var target = noone;
	with oPlayer if self != other.og_owner && targeted[other.player-1] && (target = noone || point_distance(x, y - char_height/2, other.x, other.y) < point_distance(target.x, target.y - target.char_height/2, other.x, other.y)) target = self;
	if hb_state >= 1 && place_meeting(x, y + vsp, asset_get("par_block")) destroyed = 1;
	switch hb_state{
		case 0:
		image_index = hb_timer/3;
		hsp += 12/15*spr_dir;
		if hb_timer >= 6 vsp += 4/10*angle_change;
		else angle_change = player_id.missile_angle;
		if hb_timer >= 14 set_st(1);
		break;
		
		case 1:
		image_index = 5 + (hb_timer/3)%3;
		if should_angle vsp += angle_change/4;
		if abs(vsp) = 5 should_angle = 0;
		if hb_life == hb_life_max destroyed = 1;
		if target != noone{
			set_st(2);
			sound_play(targeting);
		}
		break;
		
		case 2:
		should_angle = 0;
		image_index = 8 + (hb_timer/3)%3;
		if target = noone{
			set_st(1);
			var dir = point_direction(0, 0, hsp, vsp);
			hsp = lengthdir_x(10, dir);
			vsp = lengthdir_y(10, dir);
		}else{
			var dir = point_direction(x, y, target.x, target.y - target.char_height*2/3);
			hsp = lerp(hsp, lengthdir_x(12, dir), home_val);
			vsp = lerp(vsp, lengthdir_y(12, dir), home_val);
		}
		if hb_life >= hb_life_max + 120 set_st(3);
		break;
		
		case 3:
		should_angle = 0;
		image_index = 11 + (hb_timer/4);
		if hb_timer >=  15 destroyed = 1;
		hsp = lerp(hsp, 0, 0.1);
		vsp = lerp(vsp, 0, 0.1);
		break;
	}
	proj_angle = point_direction(0, 0, hsp, vsp) + 90 - 90*spr_dir;
	if hb_state = clamp(hb_state, 1, 3) && !(get_gameplay_time()%12){
		var j = spawn_hit_fx(x - 20*dcos(proj_angle)*spr_dir, y + 20*dsin(proj_angle)*spr_dir, trail_smoke);
		j.draw_angle = random_func_2(123, 4, 0)*90;
	}
	if destroyed{
		sound_play(sound_effect);
		sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, .6, .8);
	}
}

/*1-5, Launch
6-8, Loop
9-11, Locked on loop
12-15, Locked on fizzle out*/

#define set_st(num)
hb_state = num;
hb_timer = 0;
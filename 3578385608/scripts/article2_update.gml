timer++;
if instance_exists(player_id.table) depth = player_id.table.depth-1;
if state >= 4{
	if place_meeting(x, y+2, asset_get("par_jumpthrough")) y += 4;
	player_id.move_cooldown[AT_FSPECIAL] = 60;
	if vsp >= 6{
		if !instance_exists(fall_hb) fall_hb = create_hitbox(AT_FSPECIAL, 2, x, y - 40);
		fall_hb.hitbox_timer = 0;
		fall_hb.x = x;
		fall_hb.y = y - 40 + vsp;
	}else if !free && vsp > 0{
		sound_play(sound_get("car_land"));
		instance_destroy(fall_hb);
		create_hitbox(AT_FSPECIAL, 3, x, y - 30);
	}
	vsp = min(vsp + .5, 10)*free;
}
switch state{
	case 0: //spawn
	image_index = min(timer/5, 2)
	if timer >= 15{
		vsp = .5
		state_goto(1);
	}
	break;
	case 1: //fall
	image_index = 2;
	if vsp >= 6{
		if !instance_exists(fall_hb) fall_hb = create_hitbox(AT_FSPECIAL, 2, x, y - 40);
		fall_hb.hitbox_timer = 0;
		fall_hb.x = x;
		fall_hb.y = y - 40 + vsp;
	}
	if !free{
		sound_play(sound_get("car_land"));
		vsp = 0;
		y += 4;
		state_goto(2);
		image_index = 3;
		instance_destroy(fall_hb);
		create_hitbox(AT_FSPECIAL, 3, x, y - 30);
	}else vsp = min(vsp + .5, 10);
	break;
	case 2: //land
	image_index = 3;
	if timer >= 5 state_goto(3);
	break;
	case 3: //idle
	image_index = 4;
	if free state_goto(1);
	break;
	case 4: //trunk open
	image_index = 5 + min(timer/5, 2) + 14*fire_left;
	if image_index == 6 + 14*fire_left sound_play(sound_get("car_close"));
	if timer >= 15 state_goto(5);
	break;
	case 5: //fire loop
	is_hittable = 1;
	can_be_hit[@player] = 2;
	image_index = 8 + (timer/2)%4 + 14*fire_left;
	if image_index == 9 + 14*fire_left{
		var hb = create_hitbox(AT_FSPECIAL, 1, x + 36 - 72*fire_left, y - 39);
		hb.hsp = 20 - 40*fire_left;
		hb.draw_xscale = 1 - 2*fire_left;
		hitwalt = (hitwalt+1)%3;
		hb.can_hit_self = (player_id.ego_boost? !hitwalt: hitwalt>0) && player_id.state != PS_CROUCH;
		hb.angle = 60 + 60*fire_left;
		hb.depth = depth+1;
		sound_play(sound_get("car_shot"));
		ammo--;
	}
	player_id.set_armor = player_id.state != PS_CROUCH;
	if !ammo state_goto(6);
	break;
	case 6: //despawn
	is_hittable = 0;
	image_index = 12 + min(timer/5, 6) + 14*fire_left;
	if image_index == 14 + 14*fire_left sound_play(sound_get("car_close"));
	if image_index >= 16 + 14*fire_left vsp = 0;
	if timer >= 35{
		instance_destroy(self);
		exit;
	}
	break;
	case 7:
	image_index = 8 + 14*fire_left;
	is_hittable = 1;
	array_copy(can_be_hit, 0, array_create(16, 2), 0, 16);
	can_be_hit[@player] = 0;
	break;
}

if y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) + 50{
	instance_destroy(self);
	exit;
}

#define state_goto
/// state_goto(stateset, timerset = 0;)
var stateset = argument[0];
var timerset = argument_count > 1 ? argument[1] : 0;;
state = stateset;
timer = timerset;
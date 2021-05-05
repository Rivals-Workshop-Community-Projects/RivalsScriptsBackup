if hitstop < 0 hitstop = 0;
drag = 1;
vis = min(vis++, 1)
visible = vis;



if !dead {



if orbiting {
	parrytime = 0;

	if !hitstop {
	orbit_angle += orbit_speed + player_id.orbit_speed;
	orbit_angle -= angle_difference(orbit_angle, player_id.orbit_angle + type*(360/maxplanets))*0.01
	orbit_angle = (orbit_angle) mod 360

	x = lerp(x, owner.x + lengthdir_x(orbit_distance, orbit_angle), 0.8-overriding);
	y = lerp(y, (owner.y-orbit_height) + lengthdir_y(orbit_flatness, orbit_angle), 0.8-overriding);
	

	if depthsort  depth = owner.depth+1 - (orbit_angle > 180)*2
	depthsort = 1;
	}
	hsp = 0;
	vsp = 0;
	time = 0;
	gravity_amount = 0;
	gravity_speed = 0;
	gravity_friction = 0;

	if orbit_flatness > orbit_flatness_dest orbit_flatness = max(orbit_flatness-1, orbit_flatness_dest)
	else if orbit_flatness < orbit_flatness_dest orbit_flatness = min(orbit_flatness+1, orbit_flatness_dest)
	
	if depth > owner.depth 
	image_index = clamp((x-owner.x)*0.03,-1,1)*(image_number/4)
	else 
	image_index = clamp((owner.x-x)*0.03,-1,1)*(image_number/4)+(image_number/2)
} else { //Not orbiting


	image_index = clamp((x-owner.x)*0.01,-1,1)*(image_number/4)
	time++;
	
	var gs = 0.15;
	var ga = 0.001;
	parrytime -= (parrytime > 0);
	cooldown = max(cooldown-1, 0)
	if point_distance(0,0,hsp,vsp) < 12 active = 0;
	gravity_amount = min(gravity_amount+ga*drag, 1);
	gravity_speed += gs*drag;
	gravity_friction = max(gravity_friction-0.01*drag, 0)
	var dir = point_direction(x,y,owner.x,owner.y-orbit_height)
	hsp = lerp(hsp, lengthdir_x(gravity_speed*drag, dir)*(1-gravity_friction)*drag, gravity_amount*drag)
	vsp = lerp(vsp, lengthdir_y(gravity_speed*drag, dir)*(1-gravity_friction)*drag, gravity_amount*drag)
	if point_distance(x,y,owner.x,owner.y-orbit_height) <= 60 && !cooldown {
	if point_distance(0, 0, hsp, vsp) > 7 {
		gravity_amount = 0;
		gravity_speed = 5;
		if !parrytime && owner.state_cat != SC_HITSTUN && 
		owner.state != PS_WALL_TECH && owner.state != PS_TECH_GROUND && owner.state != PS_TECH_BACKWARD && 
		owner.state != PS_TECH_FORWARD && owner.state != PS_RESPAWN && owner.state != PS_DEAD &&
		abs(angle_difference(point_direction(0,0,hsp,vsp), dir)) > 90 {
			active = 1;
			attack = AT_EXTRA_1;
			offset = 1;
		}
	}
		if !parrytime && point_distance(x,y,owner.x,owner.y-orbit_height) <= 25 {
			orbiting = 1;
			var suffix = "";
			if get_player_color(orig_player) == 12 suffix = "R";
					sound_play(sound_get("planetget"+string(suffix)+string(type+1)), 0, noone, 1, 1)
					//print_debug("Regained "+string(type))
		}
	}
	if place_meeting(x,y,asset_get("plasma_field_obj")) {
		if active {
			active = false;
			sound_play(asset_get("sfx_clairen_hit_weak"));
			drag = 0.5;
		}

	}
/*
	if parrytime {
		active = 0;
		drag = 0.5;
		image_blend = c_gray;
		image_alpha = 0.5;
	}
*/
	if parrytime image_alpha = 0.5;
	else image_alpha = 1;
}
if !parrytime image_alpha = player_id.image_alpha;
//if !parrytime image_blend = c_white;
overriding = max(overriding-0.05, 0);
} else {
	image_blend = c_gray;
	image_alpha -= 0.1;
	parrytime = 0;
}
if active or scary_looking {
	active_time = (active_time + 1) mod 3
	if active_time == 1 {
		active_time = 0;
		var hfx = spawn_hit_fx(floor(x+hsp), floor(y+vsp), orig_player_id.hitfx[type])
	}
	if active {
	if !instance_exists(hitbox) or hitbox.attack != attack or hitbox.hbox_num != type+offset{
		if instance_exists(hitbox) instance_destroy(hitbox);
		hitbox = create_hitbox(attack, type+offset, floor(x), floor(y))
		
	//	if get_hitbox_value(attack,type+1,HG_HITBOX_GROUP) > 0 hitbox.hbox_group = get_hitbox_value(attack,type+1,HG_HITBOX_GROUP)
	}
	hitbox.x = x+hsp;
	hitbox.y = y+vsp;
	hitbox.length++;
	hitbox.planet = id;
	hitbox.plasma_safe = (orbiting == true && owner == orig_player_id)
	if linked hitbox.can_hit = orig_player_id.planet_can_hit;
	if hsp != 0 hitbox.spr_dir = sign(hsp)
	}
} else {
	active_time = 0;
	if instance_exists(hitbox) {
		instance_destroy(hitbox);
	}
	
	if dead {
	
	
	}
}
scary_looking -= (scary_looking > 0)
if active or scary_looking {
	sprite_index = active_sprite;
} else {
	sprite_index = inactive_sprite;
}

x -= hsp*(1-drag);
y -= vsp*(1-drag);
	

if orbiting active = 0;

if !active {
attack = AT_EXTRA_1
linked = 0;
offset = 1;
}
	/*
} else if orbiting == 0{
	time++;
	x = ease_quartOut(floor(orig_x), floor(dest_x), time, shot_time)
	y = ease_quartOut(floor(orig_y), floor(dest_y), time, shot_time)	
	if time >= shot_time {
		orbiting = -1;
		time = 0;
	}
} else if orbiting == -1 {
	time++;
	if time >= gravity_time {
		orbiting = 1;
		sound_play(asset_get("mfx_player_ready"), 0, noone, 0.5, 1.4)
	}
	x = ease_sineIn( floor(dest_x), floor(owner.x + lengthdir_x(orbit_distance, orbit_angle)), time, gravity_time)
	y = ease_sineIn( floor(dest_y), floor((owner.y-orbit_height) + lengthdir_y(orbit_flatness, orbit_angle)), time, gravity_time)
}
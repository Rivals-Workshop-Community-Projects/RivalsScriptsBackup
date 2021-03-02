/*
image_angle += 22;
vsp += 0.5
*/
var img = effect-1

var oldpop = popped;

if img == 3 { //variants
	switch(get_player_color(player)) {
		default: break;
		case 2: case 4: case 11: img  = 6; break; //crumbly
		case 3: case 5: img = 5; break; //lemon/lime
		case 6: case 12: img = 4; break; //smooth
		case 8: img = 9; break; //pizza
		case 10: img = 8; break; //undertale
		case 9: img = 7; break; //blackberry
		case 13: img = 10; break;//dark crust

		case 7: switch(get_match_setting(SET_SEASON)) { //seasonal
			case 2: img = 11; break; //SUMMER
			case 3: img = 12; break;
		}
		break;
	}
}


player_id.move_cooldown[AT_DSPECIAL] = max(min(player_id.move_cooldown[AT_DSPECIAL]+2/player_id.prox_limit, 2), player_id.move_cooldown[AT_DSPECIAL]);
player_id.move_cooldown[AT_DSPECIAL_AIR] = max(min(player_id.move_cooldown[AT_DSPECIAL_AIR]+2/player_id.prox_limit, 2), player_id.move_cooldown[AT_DSPECIAL_AIR]);
if free vsp += 0.5
else hsp *= 0.8
var b = 1;

if player_id.bake_mode == 1 {
	type = 1;
}
switch(type) {
	default: case 0:
		b = 1;
	break;
	case 1:
		b = 2;
	break;
}

var tm = get_player_team(player_id.player);
var h = 0;

var m = 128
if y > room_height+m or x < -m or x > room_width+m {
	player_id.move_cooldown[AT_DSPECIAL] = 120;
	player_id.move_cooldown[AT_DSPECIAL_AIR] = 120;
instance_destroy();
}
if active && free {
	if !instance_exists(active_box) {
		active_box = create_hitbox(AT_EXTRA_1, active, floor(x+hsp), floor(y+vsp))
		print_debug("Creating falling hbox")
		active_box.cake_ins = id;

	}
		if hsp != 0 active_box.spr_dir = sign(hsp)
	active_box.x = x+hsp
	active_box.y = y+vsp+active_box.y_pos;
	active_box.length++;
	if active_box.was_parried {
		active = false;
		popped = sign(hsp);
		if popped = 0 popped = spr_dir;
		timer = min(timer, 8);
		player_id.move_cooldown[AT_DSPECIAL] = 120;
		player_id.move_cooldown[AT_DSPECIAL_AIR] = 120;		
	}
}
else {
	if active sound_play(asset_get("sfx_kragg_roll_land"));
	active = 0;
}
with (asset_get("pHitBox")) {
	if player_id == other.player_id && other.active_box != id && (effect == 69 or effect = 69420) && place_meeting(x,y,other) {
		
		if !other.cooldown {
//		if other.effect != player_id.effect {sound_play(asset_get("mfx_player_ready")); timer = 1200;}
//		other.effect = player_id.effect
//		with (player_id) {	user_event(0)}
		}
		other.cooldown = 2;
	}
	if player_id == other.player_id && ((attack == AT_DAIR  && hbox_num > 1) or attack == AT_DTILT or (attack == AT_USTRONG && hbox_group == 1)) && place_meeting(x,y,other){
		other.vsp = min(other.vsp, -kb_value*0.8);
	}
	if player_id == other.player_id && (attack == AT_FSTRONG or attack == AT_BAIR) && place_meeting(x,y,other){
		with (other) {var aaa = get_hitbox_angle(other.id)};
		other.vsp = lengthdir_y(kb_value*0.5, aaa);
		other.hsp = lengthdir_x(kb_value*1.7, aaa);
		if !other.free {
			other.free = true;
			other.active = 4;
			with (other) sound_play(sound_get("boing"));
		}
	}
}
if player_id.url != "2009829905" && player_id.url != "2199519462" {
	image_angle += spr_dir;
	vsp -= 0.6
}
with (oPlayer) {
	if !hitpause && state_cat == SC_HITSTUN && get_player_team(player) != tm && place_meeting(x,y,other) && !(hit_player_obj == other.player_id && last_attack == AT_EXTRA_1) && !other.can_hit[player+(clone*10)] {
		can_be_hit[other.orig_player] = 0;
		h = 1
		other.popped = spr_dir;
		other.can_hit[player+(clone*10)] = 1;
	}
}



if h != 0{
	if !instance_exists(hbox) {hbox = create_hitbox(AT_EXTRA_1, b, x, y);
		hbox.can_hit = can_hit;
	}
	if instance_exists(hbox) {
		hbox.y = y + hbox.y_pos
		hbox.x = x
		hbox.length++;
		hbox.cake_ins = id;
	}

	/*if player_id.bake_mode == 0*/ if oldpop == 0 timer = min(timer, 8);

	exit;
}

if !free or popped != 0 timer = max(timer-1, 0)

if place_meeting(x,y,asset_get("plasma_field_obj")) {
	timer = min(timer, 1);
	popped = 0;
	sound_play(asset_get("sfx_clairen_hit_med"));
}


if timer == 1 {
if popped != 0 {
	var hb = spawn_hit_fx(x,y,orig_player_id.cake_fx[img])
	hb.spr_dir = -popped
} else {
	var hb = spawn_hit_fx(x,y,orig_player_id.hfx[14])	
}

instance_destroy();
exit;
}




var divvy = 4;
image_index = (img*divvy-0.01) + divvy - ((timer*0.1) mod divvy);
if popped != 0{
	sprite_index = sprite_get("cake_explode_"+string(img));
	image_index = 0;
	spr_dir = -popped;
	hsp = 0;
	vsp = 0;
	active = 0;
}

cooldown -= (cooldown > 0)


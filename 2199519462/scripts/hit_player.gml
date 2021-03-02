/*
if my_hitboxID.effect == 69 && bake_strong {
	hit_player_obj.orig_knock *= bake_multiplier
	
	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, hfx[0])
	sound_play(asset_get("sfx_ell_steam_release"))
	var p = 8;
	hitstop += p;
	hitstop_full += p;
	hit_player_obj.hitstop += p;
	hit_player_obj.hitstop_full += p;
}
*/
var rune = has_rune("H");

var p = 0;
hit_player_obj.amarelle_player = id;

if my_hitboxID.attack == AT_TAUNT {
	hit_player_obj.orig_knock = 4;
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num >= 4 with (my_hitboxID) {
	if instance_exists(cake_ins) {
		if cake_ins.hsp != 0 cake_ins.spr_dir = -sign(cake_ins.hsp)
		cake_ins.popped = cake_ins.spr_dir
		cake_ins.timer = 8;
		cake_ins.hsp = 0;
		cake_ins.vsp = 0;
	}
}

if !bake_strong {
//	if my_hitboxID.effect == 69 or my_hitboxID.effect == 69420 && hit_player_obj.amarelle_timer <= 0 {
	if self_effect > 0 {
	sound_play(sound_get("applyloud"))
		hit_player_obj.amarelle_effect[hit_player_obj.amarelle_current] = self_effect;
		if rune hit_player_obj.amarelle_current = !hit_player_obj.amarelle_current
		hit_player_obj.amarelle_hfx_time = 0;
		hit_player_obj.amarelle_hfx = self_effect;
		//user_event(0)
	if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2 {
		hit_player_obj.amarelle_effect[hit_player_obj.amarelle_current] = my_hitboxID.ameffect;
		hit_player_obj.amarelle_current = !hit_player_obj.amarelle_current
	}
	
	}
	self_effect = 0;
} else {
	if (((my_hitboxID.effect == 420 or my_hitboxID.effect == 69420) && hit_player_obj.amarelle_timer <= 0) or (my_hitboxID.hbox_group == 8 && (hit_player_obj.amarelle_timer <= 0 or has_rune("E"))))  && hit_player_obj.amarelle_effect[0] > 0 {
		hit_player_obj.amarelle_should_submit = 1;
	}
}

	if my_hitboxID.attack == AT_EXTRA_1 && instance_exists(my_hitboxID.cake_ins) {
		if my_hitboxID.cake_ins.effect > 0 hit_player_obj.amarelle_effect[hit_player_obj.amarelle_current] = my_hitboxID.cake_ins.effect;
		
			if rune hit_player_obj.amarelle_current = !hit_player_obj.amarelle_current
		if bake_mode or has_rune("E") hit_player_obj.amarelle_timer = 30;
		sound_play(sound_get("applyloud"))

	}

p = 0; repeat(prox_limit) {
	if hit_player_obj.orig_knock > 4 && instance_exists(prox_ins[p]) && abs(angle_difference( point_direction(0, 0, hit_player_obj.old_hsp, hit_player_obj.old_vsp), point_direction(hit_player_obj.x,hit_player_obj.y,prox_ins[p].x,prox_ins[p].y-80))) < (20 + has_rune("B")*15) {

		hit_player_obj.old_hsp = lengthdir_x(hit_player_obj.orig_knock,point_direction(hit_player_obj.x,hit_player_obj.y,prox_ins[p].x,prox_ins[p].y-80))
		hit_player_obj.old_vsp = lengthdir_y(hit_player_obj.orig_knock,point_direction(hit_player_obj.x,hit_player_obj.y,prox_ins[p].x,prox_ins[p].y-80))
		break;
	}
	p++;
}
if get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) > 0 && bake_strong && my_hitboxID.hbox_group != -1 {
	sound_play(asset_get("sizzle"))
}

if my_hitboxID.attack == AT_DATTACK {
	take_damage(hit_player_obj.player, player, floor(abs(old_hsp)*0.6))
	hit_player_obj.orig_knock += abs(old_hsp)*0.7
}

if my_hitboxID.attack == AT_DSPECIAL /*&& my_hitboxID.kb_value == 0 */with (hit_player_obj) {
var a = get_hitbox_angle(other.my_hitboxID)
//hsp = abs(lengthdir_x(orig_knock*other.my_hitboxID.kb_scale, a))*sign(-hsp)
//vsp = lengthdir_y(orig_knock*other.my_hitboxID.kb_scale, a)
sound_play(asset_get("sfx_frog_nspecial_shove"))

//old_hsp = hsp
//old_vsp = vsp

hsp = -old_hsp
vsp = -old_vsp
hitpause = 1
//hitstop = hitpause = other.my_hitboxID.hitpause
//hitstop_full = hitstop
}

if my_hitboxID.attack == AT_NSPECIAL {
hit_player_obj.amarelle_effect[hit_player_obj.amarelle_current] = my_hitboxID.hbox_num;
}

if my_hitboxID.attack == AT_USPECIAL {
window = 5;
window_timer = 0;
old_hsp = spr_dir*-3
old_vsp = -8
}
var h = 0;
var p = obj_article_platform
with (hit_player_obj) {
	if !free && place_meeting(x, y+1, p) {
		h = 1;
	}
}
if h {
	var bt = 110;
	hit_player_obj.burned = 1;
	hit_player_obj.burnt_id = other.id
	if hit_player_obj.burn_timer == 0 hit_player_obj.burn_timer = bt; else hit_player_obj.burn_timer = min(hit_player_obj.burn_timer, 140)
}


if my_hitboxID.attack == AT_DSTRONG {
	var bt = 140;
	if hit_player_obj.burn_timer == 0 hit_player_obj.burn_timer = bt; else hit_player_obj.burn_timer = min(hit_player_obj.burn_timer, 140)
}

if my_hitboxID.attack == AT_FSPECIAL {
	strong_charge -= 20;
}
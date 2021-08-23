if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && hit_player_obj != id {
	gem_ins = instance_create(my_hitboxID.x, my_hitboxID.y - 50, "obj_article1");
	if gem_spawn_stun_cooldown > 0 move_cooldown[AT_NSPECIAL_2] = gem_spawn_stun_cooldown;
	if gem_spawn_dash_cooldown > 0 move_cooldown[AT_NSPECIAL_AIR] = gem_spawn_dash_cooldown;
}

if my_hitboxID.effect == 990 && my_hitboxID.player_id == id && is_opponent_in_hitstun() {
	hit_player_obj.olympia_stun = stun_time;
	hit_player_obj.olympia_stunfull = hit_player_obj.olympia_stun;
	hit_player_obj.hitstop_full = 6;
	hit_player_obj.hitstop = 3;
	hit_player_obj.olympia_stunplayer = my_hitboxID.orig_player;
	sound_stop(asset_get("sfx_may_arc_hit"));
	sound_play(asset_get("sfx_may_arc_hit"));
}
//Command Grab code
if (attack == AT_USPECIAL && uspec_is_command_grab) {
	if (window == 2 && (grabbedid == noone || !instance_exists(grabbedid))) && is_opponent_in_hitstun() { //   !hit_player_obj.super_armor && !hit_player_obj.soft_armor {
		hit_player_obj.grabbed = 1;
		grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
	}
	if ((window == 3 || window == 4) && grabbedid != noone && instance_exists(grabbedid)){
		hit_player_obj.grabbed = 0;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2 {
	sound_play(sound_get("olym_finisher"));
}


//==============================================================================
//                          Abyss Rune Code
//==============================================================================
if runesEnabled {
	if instance_exists(gem_ins) && point_distance(hit_player_obj.x,hit_player_obj.y,gem_ins.xstart,gem_ins.ystart) <= gem_ins.field_size {
		if runeH {
			hit_player_obj.hitstop_full += runeH_stunTime;
			hit_player_obj.hitstop += runeH_stunTime;
		}
		
		if runeN && hit_player_obj.orig_knock < 20{
			hit_player_obj.orig_knock = max(hit_player_obj.orig_knock/1.5,7);
		}
	}
	
	if runeK && rune_revengebuff > 0 && my_hitboxID.attack != AT_TAUNT 
		&& my_hitboxID.type == 1 && get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_CONSUMES_REVENGE_RUNE) == 1 {
		hit_player_obj.orig_knock = hit_player_obj.orig_knock*(1+(rune_revengebuff*0.3)-((rune_revengebuff^2)*0.1));
		take_damage(hit_player_obj.player,player,floor(rune_revengebuff*1.4));
		var sprk = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-20,olym_hit);
		sprk.depth = hit_player_obj.depth-15;
		rune_revengebuff = 0;
		hit_player_obj.olympia_revengehit = true;
		hit_player_obj.olympia_revengeplayer = id;
		
	}
	
	if my_hitboxID.kb_angle > 180 && !hit_player_obj.olympia_airtoground && hit_player_obj.free && runeD {
		hit_player_obj.hitstop_full += 10;
		hit_player_obj.hitstop += 10;
		hit_player_obj.olympia_airtoground = 1;
		hit_player_obj.can_tech = false;
		hit_player_obj.can_bounce = false;
	}
	if !free hit_player_obj.olympia_airtoground = 0;
	
	if runeO && get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_HITBOX_ENABLE_COMMANDINPUT) == 1 {
		can_command_input = true;
	}
}
//==============================================================================


//returns whether an opponent is in hitstun. safest way of checking for grabs and other hit_player effects.
#define is_opponent_in_hitstun
return (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND);
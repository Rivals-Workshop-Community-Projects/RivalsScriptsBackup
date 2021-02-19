//hit_player
if (has_rune("K")){
	move_cooldown[AT_DAIR] = 0;	
	
	if my_hitboxID.hbox_num == 1 {
	old_vsp = -15;
	sound_play( sound_get( "smw2_stomp_2" ) );
	}
}

if (my_hitboxID.attack == AT_DAIR) && (my_hitboxID.hbox_num < 3) && yosword = 0 {
	window = 7;
	window_timer = 0;
	flutterTimer = 65;
	flutterAttack = 0;
	move_cooldown[AT_DAIR] = 50;
	
	if my_hitboxID.hbox_num == 1 {
	old_vsp = -10;
	sound_play( sound_get( "smw2_stomp_2" ) );
	}
	if my_hitboxID.hbox_num == 2 {
	old_vsp = -8;
	sound_play( sound_get( "smw2_stomp_1" ) );
	}
	}


if (my_hitboxID.attack == AT_FSPECIAL) && (my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("ssbm_eggbreak"));
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y+45, eggBreak);
}

if attack == AT_NSPECIAL && (my_hitboxID.attack == AT_NSPECIAL && yosword = 0) {
	window = 4;
	window_timer = 6;
}

if (my_hitboxID.attack == AT_NSPECIAL_2) {
	djumps = 0;
}

if bossmode = 1 {	
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 11{
	
	if fheal < 300 {
       fheal += 30
	}
	
    sound_play(asset_get("sfx_ori_taunt2"));
    sound_play(asset_get("sfx_ori_taunt2"));
    if spr_dir = 1 {
	spawn_hit_fx (hit_player_obj.x - 50, hit_player_obj.y - 100, bheal)
	} else {
	spawn_hit_fx (hit_player_obj.x + 50, hit_player_obj.y - 100, bheal2)	
	}
	
	
with (oPlayer) {
  if (id != other.id) {
take_damage( player, -1 , -10 )
}
}
}

if hit_player_obj.move_cooldown[AT_JAB] > 10 && my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num <= 10  && bossmode = 1 {
	

	
	
	if fparry < 600 {
       fparry += 20
	}
	
	
	bsta -= 30
	hit_player_obj.move_cooldown[AT_TAUNT] = 180	
	if spr_dir = 1 {
	spawn_hit_fx (hit_player_obj.x - 50, hit_player_obj.y - 100, bparry)
	} else {
	spawn_hit_fx (hit_player_obj.x + 50, hit_player_obj.y - 100, bparry2)	
	}
	
	if get_gameplay_time() % 2 = 1 {
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	} else {
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	}
		spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, 306)
	
		with (oPlayer) {
  if (id != other.id) {
  	set_state (PS_IDLE_AIR)
  	hitpause = 0
}
}

}



if hit_player_obj.move_cooldown[AT_JAB] > 10 && my_hitboxID.attack != AT_FSPECIAL && my_hitboxID.attack != AT_EXTRA_3{

		if fparry < 600 {
       fparry += 25
	}
	
	hit_player_obj.move_cooldown[AT_TAUNT] = 180
with (oPlayer) {
if (id != other.id) {
	take_damage( player, -1 , -1 * enemy_hitboxID.damage )	
  	set_state (PS_IDLE_AIR)
  	hitpause = 0
}
}

	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	
	bsta -= 30

	if yosword = 1 {
	create_hitbox( AT_FSPECIAL, 19, x, y - 50);
	yosword = 3
	}

	spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, 306)

	if get_gameplay_time() % 2 = 1 {
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	} else {
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	}
	
	if spr_dir = 1 {
	spawn_hit_fx (hit_player_obj.x - 50, hit_player_obj.y - 200, bparry)
	} else {
	spawn_hit_fx (hit_player_obj.x + 50, hit_player_obj.y - 200, bparry2)	
	}
	
}

}


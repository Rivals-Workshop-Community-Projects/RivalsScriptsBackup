///

if has_rune("G") {
	
	with hit_player_obj {
		take_damage(player,-1,floor(other.my_hitboxID.damage/2))
	}
} 

if has_rune("H") {
	
	with hit_player_obj {
		take_damage(player,-1,floor(other.my_hitboxID.damage/2))
	}
}

if has_rune("I") {
	
	with hit_player_obj {
		take_damage(player,-1,floor(other.my_hitboxID.damage/2))
	}
}

if has_rune("K") {
	
	with hit_player_obj {
		take_damage(player,-1,floor(other.my_hitboxID.damage/2))
	}
}

if has_rune("N") {
	
	with hit_player_obj {
		take_damage(player,-1,floor(other.my_hitboxID.damage))
	}
}

if has_rune("O") {
	
	with hit_player_obj {
		take_damage(player,-1,floor(other.my_hitboxID.damage))
	}
}

if raged{
	if raged == 3 {
		shake_camera(floor(hdamage/2),4 + floor(hdamage/2))
		hit_player_obj.hitstop += 12
		hitstop += 12
		hdamage = my_hitboxID.damage
		with hit_player_obj {
			take_damage(player, -1, other.hdamage)
		}
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.6 +hdamage/10)
				sound_play(sound_get("parry"),false,noone, 0.7 + hdamage/10)
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 113)
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 109)
		raged = 1
	}
	
	
	if raged == 2 {
		shake_camera(floor(hdamage/2),4 + floor(hdamage/3))
		hit_player_obj.hitstop += 6
		hitstop += 6
		hdamage = my_hitboxID.damage
		with hit_player_obj {
			take_damage(player, -1, floor(other.hdamage/2))
		}
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.5 +hdamage/12)
				sound_play(sound_get("parry"),false,noone, 0.5 + hdamage/12)
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 113)
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 109)
		raged = 1
	}
}

if move_cooldown[AT_FSPECIAL_2] > 0 {
	hitstop += 6
	sound_play(asset_get("sfx_crunch_water"),false,noone, 0.7 + my_hitboxID.damage/10)
	sound_play(asset_get("sfx_orca_absorb"),false,noone, 0.7 + my_hitboxID.damage/10)

	take_damage(player, -1,my_hitboxID.damage*-1)
	move_cooldown[AT_FSPECIAL_2] = 0
	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 67 )
}

if my_hitboxID.attack == AT_NSPECIAL && adap {
	charge = 5
}
LA += floor(my_hitboxID.damage*4 + my_hitboxID.damage*(4 + random_func(1,4,true)))

if my_hitboxID.type == 1 && move_cooldown[AT_TAUNT] = 0 && charge < 5 && my_hitboxID.attack != AT_FSPECIAL {
	charge += 1
	move_cooldown[AT_TAUNT] = 15 
}


if my_hitboxID.type == 1 or (my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num = 2){
  
  switch (style) {
        case 0 :
	    sound_play(sound_get("lhit"),false,noone, 0.5 + my_hitboxID.damage/24)	
	    break;
	    
	    case 1 :
	    sound_play(sound_get("ahit"),false,noone,0.5 +my_hitboxID.damage/20)	
	    break;
	    
	    case 2 :
        sound_play(sound_get("anhit"),false,noone,0.5 +my_hitboxID.damage/20)	
	    break;
	    
	    case 3 :
        sound_play(sound_get("thhit"),false,noone,0.5 +my_hitboxID.damage/24)	 
	    break;
	    
	    case 4 :
	    if my_hitboxID.type == 1  {
	     sound_play(sound_get("thit"),false,noone,0.5 +my_hitboxID.damage/24)
	    }
	    break;
	    
	}
}	
	
if my_hitboxID.attack == AT_DAIR {
        hit_player_obj.x += ((x + (35 * spr_dir)) - hit_player_obj.x) / 2
		hit_player_obj.y += ((y + 30) - hit_player_obj.y) / 2
}


if (style == 2 or style == 4) && my_hitboxID.type == 1 {
	antarget = hit_player_obj
	move_cooldown[AT_EXTRA_2] = 100
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, my_hitboxID.kb_value);
	set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, my_hitboxID.kb_scale);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 1+ floor(my_hitboxID.hitpause/2) );
	set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, floor(my_hitboxID.hitpause_growth/2));
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, floor(my_hitboxID.damage/2.4) );
	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, my_hitboxID.kb_angle);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, my_hitboxID.hitstun_factor);
}



if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num = 10 {
	spawn_hit_fx(hit_player_obj.x,hit_player_obj.y,lighten)
}
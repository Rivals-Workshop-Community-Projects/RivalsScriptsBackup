///

draw_xscale = spr_dir

if my_hitboxID.attack == AT_BAIR {
	sound_play(sound_get("slice"),false,noone,1.2,0.6)
	sound_play(asset_get("sfx_blow_heavy1"),false,noone,1, 2.2 - min((hitstop*hitstop)/120 , 1.5) )
}

if my_hitboxID.attack == AT_FAIR {
	sound_play(sound_get("slice"),false,noone,1.2,0.65)
}


if my_hitboxID.attack == AT_DSTRONG {
	sound_play(sound_get("slice"),false,noone,1.2,0.6)
	sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1.1)
}
if my_hitboxID.attack == AT_NAIR && !isyellow{
hit_player_obj.x += floor(((x + (35 * spr_dir)) - hit_player_obj.x) / 4)
		hit_player_obj.y += floor(((y + 10) - hit_player_obj.y) / 4)
}

if my_hitboxID.attack == AT_DTILT && !isyellow{
hit_player_obj.x += floor(((x + (60 * spr_dir)) - hit_player_obj.x) / 2)
		hit_player_obj.y += floor(((y + 10) - hit_player_obj.y) / 2)
}

if my_hitboxID.attack == AT_NSPECIAL && !isyellow{
     inkshield = 300
     inkshield_buildup = 0
     sound_play(sound_get("RI"))	
     spawn_hit_fx (x, y - 32, 304)
}

if inkshield > 0 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_FSPECIAL && !isyellow && inkshield < 300 {

}

if inkshield < 0 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_FSPECIAL && !isyellow {

}


if my_hitboxID.attack == AT_DAIR && !isyellow{
hit_player_obj.y += 14
if hit_player_obj.y > room_height/2 + 300 {
	if x > room_height/2 {
	hit_player_obj.x += 14
	} else {
	hit_player_obj.x -= 14	
	}
}


}


if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 12{
 zettahit = 1   
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 22{
 alexhit = 1   
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 25{
 mayuhit = 1   
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 18{
 hit_player_obj.y -= 20  
}

if my_hitboxID.attack == AT_DSPECIAL && (my_hitboxID.hbox_num == 26 or my_hitboxID.hbox_num == 27){
 akaihit = 1   
}
move_cooldown[AT_EXTRA_1] = 10

if my_hitboxID.attack == AT_USPECIAL  && my_hitboxID.hbox_num == 3 && isyellow{
	spr_dir *= -1
 y = hit_player_obj.y - 20	
	vsp = -10
	hsp = 3*spr_dir
 set_attack(AT_BAIR)
 window = 3
 window_timer = 3
 x = hit_player_obj.x 

	
}

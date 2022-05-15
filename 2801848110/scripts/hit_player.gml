/// my_hitboxID.attack

move_cooldown[AT_USPECIAL] = 0
tauntnum += 1

if my_hitboxID.hit_priority != 2 {
  sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,max(.6, hitstop*hitstop/100), 3 - min(2, 1 + hitstop*hitstop/150) )
}

 hit_player_obj.crippled = 0
 
if my_hitboxID.attack == AT_JAB {
     move_cooldown[AT_FTHROW] = 20
}

if my_hitboxID.attack == AT_USPECIAL &&  my_hitboxID.hbox_num == 9 {
    y -= 2
    hitpause = true 
    hitstop = 6
    set_state(PS_IDLE_AIR)
    with asset_get("pHitBox") {
			if player_id = other {
			if attack == AT_USPECIAL y += 20
			if attack == AT_FSPECIAL y += 20	
			destroyed = true
			}
	}
	hsp = 0
	vsp = -6
	old_hsp = 0
	old_vsp = -6
	djumps = 0
    projecting = false 
}


if esave > 1 or my_hitboxID.attack == AT_DSPECIAL {
	hit_player_obj.pausedtime = 20
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 && hit_player_obj.state_cat == SC_HITSTUN {
    hit_player_obj.x += floor((x + hsp - hit_player_obj.x)/3)
    hit_player_obj.y += floor((y + vsp + 60 - hit_player_obj.y)/3)
}

if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1 && hit_player_obj.state_cat == SC_HITSTUN {
    state_timer += 1000
    hit_player_obj.x += floor((x + hsp - hit_player_obj.x)/3)
    hit_player_obj.y += floor((y + vsp + 20 - hit_player_obj.y)/3)
}

if my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1 {
    fx = spawn_hit_fx(x + 20*spr_dir, y - 20, 303)
    fx2 = spawn_hit_fx(x + 20*spr_dir, y - 20, 304)
    fx.pause = 8
    fx2.pause = 8
    fx2.spr_dir = 0.25
    hit_player_obj.x += floor((x - hit_player_obj.x)/6)
     sound_play(sound_get("Snap"))
     hitstop += 10
     hit_player_obj.hitstop += 10
     hit_player_obj.crippled = 1
     move_cooldown[AT_FTHROW] = 90
}


if my_hitboxID.attack == AT_USPECIAL {
    has_hit = true 
}

timeflow += my_hitboxID.damage * 3
move_cooldown[AT_EXTRA_2] = 15
move_cooldown[AT_UTHROW] = hitstop
///

if my_hitboxID.attack == AT_USPECIAL  && my_hitboxID.hbox_num == 3 && isyellow{
	spr_dir *= -1
 y = hit_player_obj.y - 20	
	old_vsp = -6
	old_hsp = 3*spr_dir
 set_attack(AT_BAIR)
 window = 3
 window_timer = 3
 x = hit_player_obj.x 

	move_cooldow[AT_USPECIAL] = true
}

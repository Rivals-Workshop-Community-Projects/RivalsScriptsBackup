//got parried
if (my_hitboxID.attack == AT_NSPECIAL){
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp *= 1.75;
	my_hitboxID.y = hit_player_obj.y - round(hit_player_obj.char_height/2);
}
if my_hitboxID == ptooie{
	if !hitpause && attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
		window = 4;
		window_timer = 0;
	}
	ptooie.ptooie_hit = true;
	ptooie.ptCheck = true;
	ptooie.ptooie_who = hit_player_obj;
	ptooie.ptBounced = true;
}
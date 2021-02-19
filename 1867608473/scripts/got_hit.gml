//got_hit.gml
if (supersaiyan == 1 && !diamondbutbetterkrisbbutbetter){
    tp_gauge -= 4;
}

if (supersaiyan == 1 && diamondbutbetterkrisbbutbetter){
    tp_gauge -= 1;
}

if diamondbutbetterkrisbbutbetter{
    if (get_player_damage(player) >= 50 && get_player_damage(player) < 100){
		hit_player_obj.old_hsp *= 1.15;
		hit_player_obj.old_vsp *= 1.15;
	}
	else if (get_player_damage(player) >= 100){
		hit_player_obj.old_hsp *= 1.30;
		hit_player_obj.old_vsp *= 1.30;
	}
}

if dstrong_hit_list[0,0] != noone {
	for (var p = 0; p < array_length(dstrong_hit_list); p++) {
		if (dstrong_hit_list[p,0] == noone) {
			break;
		}
		else {
			dstrong_hit_list[p,0] = noone;
			dstrong_hit_list[p,1] = 0;
		}
	}
}

if ("runeK" in self && runeK){
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_USPECIAL_2] = 0;
}

if (instance_exists(devilsknife)) {
	devilsknife.state = 4;
	devilsknife.state_timer = 0;
}

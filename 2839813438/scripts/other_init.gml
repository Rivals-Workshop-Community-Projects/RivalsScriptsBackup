//other_init
ct_glide = 0;
ct_offense = 0;
ct_hp = 0;
ct_weight = 0;
ct_boost = 0;
ct_turn = 0;
ct_defense = 0;
ct_charge = 0;
ct_topspeed = 0;


multiplayer_num = 0
hud_number = 0

for (var i = 1; i < 5; i++){
	if is_player_on( i ){
		multiplayer_num++
		if i <= player{
			hud_number++
		}
	}
}
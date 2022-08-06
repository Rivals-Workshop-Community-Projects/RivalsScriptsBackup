//Ice Clone Despawn FX
if (attack == AT_FSPECIAL && hitbox_timer == 599){
	destroyed = true;
}


//Ice Clone Gauge Reset
if (attack == AT_FSPECIAL && hitbox_timer == 1){
	player_id.GAUGE_CURRENT = 0;
}


//Ice Clone Despawn FX With Rune N
if (has_rune("N") && attack == AT_DSPECIAL && hitbox_timer == 119){
	destroyed = true;
}
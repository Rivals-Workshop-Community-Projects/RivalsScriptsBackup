//Ice Clone Despawn FX
if (attack == AT_FSPECIAL && hitbox_timer == 599){
	destroyed = true;
}


//Ice Clone Gauge Reset
if (attack == AT_FSPECIAL && hitbox_timer == 1){
	player_id.GAUGE_CURRENT = 0;
}
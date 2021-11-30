//article1_update

var oth = instance_place(x, y, asset_get("pHitBox"));
if (place_meeting(x, y, oth)){
	hp = 0;
}

if (hp == 0){
	sound_play(asset_get("sfx_ell_explosion_medium"));
	spawn_hit_fx( x, y - 30, 143 );
	create_hitbox(AT_DSPECIAL, 1, x, y - 30);
	instance_destroy();
} else {
	with player_id
		move_cooldown[AT_DSPECIAL] = 10;
}

if (free) {
	vsp += .5;
} else {
	vsp = 0;
}

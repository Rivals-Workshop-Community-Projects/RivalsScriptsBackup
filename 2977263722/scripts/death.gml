n_charge_stored = false;

sound_play(sound_get("bully_die"));

fxlol = spawn_hit_fx(x, y, death_coin);
fxlol.hsp = -2 + random_func(5, 4, false);
fxlol.vsp = -20;
fxlol.grav = 1;

if x < view_get_xview() {
    fxlol.x = view_get_xview() - 32;
	fxlol.hsp = 8;
}

if x > view_get_xview() + view_get_wview() {
    fxlol.x = view_get_xview() + view_get_wview() + 32;
	fxlol.hsp = -8;
}

if y < view_get_yview() {
   fxlol.y = view_get_yview() - 32;
   fxlol.vsp = -10;
}

if y > view_get_yview() + view_get_hview() {
   fxlol.y = view_get_yview() + view_get_hview() + 32;
   vsp = -35;
}
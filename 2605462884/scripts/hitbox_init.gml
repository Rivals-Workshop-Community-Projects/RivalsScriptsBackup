//hitbox_init

if (attack==AT_DTILT){
	c_old_hsp = 0;
	c_old_vsp = 0;
	bounce_count = 0;
	despawne = 0;
	thrower = false;
	item_grey = sprite_get("item_grey")
	collide_snd = sound_get("colliding")
}
if (attack==AT_DSTRONG){
	deadly_grey = sprite_get("deadly_grey")
	collide_snd = sound_get("colliding")
	//other_hbox = -4;
}
if (attack==AT_BAIR){
	x_pre_1 = 0;
	x_pre_2 = 0;
	x_pre_3 = 0;
	x_pre_4 = 0;
	x_pre_5 = 0;
	x_pre_6 = 0;
}
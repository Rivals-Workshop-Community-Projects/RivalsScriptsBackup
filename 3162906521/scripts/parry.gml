sound_play(sound_get("parry_hit"));
    s_ammo_drop = instance_create(x+20,y-100,"obj_article2");
	s_ammo_drop.hsp = -1 * spr_dir;
	s_ammo_drop.vsp = -10.5;
	s_ammo_drop.ammo_direction = spr_dir * -1;
	s_ammo_drop.ammo_amount = 25;
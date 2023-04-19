//this doesn't need to be a user_event, but doing this any other way feels like a war crime

if (get_player_color(player) == 10){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("peashot_ea"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ex_shot_ea"));
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("spreadshot1_ea"));
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("spreadshot2_ea"));
	set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("spreadshot3_ea"));
	
	var i;
	for (i = 0; i < 8; ++i) {
		set_hitbox_value(AT_FSPECIAL, 2+i, HG_PROJECTILE_SPRITE, sprite_get("spread_ex_ea"));
	}
	
	set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("chaser_ea"));
	
	set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("lobbershot_ea"));
	set_hitbox_value(AT_FSPECIAL, 12, HG_PROJECTILE_SPRITE, sprite_get("kablooey_ea"));
	
	set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_weak_ea"));
	set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_full_ea"));
	
	set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("reboundshot_ea"));
	set_hitbox_value(AT_FSPECIAL, 13, HG_PROJECTILE_SPRITE, sprite_get("rebound_ea"));
	
	eightway_top = hit_fx_create(sprite_get("ew_vfx_top_ea"), 25);
	eightway_middle = hit_fx_create(sprite_get("ew_vfx_middle_ea"), 30);
	eightway_bottom = hit_fx_create(sprite_get("ew_vfx_bottom_ea"), 35);
	kablooey_vfx = hit_fx_create(sprite_get("kablooey_vfx_ea"), 15);
	radical_barrage = hit_fx_create(sprite_get("radicalbarrage_ea"), 30);
	orbit_sprite = sprite_get("chaos_orbit_ea");
}
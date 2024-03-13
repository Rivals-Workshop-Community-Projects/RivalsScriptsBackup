switch (string_upper(get_player_name(player)))
{
	case "BENDY":
		set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_NAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_FAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("wrench"));
		firepea_sprite = sprite_get("wrench_torched");
		break;
}
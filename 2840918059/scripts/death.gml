//Reset Ice Clone Gauge
GAUGE_CURRENT = 0;

//Reset Nspecial Charge
move_cooldown[AT_TAUNT] = 0;
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ice_shatter"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 28);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 28);

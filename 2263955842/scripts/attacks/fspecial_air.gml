// persuision needle shots
set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_ground"));
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_ground_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 1);


set_num_hitboxes(AT_FSPECIAL_AIR, 1);

// ofuda
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 4)
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
if (get_player_color(player) != 11)
{
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("needle"));
}
else
{
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("amulet_ctc"));
}
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("needle"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, true);

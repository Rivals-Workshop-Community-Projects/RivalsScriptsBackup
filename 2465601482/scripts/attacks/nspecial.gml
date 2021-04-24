set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("pull_item"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("pull_item_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS,3);

set_window_value(AT_NSPECIAL,1,AG_WINDOW_LENGTH,5);

set_window_value(AT_NSPECIAL,2,AG_WINDOW_LENGTH,10);


set_window_value(AT_NSPECIAL,3,AG_WINDOW_LENGTH,9);

set_hitbox_value(AT_NSPECIAL,1,HG_HITBOX_TYPE,2);
set_hitbox_value(AT_NSPECIAL,1,HG_PRIORITY,2);
set_hitbox_value(AT_NSPECIAL,1,HG_LIFETIME,3600);
set_hitbox_value(AT_NSPECIAL,1,HG_WIDTH,16);
set_hitbox_value(AT_NSPECIAL,1,HG_HEIGHT,16);
set_hitbox_value(AT_NSPECIAL,1,HG_DAMAGE,3);
set_hitbox_value(AT_NSPECIAL,1,HG_SHAPE,0);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_PLASMA_SAFE,1);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_GRAVITY,0.65);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_SPRITE,sprite_get("item_pop"));
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_AIR_FRICTION,0.02);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_GROUND_FRICTION,0.9);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_WALL_BEHAVIOR,2);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_ENEMY_BEHAVIOR,1);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_DESTROY_EFFECT,shadow_indicator_fx);
set_hitbox_value(AT_NSPECIAL,1,HG_HITPAUSE_SCALING,0.2);
set_hitbox_value(AT_NSPECIAL,1,HG_BASE_HITPAUSE,8);
set_hitbox_value(AT_NSPECIAL,1,HG_BASE_KNOCKBACK,6);
set_hitbox_value(AT_NSPECIAL,1,HG_KNOCKBACK_SCALING,0.01);
set_hitbox_value(AT_NSPECIAL,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL,1,HG_VISUAL_EFFECT,shadow_indicator_fx2);
set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_PARRY_STUN,1);
set_hitbox_value(AT_NSPECIAL,1,HG_EXTENDED_PARRY_STUN,1);

if has_rune("J") {
    set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_UNBASHABLE,1);
    set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_DOES_NOT_REFLECT,1);
    set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_IS_TRANSCENDENT,1);
}

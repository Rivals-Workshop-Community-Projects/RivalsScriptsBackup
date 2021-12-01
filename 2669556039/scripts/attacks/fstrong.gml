set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);//doesnt work with other windows? want one quick start window before

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 10);

//TODO loop for how long pressed
for(var i = 3; i < 8; i++)
{
    set_window_value(AT_FSTRONG, i, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSTRONG, i, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_FSTRONG, i, AG_WINDOW_ANIM_FRAME_START, 11);
    set_window_value(AT_FSTRONG, i, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_FSTRONG, i, AG_WINDOW_SFX, asset_get("sfx_boss_laser_hit"));
}
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_boss_laser"));

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 6);

for(var i = 1; i < 5; i++)
{
    set_hitbox_value(AT_FSTRONG, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_FSTRONG, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, i, HG_WINDOW, 2+i);
    set_hitbox_value(AT_FSTRONG, i, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSTRONG, i, HG_HITBOX_X, 80);
    set_hitbox_value(AT_FSTRONG, i, HG_HITBOX_Y, -48);
    set_hitbox_value(AT_FSTRONG, i, HG_WIDTH, 150);
    set_hitbox_value(AT_FSTRONG, i, HG_HEIGHT, 80);
    set_hitbox_value(AT_FSTRONG, i, HG_SHAPE, 0);
    set_hitbox_value(AT_FSTRONG, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_FSTRONG, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 361);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 2);
    set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_FSTRONG, i, HG_HITSTUN_MULTIPLIER, 1.2);
    set_hitbox_value(AT_FSTRONG, i, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(AT_FSTRONG, i, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_FSTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
}

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 150);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 99);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 24);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 24);
set_hitbox_value(AT_FSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 0);//1);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 361);
//set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSTRONG, 6, HG_IGNORES_PROJECTILES, 1);
//set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 1);//0);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("fstrongParticle"));
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_HSPEED, 0);//-2);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_VSPEED, 0);//-2);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_GRAVITY, 0);//0.125);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_AIR_FRICTION, 0.001);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);//0);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);//0);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);//0);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_PLASMA_SAFE, 0);
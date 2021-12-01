set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_CATEGORY, 2);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_OFF_LEDGE, 1);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH)-1);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -2);

for(var i = 3; i < 6; i++)
{
    set_window_value(AT_BAIR, i, AG_WINDOW_TYPE, 8);
    set_window_value(AT_BAIR, i, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_BAIR, i, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_BAIR, i, AG_WINDOW_ANIM_FRAME_START, 5);
    set_window_value(AT_BAIR, i, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_BAIR, i, AG_WINDOW_SFX, asset_get("sfx_leaves"));
}

set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);


set_num_hitboxes(AT_BAIR, 3);//5);

//weak feet
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//strong head
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -64);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//leaves
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 9);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 65);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -64);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 16);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 16);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0);//0.1);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0);//0.1);
set_hitbox_value(AT_BAIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("bairLeaf"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 18);//115);1);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GRAVITY, 0.125);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_AIR_FRICTION, 0.001);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_BAIR, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 3, HG_SDI_MULTIPLIER, 1.2);

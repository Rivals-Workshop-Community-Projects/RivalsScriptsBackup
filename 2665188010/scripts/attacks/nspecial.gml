set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//Holding
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
//Throw forward
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);
//Throw backward
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(AT_NSPECIAL, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 44);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
// set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);

for(i = 2; i < 4; i++){
    set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 2);
    set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 65);
    set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 65);
    set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 8);
    set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE, 40);
    set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, 0.65);
    set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_NSPECIAL, i, HG_HITPAUSE_SCALING, 0.7);
    set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT_X_OFFSET, 32);
    set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT_Y_OFFSET, -10);
    set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, 1);
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_UNBASHABLE, true);
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PLASMA_SAFE, true);
}
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 5);
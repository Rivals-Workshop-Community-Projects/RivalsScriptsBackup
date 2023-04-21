set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

for(i = 2; i <= 6; i++){
    set_window_value(AT_FTILT, i, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FTILT, i, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_FTILT, i, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_FTILT, i, AG_WINDOW_ANIM_FRAME_START, min(i,4));
    set_window_value(AT_FTILT, i, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_FTILT, i, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
    set_window_value(AT_FTILT, i, AG_WINDOW_SFX_FRAME, 1);
}

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 5);

for(i = 1; i <= 5; i++){
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_FTILT, i, HG_WINDOW, 1+i);
    set_hitbox_value(AT_FTILT, i, HG_LIFETIME, 7);
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_X, 23);
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_Y, -28);
    set_hitbox_value(AT_FTILT, i, HG_WIDTH, 14);
    set_hitbox_value(AT_FTILT, i, HG_HEIGHT, 10);
    set_hitbox_value(AT_FTILT, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_FTILT, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_FTILT, i, HG_ANGLE, 361);
    set_hitbox_value(AT_FTILT, i, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_FTILT, i, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_FTILT, i, HG_HITPAUSE_SCALING, .6);
    set_hitbox_value(AT_FTILT, i, HG_VISUAL_EFFECT, 18); // Leaf Tiny
    set_hitbox_value(AT_FTILT, i, HG_VISUAL_EFFECT_Y_OFFSET, 18);
    set_hitbox_value(AT_FTILT, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_HSPEED, 17);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_SPRITE, sprite_get("bullet_seed"));
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_DESTROY_EFFECT, 1);
}

set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 17); // Leaf Small
set_hitbox_value(AT_FTILT, 5, HG_EXTRA_CAMERA_SHAKE, 2);
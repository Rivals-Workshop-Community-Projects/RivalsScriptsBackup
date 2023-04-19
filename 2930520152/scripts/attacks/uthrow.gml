set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

if(has_rune("N")){
    set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 2);
    set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 20);
}
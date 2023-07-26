set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_2, AG_LANDING_LAG, 6);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 79);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 68 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

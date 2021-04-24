
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);

set_window_value(AT_JAB,1,AG_WINDOW_LENGTH,4);
set_window_value(AT_JAB,1,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_JAB,1,AG_WINDOW_ANIM_FRAME_START,0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB,2,AG_WINDOW_LENGTH,4);
set_window_value(AT_JAB,2,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_JAB,2,AG_WINDOW_ANIM_FRAME_START,1);

set_window_value(AT_JAB,3,AG_WINDOW_LENGTH,8);
set_window_value(AT_JAB,3,AG_WINDOW_CANCEL_TYPE,1);
set_window_value(AT_JAB,3,AG_WINDOW_ANIM_FRAMES,2);
set_window_value(AT_JAB,3,AG_WINDOW_ANIM_FRAME_START,2);

set_num_hitboxes(AT_JAB,2);

set_hitbox_value(AT_JAB,1,HG_PRIORITY,2);
set_hitbox_value(AT_JAB,1,HG_WINDOW,2);
set_hitbox_value(AT_JAB,1,HG_LIFETIME,3);
set_hitbox_value(AT_JAB,1,HG_DAMAGE,3);
set_hitbox_value(AT_JAB,1,HG_HITBOX_X,32);
set_hitbox_value(AT_JAB,1,HG_HITBOX_Y,-32);
set_hitbox_value(AT_JAB,1,HG_WIDTH,44);
set_hitbox_value(AT_JAB,1,HG_HEIGHT,22);
set_hitbox_value(AT_JAB,1,HG_ANGLE,45);
set_hitbox_value(AT_JAB,1,HG_SHAPE,1);
set_hitbox_value(AT_JAB,1,HG_BASE_KNOCKBACK,7);
set_hitbox_value(AT_JAB,1,HG_KNOCKBACK_SCALING,0.01);
set_hitbox_value(AT_JAB,1,HG_BASE_HITPAUSE,4);
set_hitbox_value(AT_JAB,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_JAB,2,HG_PRIORITY,2);
set_hitbox_value(AT_JAB,2,HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_JAB,2,HG_LIFETIME,1);
set_hitbox_value(AT_JAB,2,HG_DAMAGE,8);
set_hitbox_value(AT_JAB,2,HG_HITBOX_X,0);
set_hitbox_value(AT_JAB,2,HG_HITBOX_Y,-8);
set_hitbox_value(AT_JAB,2,HG_WIDTH,128);
set_hitbox_value(AT_JAB,2,HG_HEIGHT,64);
set_hitbox_value(AT_JAB,2,HG_ANGLE,45);
set_hitbox_value(AT_JAB,2,HG_SHAPE,1);
set_hitbox_value(AT_JAB,2,HG_BASE_KNOCKBACK,15);
set_hitbox_value(AT_JAB,2,HG_KNOCKBACK_SCALING,6);
set_hitbox_value(AT_JAB,2,HG_BASE_HITPAUSE,4);
set_hitbox_value(AT_JAB,2,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
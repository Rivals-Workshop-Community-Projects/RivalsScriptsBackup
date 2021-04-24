set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow_air"));
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTHROW,1,AG_WINDOW_LENGTH,5);
set_window_value(AT_UTHROW,1,AG_WINDOW_ANIM_FRAMES,2);
set_window_value(AT_UTHROW,1,AG_WINDOW_ANIM_FRAME_START,0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTHROW,2,AG_WINDOW_LENGTH,5);
set_window_value(AT_UTHROW,2,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_UTHROW,2,AG_WINDOW_ANIM_FRAME_START,2);

set_window_value(AT_UTHROW,3,AG_WINDOW_LENGTH,5);
set_window_value(AT_UTHROW,3,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_UTHROW,3,AG_WINDOW_ANIM_FRAME_START,3);

set_num_hitboxes(AT_UTHROW,1);

set_hitbox_value(AT_UTHROW,1,HG_PRIORITY,3);
set_hitbox_value(AT_UTHROW,1,HG_WINDOW,2);
set_hitbox_value(AT_UTHROW,1,HG_LIFETIME,2);
set_hitbox_value(AT_UTHROW,1,HG_DAMAGE,4);
set_hitbox_value(AT_UTHROW,1,HG_HITBOX_X,4);
set_hitbox_value(AT_UTHROW,1,HG_HITBOX_Y,-52);
set_hitbox_value(AT_UTHROW,1,HG_SHAPE,1);
set_hitbox_value(AT_UTHROW,1,HG_WIDTH,28);
set_hitbox_value(AT_UTHROW,1,HG_ANGLE,70);
set_hitbox_value(AT_UTHROW,1,HG_HEIGHT,60);
set_hitbox_value(AT_UTHROW,1,HG_BASE_KNOCKBACK,6);
set_hitbox_value(AT_UTHROW,1,HG_KNOCKBACK_SCALING,0.2);
set_hitbox_value(AT_UTHROW,1,HG_BASE_HITPAUSE,5);
set_hitbox_value(AT_UTHROW,1,HG_HITPAUSE_SCALING,0.9);
set_hitbox_value(AT_UTHROW,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
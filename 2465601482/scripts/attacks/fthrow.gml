set_attack_value(AT_FTHROW, AG_CATEGORY,2);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow_air"));
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_FTHROW,1,AG_WINDOW_LENGTH,5);
set_window_value(AT_FTHROW,1,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_FTHROW,1,AG_WINDOW_ANIM_FRAME_START,0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTHROW,2,AG_WINDOW_LENGTH,5);
set_window_value(AT_FTHROW,2,AG_WINDOW_ANIM_FRAMES,2);
set_window_value(AT_FTHROW,2,AG_WINDOW_ANIM_FRAME_START,1);

set_window_value(AT_FTHROW,3,AG_WINDOW_LENGTH,5);
set_window_value(AT_FTHROW,3,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_FTHROW,3,AG_WINDOW_ANIM_FRAME_START,3);

set_num_hitboxes(AT_FTHROW,1);

set_hitbox_value(AT_FTHROW,1,HG_PRIORITY,3);
set_hitbox_value(AT_FTHROW,1,HG_WINDOW,2);
set_hitbox_value(AT_FTHROW,1,HG_WINDOW_CREATION_FRAME,3);
set_hitbox_value(AT_FTHROW,1,HG_LIFETIME,2);
set_hitbox_value(AT_FTHROW,1,HG_DAMAGE,4);
set_hitbox_value(AT_FTHROW,1,HG_HITBOX_X,18);
set_hitbox_value(AT_FTHROW,1,HG_HITBOX_Y,-30);
set_hitbox_value(AT_FTHROW,1,HG_SHAPE,1);
set_hitbox_value(AT_FTHROW,1,HG_WIDTH,62);
set_hitbox_value(AT_FTHROW,1,HG_ANGLE,40);
set_hitbox_value(AT_FTHROW,1,HG_HEIGHT,28);
set_hitbox_value(AT_FTHROW,1,HG_BASE_KNOCKBACK,7);
set_hitbox_value(AT_FTHROW,1,HG_KNOCKBACK_SCALING,0.3);
set_hitbox_value(AT_FTHROW,1,HG_BASE_HITPAUSE,7);
set_hitbox_value(AT_FTHROW,1,HG_HITPAUSE_SCALING,0.9);
set_hitbox_value(AT_FTHROW,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
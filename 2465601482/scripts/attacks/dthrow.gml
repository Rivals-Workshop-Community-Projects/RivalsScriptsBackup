set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("dthrow_air"));
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTHROW,1,AG_WINDOW_LENGTH,8);
set_window_value(AT_DTHROW,1,AG_WINDOW_ANIM_FRAMES,2);
set_window_value(AT_DTHROW,1,AG_WINDOW_ANIM_FRAME_START,0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTHROW,2,AG_WINDOW_LENGTH,5);
set_window_value(AT_DTHROW,2,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_DTHROW,2,AG_WINDOW_ANIM_FRAME_START,2);

set_window_value(AT_DTHROW,3,AG_WINDOW_LENGTH,5);
set_window_value(AT_DTHROW,3,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_DTHROW,3,AG_WINDOW_ANIM_FRAME_START,3);

set_num_hitboxes(AT_DTHROW,1);

set_hitbox_value(AT_DTHROW,1,HG_PRIORITY,3);
set_hitbox_value(AT_DTHROW,1,HG_WINDOW,2);
set_hitbox_value(AT_DTHROW,1,HG_LIFETIME,2);
set_hitbox_value(AT_DTHROW,1,HG_DAMAGE,3);
set_hitbox_value(AT_DTHROW,1,HG_HITBOX_X,-6);
set_hitbox_value(AT_DTHROW,1,HG_HITBOX_Y,-34);
set_hitbox_value(AT_DTHROW,1,HG_SHAPE,1);
set_hitbox_value(AT_DTHROW,1,HG_WIDTH,28);
set_hitbox_value(AT_DTHROW,1,HG_ANGLE,0);
set_hitbox_value(AT_DTHROW,1,HG_HEIGHT,60);
set_hitbox_value(AT_DTHROW,1,HG_BASE_KNOCKBACK,6);
set_hitbox_value(AT_DTHROW,1,HG_KNOCKBACK_SCALING,0.1);
set_hitbox_value(AT_DTHROW,1,HG_BASE_HITPAUSE,10);
set_hitbox_value(AT_DTHROW,1,HG_HITPAUSE_SCALING,0.9);
set_hitbox_value(AT_DTHROW,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
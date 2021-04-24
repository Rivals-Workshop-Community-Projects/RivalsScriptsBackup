set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uthrow_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH,18);
set_window_value(AT_USPECIAL,1,AG_WINDOW_ANIM_FRAMES,2);
set_window_value(AT_USPECIAL,1,AG_WINDOW_ANIM_FRAME_START,0);

set_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH,3);
set_window_value(AT_USPECIAL,2,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_USPECIAL,2,AG_WINDOW_ANIM_FRAME_START,2);
set_window_value(AT_USPECIAL,2,AG_WINDOW_HAS_SFX,1);
set_window_value(AT_USPECIAL,2,AG_WINDOW_SFX,sound_get("beam_swing"));

set_window_value(AT_USPECIAL,3,AG_WINDOW_LENGTH,21 - 15*has_rune("B"));
set_window_value(AT_USPECIAL,3,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_USPECIAL,3,AG_WINDOW_ANIM_FRAME_START,3);

set_num_hitboxes(AT_USPECIAL,2);

set_hitbox_value(AT_USPECIAL,2,HG_WINDOW,2);
set_hitbox_value(AT_USPECIAL,2,HG_WINDOW_CREATION_FRAME,0);
set_hitbox_value(AT_USPECIAL,2,HG_PRIORITY,3);
set_hitbox_value(AT_USPECIAL,2,HG_LIFETIME,2);
set_hitbox_value(AT_USPECIAL,2,HG_DAMAGE,15);
set_hitbox_value(AT_USPECIAL,2,HG_HITBOX_X,4);
set_hitbox_value(AT_USPECIAL,2,HG_HITBOX_Y,-84);
set_hitbox_value(AT_USPECIAL,2,HG_SHAPE,0);
set_hitbox_value(AT_USPECIAL,2,HG_WIDTH,52);
set_hitbox_value(AT_USPECIAL,2,HG_ANGLE,90);
set_hitbox_value(AT_USPECIAL,2,HG_HEIGHT,140);
set_hitbox_value(AT_USPECIAL,2,HG_BASE_KNOCKBACK,8);
set_hitbox_value(AT_USPECIAL,2,HG_KNOCKBACK_SCALING,0.4);
set_hitbox_value(AT_USPECIAL,2,HG_BASE_HITPAUSE,7);
set_hitbox_value(AT_USPECIAL,2,HG_HITPAUSE_SCALING,0.9);
set_hitbox_value(AT_USPECIAL,2,HG_HIT_SFX,asset_get("sfx_burnconsume"));
set_hitbox_value(AT_USPECIAL,2,HG_VISUAL_EFFECT,256);
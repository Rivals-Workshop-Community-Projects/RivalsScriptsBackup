set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);//12//10
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);//14
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 5);//6
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 6);//4
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 134);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);//8
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);//5.5
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);//.8
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 3);//3
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .4);//1.7
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 111); //303
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("ARSlash"));
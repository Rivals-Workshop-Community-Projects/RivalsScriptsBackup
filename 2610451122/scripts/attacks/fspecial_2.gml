//attacks/fspecial_2.gml
//a minimal 'throw' attack example with a single hitbox. 
//You can copy-paste this into your project to quickly test this template.

//it works now. it finally fucking works. thank fucking go

set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("special_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);

//active
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

//recovery
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, -10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 8);

set_num_hitboxes(AT_FSPECIAL_2, 1);

//throw hitbox
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, get_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 78);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 63);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
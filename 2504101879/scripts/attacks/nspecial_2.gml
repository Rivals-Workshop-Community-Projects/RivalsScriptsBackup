//attacks/nspecial_2.gml
//a minimal 'throw' attack example with a single hitbox. 
//You can copy-paste this into your project to quickly test this template.

set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

//active
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//recovery
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_2, 1);

//throw hitbox
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 125);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, -26);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//get_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH)
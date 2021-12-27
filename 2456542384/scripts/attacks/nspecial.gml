set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
//set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_NSPECIAL,1,AG_WINDOW_LENGTH)-1);

//the grab
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//whiff
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//grab successfull
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("mfx_hp"));
//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 85);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.15);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_crunch"));



set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Hitting the grab will heal you for 6%");
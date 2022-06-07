set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8); // 4
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8); // 4
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6); // 2

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1); 
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 17); 
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 14); // 7
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,4);


set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -35); // -40
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 68); // 65
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 68); // 65
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 5); 
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -35); // -40
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 68); // 65
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 68); // 65
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 9); 
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -35); // -40
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 68); // 65
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 68); // 65
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 3, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 14); 
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3); // 3
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -35); // -40
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 70); // 70
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 70); // 70
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3); // 5
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 60);
//set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .5); // 2
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 4);
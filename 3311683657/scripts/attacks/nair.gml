set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 8);

//early hit
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//late hit
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);

//early
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, hfx_ori_orange_big);
//set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_EFFECT, 23);

//late
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, hfx_ori_orange_small);
//set_hitbox_value(AT_NAIR, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_EFFECT, 23);
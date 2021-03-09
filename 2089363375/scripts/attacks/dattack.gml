set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

cat_attack_spr[AT_DATTACK] = sprite_get("cat_dattack");
cat_attack_hurtbox_spr[AT_DATTACK] = sprite_get("cat_dattack_hurt");
cat_window_amount[AT_DATTACK] = 4;
cat_window_min[AT_DATTACK] = 5;
cat_window_max[AT_DATTACK] = 8;
cat_hitbox_amount[AT_DATTACK] = 2;
cat_window_hitbox_min[AT_DATTACK] = 3;
cat_window_hitbox_max[AT_DATTACK] = 4;

//For Mitama
set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2.25);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//For Cat
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 2.25);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_DATTACK, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_WHIFFLAG, 5);


set_num_hitboxes(AT_DATTACK, 2);

//For Mitama
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 100);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//For Cat
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 100);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
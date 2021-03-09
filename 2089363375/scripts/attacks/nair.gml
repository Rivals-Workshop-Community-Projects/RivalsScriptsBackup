set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

cat_attack_spr[AT_NAIR] = sprite_get("cat_nair");
cat_attack_hurtbox_spr[AT_NAIR] = sprite_get("cat_nair_hurt");
cat_window_amount[AT_NAIR] = 3;
cat_window_min[AT_NAIR] = 4;
cat_window_max[AT_NAIR] = 6;
cat_hitbox_amount[AT_NAIR] = 2;
cat_window_hitbox_min[AT_NAIR] = 3;
cat_window_hitbox_max[AT_NAIR] = 4;

//For Mitama
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//For Cat
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);


set_num_hitboxes(AT_NAIR,2);

//For Mitama
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);

//For Cat
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
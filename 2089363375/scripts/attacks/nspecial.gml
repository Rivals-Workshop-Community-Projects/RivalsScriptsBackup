set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));


cat_window_amount[AT_NSPECIAL] = 6;
cat_attack_spr[AT_NSPECIAL] = sprite_get("cat_nspecial");
cat_attack_hurtbox_spr[AT_NSPECIAL] = sprite_get("cat_nspecial_hurt");
cat_window_min[AT_NSPECIAL] = 6;
cat_window_max[AT_NSPECIAL] = 13;
cat_hitbox_amount[AT_NSPECIAL] = 4;
cat_window_hitbox_min[AT_NSPECIAL] = 1;
cat_window_hitbox_max[AT_NSPECIAL] = 4;

//For Mitama
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_boss_final_charge"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 48);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//For Cat
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 11, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 12, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 13, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_num_hitboxes(AT_NSPECIAL, 0);

//No hitboxes for Mitama

//For Cat

//Light Charge 
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_NSPECIAL, 1, HG_THROWS_ROCK, 2);

//Medium Charge 
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 16);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL, 2, HG_THROWS_ROCK, 2);

//Heavy Charge Fresh
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_NSPECIAL, 3, HG_THROWS_ROCK, 2);

//Heavy Charge Stale
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 11);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL, 4, HG_THROWS_ROCK, 2);
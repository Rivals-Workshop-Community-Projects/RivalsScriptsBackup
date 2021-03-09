set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

cat_attack_spr[AT_DSPECIAL] = sprite_get("cat_dspecial");
cat_attack_hurtbox_spr[AT_DSPECIAL] = sprite_get("cat_dspecial_hurt");
cat_window_amount[AT_DSPECIAL] = 3;
cat_window_min[AT_DSPECIAL] = 6;
cat_window_max[AT_DSPECIAL] = 11;
cat_hitbox_amount[AT_DSPECIAL] = 4;
cat_window_hitbox_min[AT_DSPECIAL] = 2;
cat_window_hitbox_max[AT_DSPECIAL] = 5;

//For Mitama
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//(Abosrbing a projectile)
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_shing"));

//(Setting for the cat to explode)
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_fishing_rod_catch"));

//For Cat
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 3);

//(When Mitama abosrbs a projectile)
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 7);

//(Exploding)
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);

//(The cat's invisible, but this still counts for a hitbox...)
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_DSPECIAL, 0);

//Miatama's Absorb box
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 144);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

//For Cat
//Explosion Strongest
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 112);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 112);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 48);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_DSPECIAL, 2, HG_THROWS_ROCK, 2);

//Explosion Medium
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 144);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 144);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 32);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_DSPECIAL, 3, HG_THROWS_ROCK, 2);

//Explosion Weakest
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 192);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 192);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 16);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_DSPECIAL, 4, HG_THROWS_ROCK, 2);

//Explosion Late
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 18);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 192);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 192);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 16);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_DSPECIAL, 5, HG_THROWS_ROCK, 2);
var atk = AT_FSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, true);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
var win = 0;

win++; //startup
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 6);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

win++; //charge loop
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 32);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

win++; //release startup
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_SFX, 1);
// set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 4);
// set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_zap"));

win++; //drilling
set_window_value(atk, win, AG_WINDOW_TYPE, 9);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8); 
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, win, AG_WINDOW_HSPEED, 10);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_GOTO, win + 2);

win++; //drill wall
set_window_value(atk, win, AG_WINDOW_TYPE, 9);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8); 
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);

win++; //endlag
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 20);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_attack_value(atk, AG_NUM_WINDOWS, win);

win++; //jump cancel
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 36);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, .06); // air_friction
set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, .06); // air_friction

var hit = 0;

hit++; //uncharged
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 60);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 100);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);
set_hitbox_value(atk, hit, HG_PRIORITY, 1);
set_hitbox_value(atk, hit, HG_DAMAGE, 3);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);

hit++; //partial charge
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 60);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 100);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);
set_hitbox_value(atk, hit, HG_PRIORITY, 1);
set_hitbox_value(atk, hit, HG_DAMAGE, 4);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 304);

hit++; //fully charged
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 60);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 100);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);
set_hitbox_value(atk, hit, HG_PRIORITY, 1);
set_hitbox_value(atk, hit, HG_DAMAGE, 5);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 306);

hit++; //uncharged wall
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 45);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 70);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);
set_hitbox_value(atk, hit, HG_PRIORITY, 1);
set_hitbox_value(atk, hit, HG_DAMAGE, 3);
set_hitbox_value(atk, hit, HG_ANGLE, 60);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);

hit++; //partial charge wall
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 45);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 70);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);
set_hitbox_value(atk, hit, HG_PRIORITY, 1);
set_hitbox_value(atk, hit, HG_DAMAGE, 4);
set_hitbox_value(atk, hit, HG_ANGLE, 60);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 304);

hit++; //fully charged wall
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 45);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 70);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);
set_hitbox_value(atk, hit, HG_PRIORITY, 1);
set_hitbox_value(atk, hit, HG_DAMAGE, 5);
set_hitbox_value(atk, hit, HG_ANGLE, 60);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 306);

set_num_hitboxes(atk, hit);



// OLD FSPECIAL

// var atk = AT_FSPECIAL;

// set_attack_value(atk, AG_CATEGORY, 2);
// set_attack_value(atk, AG_OFF_LEDGE, true);
// set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
// set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
// set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial"));
// set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
// set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

// var win = 0;

// win++; //startup
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 12);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(atk, win, AG_WINDOW_HAS_SFX, 1);
// set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 6);
// set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //charge loop
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 32);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 8);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //release startup
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 5);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 10);
// set_window_value(atk, win, AG_WINDOW_HSPEED, 5);
// set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
// set_window_value(atk, win, AG_WINDOW_HAS_SFX, 1);
// set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 4);
// set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_zap"));
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //drilling weak
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 6); 
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 11);
// set_window_value(atk, win, AG_WINDOW_HSPEED, 12);
// set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45); 
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //drilling mid
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 12); 
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 11);
// set_window_value(atk, win, AG_WINDOW_HSPEED, 14); 
// set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45); 
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //drilling strong dash
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 16); 
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 11);
// set_window_value(atk, win, AG_WINDOW_HSPEED, 18); 
// set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45); 
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //drilling strong grab
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 16); 
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 11);
// set_window_value(atk, win, AG_WINDOW_HSPEED, 0); 
// set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
// set_window_value(atk, win, AG_WINDOW_VSPEED, 0);
// set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45); 
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //drilling strong hit
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 2); 
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 11);
// set_window_value(atk, win, AG_WINDOW_HSPEED, 0); 
// set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45); 
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// win++; //endlag
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 16);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 15);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);

// set_attack_value(atk, AG_NUM_WINDOWS, win);

// var hit = 0;

// hit++; //uncharged
// set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 4);
// set_hitbox_value(atk, hit, HG_LIFETIME, 6);
// set_hitbox_value(atk, hit, HG_HITBOX_X, 50);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
// set_hitbox_value(atk, hit, HG_WIDTH, 120);
// set_hitbox_value(atk, hit, HG_HEIGHT, 50);
// set_hitbox_value(atk, hit, HG_PRIORITY, 1);
// set_hitbox_value(atk, hit, HG_DAMAGE, 6);
// set_hitbox_value(atk, hit, HG_ANGLE, 361);
// set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.8);
// set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
// set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);

// hit++; //midcharge multihit
// set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 0);
// set_hitbox_value(atk, hit, HG_LIFETIME, 2);
// set_hitbox_value(atk, hit, HG_HITBOX_X, 70);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
// set_hitbox_value(atk, hit, HG_WIDTH, 110);
// set_hitbox_value(atk, hit, HG_HEIGHT, 50);
// set_hitbox_value(atk, hit, HG_PRIORITY, 1);
// set_hitbox_value(atk, hit, HG_DAMAGE, 2);
// set_hitbox_value(atk, hit, HG_ANGLE, 30);
// set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 6);
// set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 12);
// set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0);
// set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0);
// set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT_X_OFFSET, 64);

// hit++; //midcharge final hit
// set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 0);
// set_hitbox_value(atk, hit, HG_LIFETIME, 3);
// set_hitbox_value(atk, hit, HG_HITBOX_X, 70);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
// set_hitbox_value(atk, hit, HG_WIDTH, 110);
// set_hitbox_value(atk, hit, HG_HEIGHT, 50);
// set_hitbox_value(atk, hit, HG_PRIORITY, 1);
// set_hitbox_value(atk, hit, HG_DAMAGE, 6);
// set_hitbox_value(atk, hit, HG_ANGLE, 361);
// set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.5);
// set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.7);
// set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_mol_norm_explode"));
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ELL_BOOM_HIT);
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT_X_OFFSET, 64);

// hit++; //fullcharge first
// set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 0);
// set_hitbox_value(atk, hit, HG_LIFETIME, 16);
// set_hitbox_value(atk, hit, HG_HITBOX_X, 64);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
// set_hitbox_value(atk, hit, HG_WIDTH, 120);
// set_hitbox_value(atk, hit, HG_HEIGHT, 50);
// set_hitbox_value(atk, hit, HG_PRIORITY, 1);
// set_hitbox_value(atk, hit, HG_DAMAGE, 4);
// set_hitbox_value(atk, hit, HG_ANGLE, 70);
// set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 4);
// set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0);
// set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
// set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ELL_BOOM_HIT);
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT_X_OFFSET, 64);

// hit++; //fullcharge explosion
// set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 8);
// set_hitbox_value(atk, hit, HG_LIFETIME, 2);
// set_hitbox_value(atk, hit, HG_HITBOX_X, 64);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
// set_hitbox_value(atk, hit, HG_WIDTH, 120);
// set_hitbox_value(atk, hit, HG_HEIGHT, 50);
// set_hitbox_value(atk, hit, HG_PRIORITY, 1);
// set_hitbox_value(atk, hit, HG_DAMAGE, 8);
// set_hitbox_value(atk, hit, HG_ANGLE, 361);
// set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 10);
// set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 1);
// set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 12);
// set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 1);
// set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_mol_flare_explode"));
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ELL_BOOM_BIG);
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT_X_OFFSET, 64);

// set_num_hitboxes(atk, hit);
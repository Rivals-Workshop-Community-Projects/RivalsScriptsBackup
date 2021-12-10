set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("newnair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("newnair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Wind Up
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 7);

// 2nd Hit
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR,10);

// Hit One Vars for ease of changing
var hitonedmg = 3;
var hitonebkb = 7;
var hitonekbs = .02;
var hitonebhp = 5;
var hitonehps = 0;
var hitoneangle = 80;
var hitoneanglflp = 6;

var hitonedmg_tipper = 5;
var hitonebkb_tipper = 8;
var hitonekbs_tipper = .04;
var hitonebhp_tipper = 6;
var hitonehps_tipper = 0;
var hitoneangle_tipper = 75;
var hitoneanglflp_tipper = 6;

// Hit Two Vars for ease of changing
var hittwodmg = 6;
var hittwobkb = 7;
var hittwokbs = .5;
var hittwobhp = 6;
var hittwohps = .7;
var hittwoangle = 361;
var hittwoanglflp = 0;

var hittwodmg_tipper = 7;
var hittwobkb_tipper = 8;
var hittwokbs_tipper = .5;
var hittwobhp_tipper = 8;
var hittwohps_tipper = .9;
var hittwoangle_tipper = 361;
var hittwoanglflp_tipper = 0;

// First Hit Brella
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 93);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, hitonedmg);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, hitoneangle);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, hitonebkb);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, hitonekbs);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, hitonebhp);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, hitonehps);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, hitoneanglflp);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

// First Hit Ice
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -19);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 92);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 33);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, hitonedmg_tipper);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, hitoneangle_tipper);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, hitoneanglflp_tipper);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, hitonebkb_tipper);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, hitonekbs_tipper);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, hitonebhp_tipper);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, hitonehps_tipper);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_NAIR, 2, HG_TIPPER, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

// Second Hit Brella
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 29);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, hittwodmg);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, hittwoangle);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, hittwobkb);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, hittwokbs);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, hittwobhp);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, hittwohps);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, hittwoanglflp);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_IGNORES_PROJECTILES, 1);

// Second Hit Ice
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 48);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 57);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 41);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, hittwodmg_tipper);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, hittwoangle_tipper);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, hittwobkb_tipper);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, hittwokbs_tipper);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, hittwobhp_tipper);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, hittwohps_tipper);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, hittwoanglflp_tipper);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NAIR, 4, HG_TIPPER, 1);
set_hitbox_value(AT_NAIR, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);

// Third Hit Brella
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -11);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 47);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, hittwodmg);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, hittwoangle);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, hittwobkb);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, hittwokbs);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, hittwobhp);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, hittwohps);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 5, HG_IGNORES_PROJECTILES, 1);

// Third Hit Brella
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 10);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 88);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 41);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, hittwodmg);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, hittwoangle);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, hittwobkb);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, hittwokbs);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, hittwobhp);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, hittwohps);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, hittwoanglflp);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 6, HG_TIPPER, 0);


// Third Hit Ice
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, -36);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 43);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 48);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, hittwodmg);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, hittwoangle);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, hittwobkb);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, hittwokbs);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, hittwobhp);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, hittwohps);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NAIR, 7, HG_TIPPER, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 7, HG_IGNORES_PROJECTILES, 1);

// Third Hit Ice
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 107);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 51);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, hittwodmg_tipper);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, hittwoangle_tipper);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, hittwobkb_tipper);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, hittwokbs_tipper);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, hittwobhp_tipper);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, hittwohps_tipper);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE_FLIPPER, hittwoanglflp_tipper);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NAIR, 8, HG_TIPPER, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 8, HG_IGNORES_PROJECTILES, 1);

// Third Hit Brella
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, -11);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -65);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 74);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 63);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, hittwodmg);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, hittwoangle);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, hittwobkb);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, hittwokbs);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, hittwobhp);
set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, hittwohps);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 9, HG_IGNORES_PROJECTILES, 1);

// Third Hit Ice
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -71);
set_hitbox_value(AT_NAIR, 10, HG_WIDTH, 89);
set_hitbox_value(AT_NAIR, 10, HG_HEIGHT, 74);
set_hitbox_value(AT_NAIR, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 10, HG_DAMAGE, hittwodmg_tipper);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE, hittwoangle_tipper);
set_hitbox_value(AT_NAIR, 10, HG_BASE_KNOCKBACK, hittwobkb_tipper);
set_hitbox_value(AT_NAIR, 10, HG_KNOCKBACK_SCALING, hittwokbs_tipper);
set_hitbox_value(AT_NAIR, 10, HG_BASE_HITPAUSE, hittwobhp_tipper);
set_hitbox_value(AT_NAIR, 10, HG_HITPAUSE_SCALING, hittwohps_tipper);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NAIR, 10, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NAIR, 10, HG_TIPPER, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 10, HG_IGNORES_PROJECTILES, 1);

/*
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1.5);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR,8);

// First Hit Brella
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 81);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 81);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

// First Hit Ice
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 105);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_NAIR, 2, HG_TIPPER, 1);

// Second Hit Brella
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 81);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 81);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_IGNORES_PROJECTILES, 1);

// Second Hit Ice
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 105);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 105);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_NAIR, 4, HG_TIPPER, 1);
set_hitbox_value(AT_NAIR, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);

// Third Hit Brella
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 81);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 81);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 5, HG_IGNORES_PROJECTILES, 1);

// Third Hit Ice
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 105);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 105);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_NAIR, 6, HG_TIPPER, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 6, HG_IGNORES_PROJECTILES, 1);

// Final Hit
//set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 85);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 85);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 3);

// Ice Final Hit
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 109);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 109);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 8, HG_TIPPER, 1);
*/
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);


//" nspc  " | nsp1s nsp1a  nsp1e   nsp2s   nsp2a   nsp2h   nsp2e
//" 0-1:2 " | 2-2:1 3-10:9 11-11:1 12-12:1 13-14:2 15-15:1 16-16:1

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

//1 - uncharged
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("beam_beam"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 48);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_may_arc_hit"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 30);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);

//2 - charged
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, sound_get("beam_blast"));
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_NSPECIAL, 11); 

//0-5:6 frame 1
//6-10:5 frame 2
//11-15:5 frame 3
//16-21:6 frame 4
//22-26:5 frame 5
//27-31:5 frame 6
//32-37:6 frame 7
//38-42:6 frame 8


var nsphl = 0;
var nsphs1 = sound_get("hit1");
var nsphs2 = sound_get("hit4");
var nspmultibkb = 4; //2
var nspmultiangle = 55; //55
var nspmultivfx = 109;

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 62);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 62);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 72);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 72);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -60);

//0-5:6 frame 1
//6-10:5 frame 2
//11-15:5 frame 3
//16-21:6 frame 4
//22-26:5 frame 5
//27-31:5 frame 6
//32-37:6 frame 7
//38-42:6 frame 8

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 75);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 83);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 81);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 81);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 57);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 77);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -9);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 77);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 59);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, nspmultibkb);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_CAMERA_SHAKE, -1);

//0-5:6 frame 1
//6-10:5 frame 2
//11-15:5 frame 3
//16-21:6 frame 4
//22-26:5 frame 5
//27-31:5 frame 6
//32-37:6 frame 7
//38-42:6 frame 8

set_hitbox_value(AT_NSPECIAL, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 76);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTRA_CAMERA_SHAKE, -1);


//this is the uh light smack hitbox
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 77);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, nsphs2);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_LOCKOUT, nsphl);


//this is the final hitbox for uncharged
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 38);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 72);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, 20);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 43);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 51);
set_hitbox_value(AT_NSPECIAL, 9, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, nspmultiangle);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, nspmultivfx);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, nsphs1);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_LOCKOUT, nsphl);
set_hitbox_value(AT_NSPECIAL, 9, HG_EXTRA_CAMERA_SHAKE, -1);


set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 3);

set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 48);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 55);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 51);
set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, 2);

set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, sound_get("hit4"));
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_LOCKOUT, nsphl);


//this is the charged bullet
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 11, HG_LIFETIME, 61);//41

set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_X, 48);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_Y, -30);

set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_SPRITE, sprite_get("bullet3"));
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_HSPEED, 5.5);//4.8

set_hitbox_value(AT_NSPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 11, HG_HEIGHT, 74);

set_hitbox_value(AT_NSPECIAL, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NSPECIAL, 11, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 11, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_holy_lightning"));

set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_PARRY_STUN, 1);







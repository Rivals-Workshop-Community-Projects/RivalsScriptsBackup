set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_LANDING_LAG, 4);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("elu"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("jack_grunt"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, dash_speed * 1.5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("jack_grunt"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, dash_speed * 1.5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, sound_get("jack_grunt"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 4);

var damage = 6;
var angle = 60;
var bkb = 9;
var kbg = 0;
var hp = 8;
var hpg = 0;
var vfx = 0;
var sfx = asset_get("sfx_blow_medium1");

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, damage);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, angle);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, vfx);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sfx);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, damage);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, angle);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, vfx);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sfx);

var damage = 6;
var angle = 60;
var bkb = 9;
var kbg = 0.4;
var hp = 8;
var hpg = 0.5;
var vfx = 304;
var sfx = asset_get("sfx_blow_medium3");

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, damage);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, angle);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_DATTACK, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, vfx);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sfx);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, damage);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, angle);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, vfx);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sfx);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 1);

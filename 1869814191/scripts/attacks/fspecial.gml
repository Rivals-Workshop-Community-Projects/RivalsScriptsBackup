var atk = AT_FSPECIAL;
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
var _win = 1;

//frame data
var startup = 14;
var hold = 20;
var blinkTime = 8;
var toss = 4;
var bone = 4;
//var active = 3;
var endlag = 20;

var store_len = 8;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, startup);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 9);
set_window_value(atk, _win, AG_WINDOW_LENGTH, hold);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_spin"));
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, blinkTime);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, _win, AG_WINDOW_SFX, sound_get("sfx_sans_blink"));
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 9);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 13);
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, toss);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX_FRAME, 2)
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, bone);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 16);
var hbox_win = _win;
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, endlag);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 17);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
_win++;

//shield storing
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, store_len);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 1);

var sec = 60; //yes im making a variable so i dont have to do math

var hbox = 1;

set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, -1);
set_hitbox_value(atk, hbox, HG_LIFETIME, 60);
set_hitbox_value(atk, hbox, HG_SHAPE, 0);
set_hitbox_value(atk, hbox, HG_WIDTH, 50);
set_hitbox_value(atk, hbox, HG_HEIGHT, 50);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, 2);
set_hitbox_value(atk, hbox, HG_KARMA, 3);
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hbox, HG_EFFECT, 0);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, spr_bone[0]);
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ANIM_SPEED, 0.3);

hbox++
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, -1);
set_hitbox_value(atk, hbox, HG_LIFETIME, 150);
set_hitbox_value(atk, hbox, HG_SHAPE, 0);
set_hitbox_value(atk, hbox, HG_WIDTH, 50);
set_hitbox_value(atk, hbox, HG_HEIGHT, 50);
set_hitbox_value(atk, hbox, HG_PRIORITY, 1);
set_hitbox_value(atk, hbox, HG_DAMAGE, 0);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, spr_bone[1]);
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DESTROY_EFFECT, hfx_smallboned_blue);
//set_hitbox_value(atk, hbox, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hbox, HG_EXTENDED_PARRY_STUN, true)
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ANIM_SPEED, 0.3);
//set_hitbox_value(atk, hbox, HG_EFFECT, 9);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("the"));

hbox++
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, -1);
set_hitbox_value(atk, hbox, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox, HG_SHAPE, 0);
set_hitbox_value(atk, hbox, HG_WIDTH, 80);
set_hitbox_value(atk, hbox, HG_HEIGHT, 80);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, 6);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, hbox, HG_EFFECT, 0);

hbox++
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, -1);
set_hitbox_value(atk, hbox, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox, HG_SHAPE, 0);
set_hitbox_value(atk, hbox, HG_WIDTH, 80);
set_hitbox_value(atk, hbox, HG_HEIGHT, 80);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, 6);
set_hitbox_value(atk, hbox, HG_ANGLE, 90);
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_bigboned);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, hbox, HG_EFFECT, 0);

//rune G
hbox++
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, -1);
set_hitbox_value(atk, hbox, HG_LIFETIME, 2);
set_hitbox_value(atk, hbox, HG_SHAPE, 0);
set_hitbox_value(atk, hbox, HG_WIDTH, 80);
set_hitbox_value(atk, hbox, HG_HEIGHT, 80);
set_hitbox_value(atk, hbox, HG_PRIORITY, 2);
set_hitbox_value(atk, hbox, HG_DAMAGE, 1);
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, hbox, HG_EFFECT, 0);

set_num_hitboxes(atk, hbox);
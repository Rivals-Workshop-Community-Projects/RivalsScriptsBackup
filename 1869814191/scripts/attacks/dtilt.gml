var atk = AT_DTILT;
set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
var _win = 1;

var dmg = 3;
var knockback = 7;
var final_knockback = ceil(knockback/2);
var kb_scaling = 0.25;
var base_hitpause = 6;
var hitpause_scale = 0.35;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 8);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, _win, AG_WINDOW_HAS_WHIFFLAG, 2);

set_attack_value(atk, AG_NUM_WINDOWS, _win);

/*
set_hitbox_value(atk, 15, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 15, HG_WINDOW, 1);
set_hitbox_value(atk, 15, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 15, HG_LIFETIME, 999);
set_hitbox_value(atk, 15, HG_SHAPE, 0);
set_hitbox_value(atk, 15, HG_HITBOX_X, 0);
set_hitbox_value(atk, 15, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 15, HG_PRIORITY, 1);
set_hitbox_value(atk, 15, HG_DAMAGE, 3);
set_hitbox_value(atk, 15, HG_ANGLE, 135);
set_hitbox_value(atk, 15, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, 15, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, 15, HG_PROJECTILE_DESTROY_EFFECT, 254);
set_hitbox_value(atk, 15, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, 15, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, 15, HG_PROJECTILE_SPRITE, sprite_get("banana"));
set_hitbox_value(atk, 15, HG_PROJECTILE_MASK, sprite_get("banana"));
set_hitbox_value(atk, 15, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, 15, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 15, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(atk, 15, HG_PROJECTILE_GROUND_FRICTION, 2);
set_hitbox_value(atk, 15, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(atk, 15, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(atk, 15, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(atk, 15, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, 15, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(atk, 15, HG_ANGLE_FLIPPER, 4);
*/
var hbox = 1;

var frames = 10;
var frames_per_frame = 4; //yeah

var life = frames*frames_per_frame;
var anim_speed = frames/life;

var hbox_active = (1*frames_per_frame)+1;
/*
set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, 1);
set_hitbox_value(atk, hbox, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 17);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 200);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 180-50);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, hit_sprites[5]);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("dair_bone"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);

set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
*/
///*
set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, 1);
set_hitbox_value(atk, hbox, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hbox, HG_LIFETIME, life);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 120);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -9);
set_hitbox_value(atk, hbox, HG_WIDTH, 0);
set_hitbox_value(atk, hbox, HG_HEIGHT, 0);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg);
set_hitbox_value(atk, hbox, HG_ANGLE, 361);
set_hitbox_value(atk, hbox, HG_SHAPE, 2);
//set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback);
//set_hitbox_value(atk, hbox, HG_FINAL_BASE_KNOCKBACK, final_knockback);
//set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling);
//set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause);
//set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale);
set_hitbox_value(atk, hbox, HG_EXTENDED_PARRY_STUN, true);
//(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, sprite_get("dair_bone"));
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, sprite_get("dtilt_bone_mask"));
set_hitbox_value(atk, hbox, HG_PROJECTILE_ANIM_SPEED, anim_speed);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PLASMA_SAFE, true); //you know what? fuck you clairen
set_hitbox_value(atk, hbox, HG_KARMA, 2);

//set_hitbox_value(atk, hbox, HG_PROJECTILE_VSPEED, 666);
//*/
hbox++;
set_hitbox_value(atk, hbox, HG_PARENT_HITBOX, hbox);
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_LIFETIME, hbox_active);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 0);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hbox, HG_WIDTH, 50);
set_hitbox_value(atk, hbox, HG_HEIGHT, 50);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg);
set_hitbox_value(atk, hbox, HG_ANGLE, 120); // 125
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 5);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback);
set_hitbox_value(atk, hbox, HG_FINAL_BASE_KNOCKBACK, final_knockback);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale);
set_hitbox_value(atk, hbox, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(atk, hbox, HG_HIT_SFX, sound_get("sfx_sans_hit"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PLASMA_SAFE, true); //you know what? fuck you clairen
set_hitbox_value(atk, hbox, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hbox, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hbox, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(atk, hbox, HG_KARMA, 2);

hbox++;
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, 2);
set_hitbox_value(atk, hbox, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 20);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -12);
set_hitbox_value(atk, hbox, HG_WIDTH, 36);
set_hitbox_value(atk, hbox, HG_HEIGHT, 24);
set_hitbox_value(atk, hbox, HG_DAMAGE, 3);
set_hitbox_value(atk, hbox, HG_ANGLE, 0);
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 1);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, hbox, HG_TECHABLE, 3);
set_hitbox_value(atk, hbox, HG_GROUNDEDNESS, 1);

hbox++;
set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox, HG_WINDOW, 2);
set_hitbox_value(atk, hbox, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox, HG_HITBOX_X, 20);
set_hitbox_value(atk, hbox, HG_HITBOX_Y, -12);
set_hitbox_value(atk, hbox, HG_WIDTH, 36);
set_hitbox_value(atk, hbox, HG_HEIGHT, 24);
set_hitbox_value(atk, hbox, HG_DAMAGE, 3);
set_hitbox_value(atk, hbox, HG_ANGLE, 25);
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 1);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hbox, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, 2);
// set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, hfx_smallboned);
set_hitbox_value(atk, hbox, HG_GROUNDEDNESS, 2);

set_num_hitboxes(atk, hbox);
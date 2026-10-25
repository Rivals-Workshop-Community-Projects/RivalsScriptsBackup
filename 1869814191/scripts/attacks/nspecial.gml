var atk = AT_NSPECIAL;
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

var dmg = 4;
var knockback = 8;
var kb_scaling = 0.35;
var base_hitpause = 6;
var hitpause_scale = 0.25;

var _win = 1;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 3);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 3);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 4);

_win++;
set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 5);

set_attack_value(atk, AG_NUM_WINDOWS, _win);
var hbox = 1;

set_hitbox_value(atk, hbox, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hbox, HG_WINDOW, 1);
set_hitbox_value(atk, hbox, HG_LIFETIME, 5);
set_hitbox_value(atk, hbox, HG_WIDTH, 420);
set_hitbox_value(atk, hbox, HG_HEIGHT, 30);
set_hitbox_value(atk, hbox, HG_SHAPE, 1);
set_hitbox_value(atk, hbox, HG_PRIORITY, 5);
//set_hitbox_value(atk, hbox, HG_PRIORITY, 99);
set_hitbox_value(atk, hbox, HG_DAMAGE, dmg);
set_hitbox_value(atk, hbox, HG_ANGLE, 75);
set_hitbox_value(atk, hbox, HG_BASE_KNOCKBACK, knockback);
set_hitbox_value(atk, hbox, HG_KNOCKBACK_SCALING, kb_scaling);
set_hitbox_value(atk, hbox, HG_BASE_HITPAUSE, base_hitpause);
set_hitbox_value(atk, hbox, HG_HITPAUSE_SCALING, hitpause_scale);
//set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT, 20);
//set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT_X_OFFSET, 24);
//set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT_Y_OFFSET, -24);
//set_hitbox_value(atk, hbox, HG_VISUAL_EFFECT_DISTANCE, 1);
set_hitbox_value(atk, hbox, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, hbox, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(atk, hbox, HG_SDI_MULTIPLIER, 0.25);
//set_hitbox_value(atk, hbox, HG_HIT_LOCKOUT, 2);
set_hitbox_value(atk, hbox, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hbox, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(atk, hbox, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hbox, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hbox, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(atk, hbox, HG_PROJECTILE_PLASMA_SAFE, true); //you know what? fuck you clairen
set_hitbox_value(atk, hbox, HG_PROJECTILE_DOES_NOT_REFLECT, true);
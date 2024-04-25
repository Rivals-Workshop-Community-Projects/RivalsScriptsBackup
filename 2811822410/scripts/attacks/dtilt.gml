curr_attack = AT_DTILT;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 7);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 5);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 6);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 3);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_SPRITE, sprite_get("dtilt_proj"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 24);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 24);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 8);
set_hitbox_value(curr_attack, 1, HG_FORCE_FLINCH, true);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GRAVITY, 2);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0); //Spam Dtilt
set_hitbox_value(curr_attack, 1, HG_ANGLE, 30);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 5); //Spam Dtilt
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0); //Spam Dtilt
//set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5); //It's a stun I need hitstun. Edit: Nevermind I tested it and it was an infinite at 1x.
set_hitbox_value(curr_attack, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);

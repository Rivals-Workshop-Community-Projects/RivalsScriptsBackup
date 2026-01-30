var atk = 49;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("finalsmash"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("finalsmash_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

//crouch
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_SFX, jump_sound);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 11);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //jump
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);

num++; //aim
set_window_value(atk, num, AG_WINDOW_LENGTH, 36);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++; //aim slowdown
set_window_value(atk, num, AG_WINDOW_LENGTH, 289);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, num, AG_WINDOW_SFX, sound_get("SFX_RhyzoCharge"));
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //fire
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 15);

num++; //fire loop
set_window_value(atk, num, AG_WINDOW_TYPE, 9);
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 17);

num++; //end
set_window_value(atk, num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 23);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_FORCE_FLINCH, 2);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 10);
set_hitbox_value(atk, num, HG_WIDTH, 1200);
set_hitbox_value(atk, num, HG_HEIGHT, 1200);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 60);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1.8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 1);
set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 20);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 122);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 301)
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_orca_crunch"));
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("utilttrans"));
var atk = AT_DSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial_throw"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_throw"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_throw_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_oly_uspecial_kick"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 5);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 3);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, hit);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_X, 16);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -108);
set_hitbox_value(atk, hit, HG_WIDTH, 32);
set_hitbox_value(atk, hit, HG_HEIGHT, 32);
set_hitbox_value(atk, hit, HG_SHAPE, 1);
set_hitbox_value(atk, hit, HG_PRIORITY, 10);
set_hitbox_value(atk, hit, HG_ANGLE, 90);
set_hitbox_value(atk, hit, HG_DAMAGE, 0);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, 0.1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 1);
// set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_swipe_heavy1"));
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit, HG_THROWS_ROCK, 2);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, hit);
set_hitbox_value(atk, hit, HG_WINDOW, 20);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hit, HG_WIDTH, 40);
set_hitbox_value(atk, hit, HG_HEIGHT, 40);
set_hitbox_value(atk, hit, HG_SHAPE, 1);
set_hitbox_value(atk, hit, HG_PRIORITY, 10);
set_hitbox_value(atk, hit, HG_ANGLE, 361);
set_hitbox_value(atk, hit, HG_DAMAGE, 8);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_KRA_ROCK_SMALL);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_num_hitboxes(atk, hit);
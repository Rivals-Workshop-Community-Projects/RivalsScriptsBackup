var atk = AT_NSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt"));

var window_num = 0;

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

var hitbox_num = 0;

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 7);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 120);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 90);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("nspecial_bullet"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, sprite_get("nspecial_bullet"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty_spr"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, .34);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 7);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 120);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 90);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 14);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ghost_glove"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("nspecial_bigbullet"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, sprite_get("nspecial_bigbullet"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty_spr"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, .34);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);

set_num_hitboxes(atk, hitbox_num);
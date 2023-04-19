curr_attack = AT_NSPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 20);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
if (allow_sounds) {
set_window_value(curr_attack, 2, AG_WINDOW_SFX, sound_get("Crosshair"));
} else {
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("mfx_option"));
}
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 24);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 60);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 7);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 20);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -16);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 40);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5);

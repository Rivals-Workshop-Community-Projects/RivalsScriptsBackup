// NSpecial Iron Thorn
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("dthrow_air"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dthrow_hurt"));
set_attack_value(AT_DTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("dthrow_air_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

var grov_seed_sprite = sprite_get("ironthorn")
if get_player_color(player) == 13 grov_seed_sprite = sprite_get("ironthorn_abyss")
if get_player_color(player) == 14 grov_seed_sprite = sprite_get("ironthorn_EA")

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 28);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 1); // Basic Small Directional
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);

set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("emera"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0.0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
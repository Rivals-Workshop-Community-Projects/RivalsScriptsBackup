set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("idle_hitbox"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("taunt"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -110);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -170);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("exclamation"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 18);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -110);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -170);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("exclamationstatic"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_UNBASHABLE, true);
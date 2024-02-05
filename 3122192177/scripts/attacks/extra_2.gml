set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("taunt1a"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);


set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 68);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_UNBASHABLE, 1);

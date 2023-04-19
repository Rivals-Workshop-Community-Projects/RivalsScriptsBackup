set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_TAUNT, 0);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 200);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 25);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 10);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("taunt_beeg"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, sprite_get("taunt_beeg"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
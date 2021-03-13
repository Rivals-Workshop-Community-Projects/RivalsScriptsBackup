set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 75);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 25);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_taunt"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 9);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 49);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 200);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 200);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 30);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 0);

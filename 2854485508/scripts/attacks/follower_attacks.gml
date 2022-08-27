follower_attack_spr[0, AT_EXTRA_3] = sprite_get("tanuki_attack");
follower_attack_hurtbox_spr[0, AT_EXTRA_3] = sprite_get("tanuki_attack_hurt");
follower_attack_category[0, AT_EXTRA_3] = 0;

set_attack_value(AT_EXTRA_3, AG_MUNO_ATTACK_EXCLUDE, 1);

follower_window_min[0, AT_EXTRA_3] = 1;
follower_window_max[0, AT_EXTRA_3] = 3;

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


follower_window_hitbox_min[0, AT_EXTRA_3] = 1;
follower_window_hitbox_max[0, AT_EXTRA_3] = 1;

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


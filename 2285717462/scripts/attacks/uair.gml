set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sfx_sonic_spin);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 96);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2); // 3
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 4, HG_MUNO_HITBOX_MISC_ADD, "Size grows if prior hitboxes connect.");

for (var i = 1; i < 5; i++) set_hitbox_value(AT_UAIR, i, HG_MUNO_OBJECT_LAUNCH_ANGLE, 90);
set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
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

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, vfx_hit_small);
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 1, HG_MUNO_OBJECT_LAUNCH_ANGLE, 90);

set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -56);
uair_orig_width = 96;
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, uair_orig_width);
uair_orig_height = 72;
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, uair_orig_height);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, vfx_hit_med);
set_hitbox_value(AT_UAIR, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 4, HG_MUNO_HITBOX_MISC_ADD, "Size grows if prior hitboxes connect.");

for (var i = 1; i < 5; i++) set_hitbox_value(AT_UAIR, i, HG_MUNO_OBJECT_LAUNCH_ANGLE, 90);
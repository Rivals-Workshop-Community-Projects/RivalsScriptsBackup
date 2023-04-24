set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_USES_ROLES, 1);

var uses = fair_wall_times_max >= 0 ? string(fair_wall_times_max) : "Infinite"
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_MISC_ADD, "Can stick to walls during active frames for " + string(fair_wall_timer_max) + " frames. Max uses: " + uses);

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FAIR, 1, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 2, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_GOTO, 8);
set_window_value(AT_FAIR, 4, AG_MUNO_WINDOW_ROLE, 3);

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, sound_get("sfx_anthem_hitwall"));
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_FAIR, 4);

set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "Sourspot Clean");
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 82);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 112);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -32);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));

set_hitbox_value(AT_FAIR, 2, HG_MUNO_HITBOX_NAME, "Tipper Clean");
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 132);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hfx_sweetspot);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -32);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("sfx_anthem_sweetspot"));
set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 30);

set_hitbox_value(AT_FAIR, 3, HG_MUNO_HITBOX_NAME, "Sourspot Late");
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 74);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 126);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -32);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("sfx_sword_blow_medium1"));

set_hitbox_value(AT_FAIR, 4, HG_MUNO_HITBOX_NAME, "Tipper Late");
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 122);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 28);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -32);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));

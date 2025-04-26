set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_MUNO_ATTACK_NAME, "DStrong: Whirlwind Shell");
set_attack_value(AT_DSTRONG, AG_MUNO_ATTACK_MISC, "Erratically moves back and forth during active frames. Very whiff-punishable.
Landing the attack during the first spin will have Koopa prematurely stop, preventing the move from being negative on hit in some circumstances.");

// startup + charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

// release
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

// active 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 14);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

// turnaround
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED, -7.5);
//set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 4);

// active 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED, -26);
//set_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);

// move back to idle, also endlag
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DSTRONG, 6, AG_WINDOW_HSPEED, 8);
//set_window_value(AT_DSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 0);

// endlag 2
set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

// endlag 3
set_window_value(AT_DSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

// ===========
// yeah
set_window_value(AT_DSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED, -7.5);
//set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 9, AG_WINDOW_SFX_FRAME, 4);


set_num_hitboxes(AT_DSTRONG, 2);

// front travel hitbox
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_NAME, "Front Travelling Hit");
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -14);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 66);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, vfx_shell_hit_lrg);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

// back travel hitbox
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_NAME, "Back Travelling Hit");
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 66);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 145);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, vfx_shell_hit_lrg);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
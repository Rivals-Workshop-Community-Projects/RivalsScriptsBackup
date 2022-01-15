set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 19);


set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);


set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_TAUNT_2, 1);

// Meme hitbox
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, -24);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -84);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 95);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stand_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("bonk"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);


set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_TAUNT,1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 300);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 1);




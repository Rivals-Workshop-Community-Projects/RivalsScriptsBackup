curr_attack = AT_DSPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 5);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 2);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_pom_note_super3"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 20);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 96);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 96);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 6);



set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -18);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 6);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 6);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 15);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 1.6);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_may_whip1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, notes_l);

var atk = 17;// Q
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_Q"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_Q_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

//active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//pre-endlag (cancellable)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_GOTO, 7); //ends move early

//Hit 2 pre
set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, get_window_value(atk, 4, AG_WINDOW_LENGTH) - 1);
//Hit 2 active
set_window_value(atk, 5, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 5, AG_WINDOW_VSPEED, -5);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//Hit 2 endlag
set_window_value(atk, 6, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//endlag
set_window_value(atk, 7, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 4);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_X, 16);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -10);
set_hitbox_value(atk, 1, HG_WIDTH, 25);
set_hitbox_value(atk, 1, HG_HEIGHT, 25);
set_hitbox_value(atk, 1, HG_PRIORITY, 5);
set_hitbox_value(atk, 1, HG_DAMAGE, 2);
set_hitbox_value(atk, 1, HG_ANGLE, 60);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(atk, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_X, 36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 8);

//sweetspot
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_LIFETIME, 6);
set_hitbox_value(atk, 3, HG_HITBOX_X, 54);
set_hitbox_value(atk, 3, HG_HITBOX_Y, 26);
set_hitbox_value(atk, 3, HG_WIDTH, 12);
set_hitbox_value(atk, 3, HG_HEIGHT, 12);
set_hitbox_value(atk, 3, HG_PRIORITY, 8);
set_hitbox_value(atk, 3, HG_DAMAGE, 12);
set_hitbox_value(atk, 3, HG_ANGLE, 315);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 3, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, 3, HG_VISUAL_EFFECT, 19);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//special prong
set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 5);
set_hitbox_value(atk, 4, HG_LIFETIME, 4);
set_hitbox_value(atk, 4, HG_HITBOX_X, 60);
set_hitbox_value(atk, 4, HG_HITBOX_Y, 4);
set_hitbox_value(atk, 4, HG_WIDTH, 24);
set_hitbox_value(atk, 4, HG_HEIGHT, 48);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 7);
set_hitbox_value(atk, 4, HG_ANGLE, 60);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_infinidagger"));
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 2);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.Q, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("q" not in unown_dictionary) unown_dictionary.q = make_trie_Q();
//================================================================
//contains words starting with Q
#define make_trie_Q()
    return {};
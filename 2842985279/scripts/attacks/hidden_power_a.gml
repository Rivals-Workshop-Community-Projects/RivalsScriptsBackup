var atk = 1; // A
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_A"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_A_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("bigpunch"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -6);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 6);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 7);
set_hitbox_value(atk, 1, HG_ANGLE, 85);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 2);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, hfx_big  );
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("slam1"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.A, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("a" not in unown_dictionary) unown_dictionary.a = make_trie_A();
//================================================================
//contains words starting with A
#define make_trie_A()
    return {k:{e:{s:{i:{_:1}}}}, l:{a:{_:1,s:{a:{_:1}}},e:{_:1},i:{_:1}}, n:{t:{e:{_:1}}, p:{a:{_:1}}, u:{_:1}}, w:{e:{n:{_:1}}}};
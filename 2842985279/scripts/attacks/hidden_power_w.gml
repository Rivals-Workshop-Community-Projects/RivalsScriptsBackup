var atk = 23;// W
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_W"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_W_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("wheesh"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(atk, 4, AG_WINDOW_LENGTH, 10);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

//top prong
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_X, -36);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -36);
set_hitbox_value(atk, 1, HG_WIDTH, 40);
set_hitbox_value(atk, 1, HG_HEIGHT, 8);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 9);
set_hitbox_value(atk, 1, HG_ANGLE, 125);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, hfx_big);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("bigpunch"));

//side prongs
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_X, -36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -36);
set_hitbox_value(atk, 2, HG_WIDTH, 40);
set_hitbox_value(atk, 2, HG_HEIGHT, 96);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 7);
set_hitbox_value(atk, 2, HG_ANGLE, 120);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 5);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("punch"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.W, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("w" not in unown_dictionary) unown_dictionary.w = make_trie_W();
//================================================================
//contains words starting with W
#define make_trie_W()

return {a:{l:{o:{_:1}}, n:{_:1},s:{o:{_:1}},w:{a:{_:1}}}, e:{k:{a:{_:1}}}, i:{l:{e:{_:1}}}};
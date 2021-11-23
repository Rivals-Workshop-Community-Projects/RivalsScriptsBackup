var atk = 3; // C
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_C"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_C_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 18);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 0);

//active (pulse)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -9);
set_window_value(atk, 2, AG_WINDOW_HSPEED, -9);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 2, AG_WINDOW_HSPEED_TYPE, 2);

//active (late)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag
set_window_value(atk, 4, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 3);

//blast hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_X, 25);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -4);
set_hitbox_value(atk, 1, HG_WIDTH, 40);
set_hitbox_value(atk, 1, HG_HEIGHT, 40);
set_hitbox_value(atk, 1, HG_PRIORITY, 5);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 60);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

//early backhit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 2, HG_LIFETIME, 8);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_WIDTH, 64);
set_hitbox_value(atk, 2, HG_HEIGHT, 64);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 5);
set_hitbox_value(atk, 2, HG_ANGLE, 120);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//late backhit
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 3);
set_hitbox_value(atk, 3, HG_LIFETIME, 12);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 3, HG_WIDTH, 48);
set_hitbox_value(atk, 3, HG_HEIGHT, 48);
set_hitbox_value(atk, 3, HG_PRIORITY, 2);
set_hitbox_value(atk, 3, HG_DAMAGE, 3);
set_hitbox_value(atk, 3, HG_ANGLE, 90);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.C, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("c" not in unown_dictionary) 
{
    unown_dictionary.c = {}
    unown_dictionary.c.a = make_trie_C();
}
//================================================================
//contains words starting with CA (for now)
#define make_trie_C()
    return {};
var atk = 9; // I
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_I"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_I_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 40);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_CANCEL_FRAME, 8); //frame at which it can proceed to window 2 (unless special is held)

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip1"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 8);

//for positioning
var unit_distance = 24;
set_hitbox_value(atk, 0, HG_HITBOX_X, unit_distance);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 3);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -unown_eye_center_offset - unit_distance);
set_hitbox_value(atk, 1, HG_WIDTH, 24);
set_hitbox_value(atk, 1, HG_HEIGHT, 24);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

for (var i = 2; i <= 8; i++) //rest is identical
{
    set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, i, HG_PARENT_HITBOX, 1);
    set_hitbox_value(atk, i, HG_WINDOW, 3);
    set_hitbox_value(atk, i, HG_LIFETIME, 6);
    
    //initial positioning
    var mult_dist = (i % 2 == 0 ? 1 : -1) * floor((i+1)/2);
    set_hitbox_value(atk, i, HG_HITBOX_Y, -unown_eye_center_offset + mult_dist * unit_distance);
}

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.I, 3, AG_UNOWN_WINDOW_ACTIVE, true);
if ("i" not in unown_dictionary) unown_dictionary.i = make_trie_I();
//================================================================
//contains words starting with I
#define make_trie_I()
    return {};

var atk = 28; // ?
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_dodge"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_dodge_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 2);

//active straight away
set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, unown_airdodge_sfx);
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(atk, 0);

atk = AT_EXTRA_1;// Parry
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_parry"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_parry_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 2);

//active straight away
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_parry_use"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 0);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.QM, 1, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(AT_EXTRA_1, 1, AG_UNOWN_WINDOW_ACTIVE, true);
//no words to fill in
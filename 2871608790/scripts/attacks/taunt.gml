atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

window_num = 1; //window 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_syl_fspecial_bite"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);

window_num ++; //throw out item
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_syl_fspecial_bite"));

window_num ++; //hold pose
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 34);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("bag_taunt3"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);


set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //hitbox 1

hitbox_num ++; //hitbox > 1

set_num_hitboxes(atk, hitbox_num);
atk = AT_USTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_CATEGORY, 2);

window_num = 1; // Windup
ustrong_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_mol_swap_start"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num++; // Charging
ustrong_charging_window = window_num;
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, ustrong_charging_window);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++; // Charged, can stay in this state by holding button
ustrong_bonus_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num++; // Stance-cancel window, not normally taken
ustrong_stancel_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, stancle_length);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 0;
set_num_hitboxes(atk, hitbox_num);
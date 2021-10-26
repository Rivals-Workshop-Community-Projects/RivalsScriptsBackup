set_attack_value(AT_USPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("Ramp"));

set_num_hitboxes(AT_USPECIAL, 0);

set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC_ADD, "You can't double jump or airdodge for 30 frames after starting the move. Can be cancelled into Nair at any time (kind of like tricking in actual Mario Kart).");
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //hitbox 1

hitbox_num ++; //hitbox > 1

set_num_hitboxes(atk, hitbox_num);
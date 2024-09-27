atk = AT_INTRO;

set_attack_value(atk, AG_SPRITE, sprite_get("intro"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

window_num = 1; //window 1

window_num ++; //window > 1

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //hitbox 1

hitbox_num ++; //hitbox > 1

set_num_hitboxes(atk, hitbox_num);
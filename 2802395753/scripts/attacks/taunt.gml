set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "when you hit job bot thing (taunt)");

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 120);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("taunt"));




set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC, "imma throw something at him and see what happens -Alto");
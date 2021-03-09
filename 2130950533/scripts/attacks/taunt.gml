set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//for (i = 1; i <= 3; i++) {
// instead of a set loop, allow the player to loop manually - see attack_update
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, floss_duration);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, floss_duration);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, floss_duration);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, floss_duration);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, floss_duration);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, floss_duration);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 4);
//}

// I am so sorry you had to see this.
// I'm merely compelled by the design of the character - it's not my fault!
// May my robo soul someday atone for this and find peace.
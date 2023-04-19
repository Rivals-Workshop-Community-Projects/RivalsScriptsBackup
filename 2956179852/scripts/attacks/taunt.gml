set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//takes out the note
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 10);

//The Koopalings and I have taken over the Mushroom Kingdom. The princess is now a permanent guest at one of my 7 Koopa Hotels. I dare you to find her if you can!
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 920);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 80);

//We gotta find the princess!
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 84);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 90);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 14);

//hold last frame for a bit
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 103);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);

//takes the note away
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 104);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 4);



//s m o k e
set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 108);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);
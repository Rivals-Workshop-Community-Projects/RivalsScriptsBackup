// THEIA EVLOGIA
atk = 47;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("theikos_photonblast"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("theikos_photonblast_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 0);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 100); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //transform flash
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);

windowNum ++; //transform loop
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);

windowNum ++; //end
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
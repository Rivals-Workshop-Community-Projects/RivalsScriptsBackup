//Red Bridge

sprite_index = sprite_get("redbridge");
mask_index = sprite_get("redbridge");

visible = false;
depth = 29;

state_timer = 0;
bridge_current_length = 0;
bridge_length = 13;
bridge_next = noone;
bridge_life = 900;

bridge_sfx[0] = sound_get("bridge1");
bridge_sfx[1] = sound_get("bridge2");
bridge_sfx[2] = sound_get("bridge3");
bridge_sfx[3] = sound_get("bridge4");
bridge_sfx[4] = sound_get("bridge5");
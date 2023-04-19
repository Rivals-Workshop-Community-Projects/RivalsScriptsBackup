if (pig_state == 0 || pig_state == 4 || pig_state == 6 || enemy_hitboxID == hbox || pig_state == 3) exit;
else if (//enemy_hitboxID = hbox) exit; // Not gonna lie, don't know how to filter out the player hitbox
sound_play(asset_get("sfx_spin"));
//IK its weird, but it works

pig_state = 8;
pig_state_timer = 0;
sprite_index = spr_land;
image_index = 0;
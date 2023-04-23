// sprites
sprite_index = sprite_get("save");
mask_index = sprite_get("save");

char_height = 0;

// keep it facing the correct direction
spr_dir = player_id.spr_dir;

// play sound upon spawn
sound_play(sound_get("snd_save"));

// make the thing show up in front of other things
depth = -10;

flowey_saveattack = noone;

particles = [];
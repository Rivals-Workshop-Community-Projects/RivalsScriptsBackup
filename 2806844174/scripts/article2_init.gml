// article_init is used when the article object is created.

sprite_index = sprite_get("wheel");
image_index = 0;

sound_play(sound_get("deboning_slasher_throw"));

spr_dir = player_id.spr_dir;

hsp = spr_dir * 7;

hitpause = false;

time_alive = 0;
should_die = false;
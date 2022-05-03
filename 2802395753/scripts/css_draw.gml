//soundwhenloadedthingy
var uuid = sprite_get("idle");
if "char_uuid" not in self || char_uuid != uuid {
    sound_play(sound_get("hellohuman"));
    
    char_uuid = uuid;
}
//altsounds
var alt_new = get_player_color(player);
if (!"currAlt" in self)
{
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	sound_stop(asset_get("mfx_change_color"));
	sound_play(sound_get("_pho_acnh_move1"), 0, 0, 1);
	currAlt = alt_new;
}

muno_event_type = 6;
user_event(14);
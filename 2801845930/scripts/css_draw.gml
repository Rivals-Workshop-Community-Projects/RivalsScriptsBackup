//soundwhenloadedthingy
var uuid = sprite_get("idle");
if "char_uuid" not in self || char_uuid != uuid {
    sound_play(sound_get("phone_brrr"));

    char_uuid = uuid;
}
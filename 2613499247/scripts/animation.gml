//B - Reversals

if get_gameplay_time() < 30 {
    sprite_index = sprite_get("crouch")
    if get_gameplay_time() == 2 {
        sound_stop(sound_get("vcKarama"))
        sound_play(sound_get("vcKarama"),false,noone,.7)
    }
}
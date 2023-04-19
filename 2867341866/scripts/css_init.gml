inputpressed = 0
contrib = 0
if init != 0 {
    switch (get_player_name(player)) {
        case "GNOME":
        case "snom":
        case "DPX":
        case "COOKIE":
        sound_play(asset_get("mfx_star"))
        contrib = 1
        print("Thanks for the support!")
    }
    sound_play(sound_get("boom"))
}
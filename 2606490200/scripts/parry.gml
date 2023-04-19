///

sound_play(sound_get("parried"));
shake_camera(4, 12)

if btrain < 100 {
spawn_hit_fx(x,y - 120,bup)
    btrain += 25
} else {
    sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1,0.8)
    sound_play(asset_get("sfx_absa_concentrate"),false,noone,1,0.8)
    sound_play(asset_get("sfx_absa_kickhit"));
    boostedparry = 60
    fx = spawn_hit_fx(x - 6*spr_dir,y - 50,306)
    	fx.pause = 4
}

if get_player_color(player) == 11 {
sound_play(sound_get("drip"))
}

window_timer = floor(window_timer)
noparryedit = 15
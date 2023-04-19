if(attack == AT_FSPECIAL){
    sound_stop(asset_get("sfx_ell_missile_loop"));
}



if(suppress_music and (attack != AT_EXTRA_2 or !(prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND))){
    create_deathbox(x, y-16, 40, 40, player, true, 1, 30, 2);
    spawn_hit_fx(x, y-16, 163);
    var hfx = spawn_hit_fx(x, y-16, 264);
    hfx.depth = depth-1;
    sound_play(sound_get("fumo"), false, noone, 1, 1);
}
var stop_music = true;
if(suppress_music){
    with(oPlayer){
        if(other.url == url and other != self and play_music){
            play_music = false;
            stop_music = false;
        }
    }
suppress_music = false;
if(stop_music){
    sound_stop(sound_get("victory2"));
}

}
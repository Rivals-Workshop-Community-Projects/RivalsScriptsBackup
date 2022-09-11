if(my_hitboxID.attack == AT_FSPECIAL and fspec_misfire){
    create_deathbox(x, y-16, 40, 40, player, true, 1, 30, 2);
    spawn_hit_fx(x, y-16, 163);
    var hfx = spawn_hit_fx(x, y-16, 264);
    hfx.depth = depth-1;
    sound_play(sound_get("fumo"), false, noone, 1, 1);
}

if(my_hitboxID.attack == AT_NSPECIAL and my_hitboxID.orig_player == player and my_hitboxID.hbox_num == 1){
    my_hitboxID.hitbox_timer = 0;
}
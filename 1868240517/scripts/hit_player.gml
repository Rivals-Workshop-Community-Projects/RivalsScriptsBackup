//hit_player
if has_rune("N") nspecial_done = 0;
uspecial_done = 0;
/*if attack == AT_DSTRONG && window == 1 && my_hitboxID.attack != AT_FSPECIAL {
    window_timer = 0;
    window = 2;
    
}*/
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 {
    if flight > 0 flight--;
    with disk {
         hit_op = 0;
    }
    if has_rune("O") { //Teleport to star on hit
        if special_down {
            var ehx = x;
            var why = y-64;
            var haych = hsp;
            var vee = vsp;
            x = disk.x;
            y = disk.y+64;
            hsp = disk.hsp;
            vsp = disk.vsp;
            disk.x = ehx;
            disk.y = why;
            disk.hsp = haych;
            disk.vsp = vee;
            sound_play(tele_sfx);
            disk_sfx_bool = 1;
            set_state(PS_IDLE_AIR);
        }
    }
    
}

if hit_player_obj.should_make_shockwave {
    with disk {
        hbox_frames = -20;
        instance_destroy(hBox);
        
    }
}
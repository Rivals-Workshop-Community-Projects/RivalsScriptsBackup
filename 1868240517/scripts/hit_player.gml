//hit_player
nspecial_done = 0;
uspecial_done = 0;
//move_cooldown[AT_NSPECIAL] = 0;
if attack == AT_DSTRONG && window == 1 && my_hitboxID.attack != AT_FSPECIAL {
    window_timer = 0;
    window = 2;
    
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 {
    if flight > 0 flight--;
    with disk {
         hit_op = 0;
    }
    
}

if hit_player_obj.should_make_shockwave {
    with disk {
        hbox_frames = -20;
        instance_destroy(hBox);
        
    }
}
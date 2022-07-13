//hitbox_init

if attack == AT_FTILT && hbox_num == 1 { //boomerang
    player_id.sword_proj = id
    is_reckless = true
    can_pickup = false
    
    pos_array = [[0,0,0],[0,0,0],[0,0,0]]
    pos_index = 0
    
    sound_play(sound_get("mantis_proj_loop"), true)
    
}

if attack == AT_FTILT && hbox_num == 2 {
    //depth = -10
}

if attack == AT_NSPECIAL && hbox_num == 1 {
    pos_array = [[0,0,0],[0,0,0],[0,0,0]]
    pos_index = 0
}

reset_lifetime = false
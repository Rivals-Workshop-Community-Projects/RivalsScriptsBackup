if attack == AT_NSPECIAL and (hbox_num == 1 or hbox_num == 3) {
    // with player_id {
    //     ds_list_add(bullet_points, [ other.id, ds_list_create() ]);
    // }
    if hbox_num == 1 {
        bullet_points = ds_list_create();
        spawn_interval = 1;
        bullet_curve_intensity = 5;
        bullet_curve_ease_factor = 0.062;
        
        bullet_curve_easing = 0;
        
        //bullet_state = PS_IDLE;
        
        frozen_bullet_hsp = 0;
        frozen_bullet_vsp = 0;
        frozen_bullet_new_angle = 0;
        frozen_bullet_timer = 0;
        frozen_bullet_max_time = 20;
        frozen_bullet_min_time = 5;
        
        average_dir = 0;
    }
    
    
    draw_width = 9;
    width_decay = 0.14;
    initial_alpha = 1;
    alpha_decay = 0.04;
    
    max_points = 20;
}


if attack == AT_FSPECIAL {
    can_create_puddle = (player_id.puddle_cooldown <= 0)
}
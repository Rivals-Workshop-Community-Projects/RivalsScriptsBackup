if (attack == AT_DSPECIAL_2 && state_cat != SC_HITSTUN){
    if (window == 2){
        window = 4
        window_timer = 0
        damage_scaling = 1;
        if(hit_player_obj.x > x){
            spr_dir = 1;
        }
        if(hit_player_obj.x < x){
            spr_dir = -1;
        }
        if(enemy_hitboxID.type == 1 && collision_circle(x + 30 * spr_dir, y - 50, 75, oPlayer, true, true) != noone){
            set_num_hitboxes(AT_DSPECIAL_2, 1);
        } else {
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;
            set_num_hitboxes(AT_DSPECIAL_2, 0);
            var hbox = create_hitbox(AT_DSPECIAL_2, 2, x, y - 30);
            // hit_player_obj.was_parried = true;
            // hit_player_obj.extended_parry_lag = true;
            hit_player_obj.hit_player_obj = self;
            hbox.target = hit_player_obj;
        }
    }
}
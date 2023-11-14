if (my_hitboxID.attack == AT_DAIR){
    destroy_hitboxes();
    window = 4;
    window_timer = 0;
}

if (my_hitboxID.attack == AT_BAIR && window == 2){
    destroy_hitboxes();
    window = 3;
    window_timer = 0;
}

with (my_hitboxID){
    if (attack == AT_FSPECIAL && hbox_num == 1){
        hsp = 16*spr_dir;
        hitbox_timer = 0;
        
        sprite_index = sprite_get("daruma_proj_flipped");
        
        with (other){
            move_cooldown[AT_FSPECIAL] = daruma_parry_initial_cooldown;
        }
    }
    if (attack == AT_FSPECIAL && hbox_num > 1){
        hitbox_timer = 0;
        
        if (hbox_group > 100){
            var target_angle = point_direction(x, y, hbox_group.x, hbox_group.y - round(hbox_group.char_height)/1.5);
            vsp = lengthdir_y(player_id.daruma_parry_speed, target_angle);
            hsp = lengthdir_x(player_id.daruma_parry_speed, target_angle);
            player = other.hit_player_obj.player;
        }
        else{
            var target_angle = point_direction(x, y, player_id.x, player_id.y - round(player_id.char_height)/1.5);
            vsp = lengthdir_y(player_id.daruma_parry_speed, target_angle);
            hsp = lengthdir_x(player_id.daruma_parry_speed, target_angle);
            player = other.hit_player_obj.player;
            
            if (!player_id.daruma_targets_anyone){
                with (player_id){
        			move_cooldown[AT_FSPECIAL] = daruma_parry_hit_cooldown;
        		}
            }
        }
    }
    if (attack == AT_NSPECIAL && hbox_num == 1){
        hsp *= 2;
        vsp *= 2;
        hitbox_timer = 0;
    }
}
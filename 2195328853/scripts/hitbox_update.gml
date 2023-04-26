//hitbox_update

if(attack == AT_FSPECIAL){
    if(hbox_num == 3){
        hsp -= hsp*0.015;
        if (get_player_color( player ) != 11){
            if(get_gameplay_time() % 4 == 0){
                var rand_dir = random_func(1, 359, true);
                spawn_hit_fx((x) + round(lengthdir_x(15, rand_dir)), y + round(lengthdir_y(15, rand_dir)), player_id.fx_bluetrail3);
            }
        }else if (get_player_color( player ) == 11){
            if(get_gameplay_time() % 8 == 0){
                var rand_dir = random_func(1, 359, true);
                spawn_hit_fx((x) + round(lengthdir_x(10, rand_dir)), y + round(lengthdir_y(10, rand_dir)), player_id.fx_star_trail);
            }
        }
    }
}
if(attack == AT_DSPECIAL){
    if(hbox_num == 4){
        kb_scale = 0.4+(hsp/10*spr_dir);
        //if(player_id.hsp*player_id.spr_dir > 0){
            //kb_angle = 20;
        //}else if(player_id.hsp*player_id.spr_dir < 0){
            //kb_angle = 160;
        //}
    }
}

draw_xscale = spr_dir;
//draw_sprite(spr_proj_pillar, 0, 360, get_stage_data(SD_Y_POS));
if (pillar_create && pillar_create_time == pillar_create_max) {
    spawn_hit_fx( pillar_create_x, pillar_create_y, vfx_pillar_spawn);
}
if (instance_exists(fidget)) {
    if (fidget.fidget_timer <= 54 && fidget.fidget_state == 2) {
        var light_ds = 140 ? fidget.fidget_timer * 10 > 140 : fidget.fidget_timer * 10;
        var light_ds = fidget.fidget_timer * 10 > 140 ? 140 : fidget.fidget_timer * 10;
        //print(string(light_ds));
        with (oPlayer) {
            if (player == other.player) {
                var fid_dist = point_distance(x, y - 48, other.fidget.x, other.fidget.y);
                var tar_draw = true;
                // Do Stuff for Dust
                if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (window > 1 && window < 5) && fid_dist <= other.fidget.light_range) {
                    var new_target_spr = draw_sprite(other.spr_proj_target, 0, x + 38 * spr_dir, y - 48);
                    depth = -1;
                    
                    draw_circle_color(x + 38 * spr_dir, y - 48, light_ds, c_white, c_white, true);
                }
            }
            else {
                var fid_dist = point_distance(x, y - floor(sprite_get_height(hurtbox_spr) / 2), other.fidget.x, other.fidget.y);
                var tar_draw = true;
                if (fid_dist <= other.fidget.light_range && player != other.player) {
                    var new_target_spr = draw_sprite(other.spr_proj_target, 0, x, y - floor(sprite_get_height(hurtbox_spr) / 2));
                    depth = -1;
                }
            }


            //var fid_dist = point_distance(x, y - floor(sprite_get_height(hurtbox_spr) / 2), other.fidget.x, other.fidget.y);
            //var tar_draw = true;
            //if (fid_dist <= other.fidget.light_range && player != other.player) {
            //    var new_target_spr = draw_sprite(other.spr_proj_target, 0, x, y - floor(sprite_get_height(hurtbox_spr) / 2));
            //    depth = -1;
            //}
            //if (player == other.player) {
            //    //print("ye")
            //    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (window > 1 && window < 5) && fid_dist <= other.fidget.light_range) {
            //        var new_target_spr = draw_sprite(other.spr_proj_target, 0, x, y - floor(sprite_get_height(hurtbox_spr) / 2));
            //        depth = -1;
            //        
            //        draw_circle_color(x, y - floor(sprite_get_height(hurtbox_spr) / 2), light_ds, c_white, c_white, true);
            //    }
            //}
        }
        draw_circle_color(fidget.x, fidget.y - 30, light_ds, c_white, c_white, true);
    }
    
}


//init.gml

//draw_length = 1;
//orig_draw_length = 1;

//post_draw.gml
//if(get_gameplay_time() % 30 == 0)
//{
//    orig_draw_length = clamp((orig_draw_length + 0.25) % 5, 1, 5);
//}
//
//draw_length = orig_draw_length;
//length = sprite_get_width(sprite_get("test"));
//height = sprite_get_height(sprite_get("test"));
//angle = 0;
//if(down_down)
//{
//    angle = 30;
//}
//else if(up_down)
//{
//    angle = 45;
//}
//offset_x = dcos(angle) * spr_dir * length;
//offset_y = -dsin(angle) * length;
//
//
//while(draw_length > 0)
//{
//    draw_sprite_general(sprite_get("test"), 0, 0, 0, length * clamp(draw_length, 0, 1), height, (x + 64) * spr_dir + offset_x * (orig_draw_length - draw_length), (y - 32) + offset_y * (orig_draw_length - draw_length), 1, 1, angle, c_white, c_white, c_white, c_white, 1);
//    draw_length -= 1;
//}
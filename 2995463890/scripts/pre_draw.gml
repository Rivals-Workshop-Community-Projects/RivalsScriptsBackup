//articles
gpu_set_fog(true, hud_color, 0, 1)
with obj_article1 {
    if player_id == other.id 
    {
        var i = 0;
        repeat (4) {
            var xx = other.directions[i][0]
            var yy = other.directions[i][1]
            draw_sprite_ext(sprite_index, image_index, x + xx, y + yy, spr_dir, 1, image_angle, other.player_color, 1)
            
            i += 1;
        }
    }
}
gpu_set_fog(0, c_white, 0, 1)

//var ct = current_time;
gpu_push_state();
gpu_set_blendmode(bm_add);
with (pHitBox) {
    if !( (player_id == other and attack == AT_NSPECIAL and (hbox_num == 1 or hbox_num == 3) and "bullet_points" in self) ) continue;
    
    draw_primitive_begin(pr_trianglestrip);
    for (var i = 0; i < ds_list_size(bullet_points); i++) {
        var x_line = lengthdir_x(bullet_points[| i].width/2, bullet_points[| i].angle + 90);
        var y_line = lengthdir_y(bullet_points[| i].width/2, bullet_points[| i].angle + 90);
        
        draw_vertex_color(bullet_points[| i].pos_x - x_line, bullet_points[| i].pos_y - y_line, other.player_color, bullet_points[| i].alpha);
        draw_vertex_color(bullet_points[| i].pos_x + x_line, bullet_points[| i].pos_y + y_line, other.player_color, bullet_points[| i].alpha);
    }
    draw_primitive_end();
}
//print(current_time - ct)
// with hit_fx_obj {
//     if (sprite_index != asset_get("empty_sprite") or player_id != other or "bullet_points" not in self) continue;
    
//     draw_primitive_begin(pr_trianglestrip);
//     for (var i = 0; i < ds_list_size(bullet_points); i++) {
//         var x_line = lengthdir_x(bullet_points[| i].width/2, bullet_points[| i].angle + 90);
//         var y_line = lengthdir_y(bullet_points[| i].width/2, bullet_points[| i].angle + 90);
        
//         draw_vertex_color(bullet_points[| i].pos_x - x_line, bullet_points[| i].pos_y - y_line, color, bullet_points[| i].alpha);
//         draw_vertex_color(bullet_points[| i].pos_x + x_line, bullet_points[| i].pos_y + y_line, color, bullet_points[| i].alpha);
//     }
//     draw_primitive_end();    
// }

gpu_pop_state();



shader_start();
if instance_exists(bullet_obj) and bullet_obj.bullet_state == PS_FROZEN {
    draw_sprite_ext(dir_sprite, 0, bullet_obj.x, bullet_obj.y, 1, 1, bullet_obj.frozen_bullet_new_angle, c_white, 1)
}
shader_end();
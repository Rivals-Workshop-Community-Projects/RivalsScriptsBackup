//debug_draw

//draw_debug_text(floor(x), floor(y)+16*0, "variable = " + string(variable));



//old test code
/*
    for (var i = 0; i <= 3; ++i)
    {
        var dist = point_distance(od_sword_pos[0][0], od_sword_pos[0][1], od_sword_pos[1][0], od_sword_pos[1][1]);
        var angle = point_direction(od_sword_pos[0][0], od_sword_pos[0][1], od_sword_pos[1][0], od_sword_pos[1][1]);
        var dir_x = od_sword_pos[0][0] + lengthdir_x(dist*i/3, angle);
        var dir_y = od_sword_pos[0][1] + lengthdir_y(dist*i/3, angle);

        draw_line_color(od_sword_pos[0][0], od_sword_pos[0][1], od_sword_pos[1][0], od_sword_pos[1][1], c_red, c_red)
        draw_circle_color(dir_x, dir_y, 5, $FFFF00, $FFFF00, false);

        //draw_circle_color(od_sword_pos[0][0], od_sword_pos[0][1], 5, c_red, c_red, false);
        //draw_circle_color(od_sword_pos[1][0], od_sword_pos[1][1], 5, c_yellow, c_yellow, false);
    }


    if (rune_H_drag_id != noone)
    {
        //RAYCAST LOGIC DEBUG
        for (var line_length = 0; line_length < 10496; line_length += 128)
        {
            var _angle = point_direction(hook_proj[0], hook_proj[1], x+40*spr_dir, y-40);
            var _x = hook_proj[0] + lengthdir_x(line_length, _angle);
            var _y = hook_proj[1] + lengthdir_y(line_length, _angle);

            if (!place_meeting(_x, _y, asset_get("solid_32_obj"))) draw_circle_color(_x, _y, 5, c_red, c_red, false);
            else
            {
                rune_H_collision_pos[0] = _x;
                rune_H_collision_pos[1] = _y;
                break;
            }
        }
    }


    for (var chasm_line_pos = 0; chasm_line_pos <= 3 + burnbuff_active * 2; chasm_line_pos ++)
    {
        var chasm_line_x = x + spr_dir * (40 + chasm_line_pos * chasm_range); //where to spawn
        var chasm_check_x = chasm_line_x + 8 * spr_dir; //off-stage prevention

        //check for solid blocks or platforms
        if (position_meeting(chasm_check_x, y + 2, asset_get("solid_32_obj")) || position_meeting(chasm_check_x, y + 2, asset_get("par_jumpthrough")))
        {
            if (position_meeting(chasm_check_x, y - 4, asset_get("solid_32_obj")) == false) draw_circle_color(chasm_line_x, y + 2, 5, c_red, c_red, false);
            else break;
        }
        else break; //if they don't exist just stop running this code so the bursts won't float
    }


    if (debug_chain_display)
    {
        for (var line_dist = 0; line_dist < hook_chain_amount; line_dist ++) dist[line_dist] = line_dist/hook_chain_amount * point_distance(x+32*spr_dir, y-32, hook_proj[0], hook_proj[1]);

        for (var line_length = 0; line_length < hook_chain_amount; line_length ++)
        {
            var angle = point_direction(x+32*spr_dir, y-32, hook_proj[0], hook_proj[1]);
            var _x = x+32*spr_dir + lengthdir_x(dist[line_length], angle);
            var _y = y-32 + lengthdir_y(dist[line_length], angle);

            draw_circle_color(floor(_x), floor(_y), 5, c_red, c_red, false);
        }
    }
*/

//Put this above all the #defines in your script.
draw_colored_hitboxes();

//Put this at the very bottom of your script, with the rest of the #defines.
#define draw_colored_hitboxes
if hbox_view {
    var arrowspr = __kb_arrow_spr, hitboxes = [], arr_len, __kb_angle, angle;
        with (pHitBox) if (player_id == other && draw_colored) array_push(hitboxes,self)
        arr_len = array_length(hitboxes);
        if arr_len > 0 {
            selection_sort_priority(hitboxes);
            for (var i = 0; i < arr_len; i++) with hitboxes[i] {
                draw_sprite_ext(draw_spr, shape, x, y, image_xscale, image_yscale, 0, col, 0.5);
                __kb_angle = kb_angle == 361 ? 45 : kb_angle;
                angle = ((__kb_angle+90)*(hit_flipper==5?-1:1)*spr_dir)-90
                draw_sprite_ext(arrowspr, 0, x, y, 1,1,angle,-1,0.5);
            }
        }
        //hide base hurtbox display
        hurtboxID.image_alpha = 0;
        //redraw hurtbox OVER hitbox display for visibility
        if state_cat == SC_HITSTUN { //turn hurtbox yellow
            gpu_set_fog(true, c_yellow, 0, 999)
        }
        draw_sprite_ext(hurtboxID.sprite_index, hurtboxID.image_index, x, y, hurtboxID.image_xscale, hurtboxID.image_yscale, 0, -1, 0.5)
        gpu_set_fog(false, c_white, 0, 999)
}
#define selection_sort_priority(arr)
{
    //basic selection sort alg
    var arr_len = array_length(arr), jmin, store;
    for (var i = 0; i < arr_len-1; i++) {
        jmin = i;
        for (var j = i+1; j < arr_len; j++) {
            if (arr[@j].hit_priority < arr[@jmin].hit_priority) jmin = j;
        }
        if (jmin != i) {
            store = arr[@i];
            arr[@i] = arr[@jmin];
            arr[@jmin] = store;
        }
    }
}
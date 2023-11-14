//debug_draw.gml

//draw_debug_text(x, y, "text = " + string(variable));

/* //check color array lol
for (var i = 0; i < 9; i++)
{
    var pos = i*4;
    draw_debug_text(x + 80 * 0, y + 16 * i, "R" + string(floor((pos + 0)/4)) + " = " + string(colorO[pos + 0]*255));
    draw_debug_text(x + 80 * 1, y + 16 * i, "G" + string(floor((pos + 1)/4)) + " = " + string(colorO[pos + 1]*255));
    draw_debug_text(x + 80 * 2, y + 16 * i, "B" + string(floor((pos + 2)/4)) + " = " + string(colorO[pos + 2]*255));
    draw_debug_text(x + 80 * 3, y + 16 * i, "A" + string(floor((pos + 3)/4)) + " = " + string(colorO[pos + 3]));
}
*/

if (hbox_view)
{
    var found_target = false;
    with (oPlayer) if ("bar_sonic_reticle_owner" in self && bar_sonic_reticle_owner != noone) found_target = true;
    
    //homing attack range
    if (is_attacking && (attack == AT_NSPECIAL && window == 2 || attack == AT_EXTRA_1 && window == 1 && hitpause))
    {
        draw_circle_color(
            x, y, homing_dist,
            found_target ? $00FF00 : $0000FF,
            found_target ? $00FF00 : $0000FF, true
        );

        //upper limit
        draw_line_color(
            x, y,
            x + lengthdir_x(homing_dist, 90 + homing_range[0] * -spr_dir),
            y + lengthdir_y(homing_dist, 90 + homing_range[0] * -spr_dir),
            found_target ? $00FF00 : $0000FF,
            found_target ? $00FF00 : $0000FF
        );

        //lower limit
        draw_line_color(
            x, y,
            x + lengthdir_x(homing_dist, 270 + homing_range[1] * spr_dir),
            y + lengthdir_y(homing_dist, 270 + homing_range[1] * spr_dir),
            found_target ? $00FF00 : $0000FF,
            found_target ? $00FF00 : $0000FF
        );
    }
}

//Put this above all the #defines in your script.
draw_colored_hitboxes();

//Put this at the very bottom of your script, with the rest of the #defines.
#define draw_colored_hitboxes
{
    if hbox_view {
        var arrowspr = __kb_arrow_spr, hitboxes = [], arr_len, __kb_angle, angle;
        with (pHitBox) if (player_id == other && "draw_colored" in self && draw_colored) array_push(hitboxes,self)
        arr_len = array_length(hitboxes);
        if arr_len > 0 {
            selection_sort_priority(hitboxes);
            for (var i = 0; i < arr_len; i++) with hitboxes[i] {
                draw_sprite_ext(draw_spr, shape, x, y, image_xscale,image_yscale,0,col,0.5);
                __kb_angle = kb_angle == 361 ? 45 : kb_angle;
                angle = ((__kb_angle+90)*(hit_flipper==5?-1:1)*spr_dir)-90
                if (image_xscale > 0 && image_yscale > 0) draw_sprite_ext(arrowspr, 0, x, y, 1,1,angle,-1,0.5);
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
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

//rainbow ring indicator
with (obj_article1) if (player_id == other && "trick_ring_player" in self)
{
    //capture area + sprite offsets
    var view_left = view_get_xview() + 34; //0, y
    var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
    var view_up = view_get_yview() + 32; //x, 0
    var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

    //offscreen check
    article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);

    if (offscreen_arrow_enabled)
    {
        if (article_offscreen && !player_id.playtest_active)
        {
            depth = -200; //makes the indicator appear above everything
            
            //screen limits x
            if (x < view_left - 65) offscreen_x_pos = view_left - 32;
            else if (x > view_right + 65) offscreen_x_pos = view_right - 32;
            else offscreen_x_pos = x - 32;

            //screen limits y
            if (y < view_up + 24) offscreen_y_pos = view_up - 32;
            else if (y > view_down + 24) offscreen_y_pos = view_down - 32;
            else offscreen_y_pos = y - 54;


            //image angles
            if (x < view_left - 63)
            {
                if (y < view_up - 33) offscreen_image = 1;
                else if (y > view_down + 85) offscreen_image = 7;
                else  offscreen_image = 0;
            }
            else if (x > view_right + 63)
            {
                if (y < view_up - 33) offscreen_image = 3;
                else if (y > view_down + 85) offscreen_image = 5;
                else  offscreen_image = 4;
            }
            else
            {
                if (y < view_up - 33) offscreen_image = 2;
                else if (y > view_down + 85) offscreen_image = 6;
            }

            draw_sprite_ext(sprite_get("hud_offscreen_arrow"), offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, offscreen_col, 1);
            draw_sprite_ext(sprite_get("hud_offscreen_image"), 0, offscreen_x_pos+33, offscreen_y_pos+33, 2, 2, 0, c_white, 1); //ring
            //draw_sprite_ext(sprite_get("hud_offscreen_image"), 1, offscreen_x_pos+33, offscreen_y_pos+33, 2, 2, image_angle, c_white, 1); //arrow
        }
        else depth = orig_depth;
    }
}

if (hbox_view)
{
    var found_target = false;
    with (oPlayer) if ("bar_sonic_reticle_owner" in self && bar_sonic_reticle_owner != noone) found_target = true;
    
    //homing attack range
    if (is_attacking && (attack == AT_NSPECIAL && window == 2 || attack == AT_EXTRA_1 && window == 1 && hitpause))
    {
        draw_set_color(found_target ? $FF3300 : $880017);
        draw_set_alpha(0.5);
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(x, y);
        var range_start = (spr_dir < 0) ? 90 + homing_range[0] : 270 + homing_range[1];
        var range_end = (spr_dir < 0) ? 270 - homing_range[1] : 90 - homing_range[0] + 360;
        for (var i = range_start; i <= range_end; i += 10)
        {
            draw_vertex(
                x + lengthdir_x(homing_dist + 40, i),
                y + lengthdir_y(homing_dist + 40, i)
            )
        }
        draw_primitive_end();
        draw_set_color(c_white);
        draw_set_alpha(1);
    }
}


//Put this above all the #defines in your script.
draw_colored_hitboxes();

//Put this at the very bottom of your script, with the rest of the #defines.
#define draw_colored_hitboxes
{
    if (hbox_view)
    {
        var arrowspr = __kb_arrow_spr, hitboxes = [], arr_len, __kb_angle, angle;
        with (pHitBox) if (player_id == other && draw_colored && "do_not_show" not in self) array_push(hitboxes,self)
        arr_len = array_length(hitboxes);
        if (arr_len > 0)
        {
            selection_sort_priority(hitboxes);
            for (var i = 0; i < arr_len; i++) with (hitboxes[i])
            {
                var col = hit_priority > 0 ? self.col : c_gray
                draw_sprite_ext(draw_spr, shape, x, y, image_xscale,image_yscale,0,col,0.5);
                __kb_angle = kb_angle == 361 ? 45 : kb_angle;
                angle = ((__kb_angle+90)*(hit_flipper==5?-1:1)*spr_dir)-90
                draw_sprite_ext(arrowspr, 0, x, y, 1,1,angle,-1,0.5);
            }
        }
        //hide base hurtbox display
        hurtboxID.image_alpha = 0;
        //redraw hurtbox OVER hitbox display for visibility
        if (state_cat == SC_HITSTUN) gpu_set_fog(true, c_yellow, 0, 999) //turn hurtbox yellow
        if (invincible || attack_invince == 1 || initial_invince || hurtboxID.dodging) gpu_set_fog(true, c_aqua, 0, 999)
        draw_sprite_ext(hurtboxID.sprite_index, hurtboxID.image_index, x, y, hurtboxID.image_xscale, hurtboxID.image_yscale, 0, -1, 0.5)
        gpu_set_fog(false, c_white, 0, 999)
    }
}
#define selection_sort_priority(arr)
{
    //basic selection sort alg
    var arr_len = array_length(arr), jmin, store;
    for (var i = 0; i < arr_len-1; i++)
    {
        jmin = i;
        for (var j = i+1; j < arr_len; j++) if (arr[@j].hit_priority < arr[@jmin].hit_priority) jmin = j;
        if (jmin != i)
        {
            store = arr[@i];
            arr[@i] = arr[@jmin];
            arr[@jmin] = store;
        }
    }
}
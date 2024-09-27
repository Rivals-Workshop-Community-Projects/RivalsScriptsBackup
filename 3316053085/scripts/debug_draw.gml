//debug_draw.gml

//draw_debug_text(x, y, "text = " + string(variable));

//angles debug
if (get_match_setting(SET_PRACTICE) && keyboard_lastkey == angles_debug_key)
{
    keyboard_lastkey = 0;
    angles_debug = !angles_debug;
}
if (angles_debug)
{
    for (var i = 0; i < array_length(artc_rune); i++) if (instance_exists(artc_rune[i])) with (artc_rune[i])
    {
        if (state == "mirror")
        {
            draw_line_width_color(
                x - lengthdir_x(64, rune_angle + 90),
                y - lengthdir_y(64, rune_angle + 90),
                x + lengthdir_x(64, rune_angle + 90),
                y + lengthdir_y(64, rune_angle + 90),
                3, c_red, c_red
            )
            draw_line_width_color(
                x,
                y,
                x + lengthdir_x(64, output_angle),
                y + lengthdir_y(64, output_angle),
                3, $00FF00, $00FF00
            )
            draw_debug_text(floor(x) - 12, floor(y) + 48, "hp: " + string(hp));
            draw_debug_text(floor(x) - 12, floor(y) + 64, "order: " + string(i));
            draw_debug_text(floor(x) - 12, floor(y) + 80, "angle: " + string(rune_angle));
        }
        else draw_debug_text(floor(x) - 12, floor(y) + 48, "angle: " + string(rune_angle));
    }
    if (hsp != 0 || vsp != 0)
    {
        draw_line_width_color(
            x,
            y - floor(char_height/2),
            x + lengthdir_x(64, point_direction(0, 0, hsp, vsp)),
            y + lengthdir_y(64, point_direction(0, 0, hsp, vsp)) - floor(char_height/2),
            3, c_yellow, c_yellow
        )
        draw_debug_text(floor(x), floor(y), "angle: " + string(point_direction(0, 0, hsp, vsp)));
    }
}

//giga drain rune hitbox view
if (giga_drain_rune && hbox_view)
{
    if (instance_exists(artc_rune[next_rune]) && artc_rune[next_rune].state == "drain") with (artc_rune[next_rune])
    {
        draw_set_alpha(0.25);
        draw_circle_color(
            x + lengthdir_x(other.giga_drain_offset, rune_angle),
            y + lengthdir_y(other.giga_drain_offset, rune_angle),
            other.giga_drain_range, $FFFF00, $FFFF00, false);
        draw_set_alpha(1);
    }
}

//byakuren alt offscreen indicator
if (get_stage_data(SD_ID) != "2924212592" && "is_demon_horde_stage" not in obj_stage_main)
{
    if (!s_alt && alt_cur == 10 && char_offscreen)
    {
        //screen limits x - this decides how far the indicator should follow the article on the X axis
        if (x < view_left - 65) offscreen_x_pos = view_left - 32;
        else if (x > view_right + 65) offscreen_x_pos = view_right - 32;
        else offscreen_x_pos = x - 32;

        //screen limits y - this decides how far the indicator should follow the article on the Y axis
        if (y < view_up + 24) offscreen_y_pos = view_up - 32;
        else if (y > view_down + 24) offscreen_y_pos = view_down - 32;
        else offscreen_y_pos = y - 54;

        //image angles - decides at which coordinates should the article change the arrow sprite
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

        draw_sprite(sprite_get("ex1_offscreen"), 0, x, y);

        //for the version with the circle inside it replace  "offscreen_cloud_bg_spr"  with  "offscreen_bg_spr"
        draw_sprite_ext(
            sprite_get("ex1_offscreen"), 0,
            offscreen_x_pos + 32 + (sign(spr_dir) == -1) * 2 - (x < view_left) + (x > view_right),
            offscreen_y_pos + 34,
            sign(spr_dir), 1, 0, c_white, 1
        );
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
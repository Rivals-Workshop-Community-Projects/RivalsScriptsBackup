//debug_draw

//draw_debug_text(x, y, "variable = " + string(variable));

//var surface_left = get_stage_data(SD_X_POS);
//var surface_right = room_width - get_stage_data(SD_X_POS);
//var surface_top = get_stage_data(SD_Y_POS);

//draw_debug_text(x, y+16, "window = " + string(window));
//draw_debug_text(x, y+32, "window_timer = " + string(window_timer));


//some shit i worked with
{
    //draw_debug_text(x, y, "stamina = " + string(cur_stamina) + " / " + string(max_stamina));
    //draw_debug_text(x, y+16, "wind_glider_toggle = " + string(wind_glider_toggle));
    //draw_debug_text(x, y+32, "wind_glider_delay_open = " + string(wind_glider_delay_open));

    //draw_debug_text(x, y, "note_id = " + string(note_id));
    //draw_debug_text(x, y+16, "prev_note_id = " + string(prev_note_id));
    //draw_debug_text(x, y+32, "time = " + string(key_held_time));

    //draw_debug_text(surface_left, surface_top, "joy_dir = " + string(joy_dir));
    //draw_debug_text(surface_left, surface_top+16, "distance from edge = " + string(surface_left - x));
    //draw_debug_text(surface_left, surface_top+32, "ai_fight_time = " + string(ai_fight_time));

    //this will draw out the temp_marker point which is where keqing actually teleports
    //draw_circle_color(floor(temp_marker_x), floor(temp_marker_y), 5, c_blue, c_blue, false);
    //draw_circle_color(floor(marker_dist_x), floor(marker_dist_y), 5, c_red, c_red, false);

    //draw_debug_text(x, y, "prev = " + string(prev_damage));
    //draw_debug_text(x, y+16, "gap = " + string(damage_gap));
    
    //with (oPlayer)
    //{
    //    draw_debug_text(x, y, "hurt_img = " + string(hurt_img));
    //    draw_debug_text(x, y+16, "state = " + string(get_state_name(state)));
    //    draw_debug_text(x, y+32, "state = " + string(state));
    //}
    
    //draw_debug_text(x, y, "state_timer = " + string(state_timer));
    //draw_debug_text(x, y+16, "window_timer = " + string(window_timer));
    
    //var can_fspec_slash = false;
    //if (is_attacking && attack == AT_FSPECIAL && state_timer >= 18) can_fspec_slash = true;
    //else can_fspec_slash = false;
    //draw_debug_text(x, y, "can fspec slash = " + string(can_fspec_slash));
    
    
    //RAYCAST LOGIC DEBUG
    //marker_dist decides where every point draws, then when it reaches a "par_block" object it stops rendering because of "break;"
    /*
    for (var line_length = 0; line_length < marker_dist; line_length ++)
    {
        marker_dist_x = x + lengthdir_x(line_length, marker_angle);
        marker_dist_y = y - 32 + lengthdir_y(line_length, marker_angle);
    
        if (position_empty(marker_dist_x, marker_dist_y) == false)
        {
            if (instance_place(marker_dist_x, marker_dist_y, asset_get("par_block")) != noone)
            {
                //draw_circle_color(marker_dist_x, marker_dist_y, 5, c_red, c_red, false);
                break;
            }
        }
    }
    */

    //draw_debug_text(x, y, "free = " + string(free));

    //draw_debug_text(x-64, y, "state = " + string(get_state_name( state )));

    //draw_debug_text(x, y, "afterimage_amount = " + string(afterimage_amount));

    //draw_debug_text(x, y, "blur array length = " + string(array_length(blur)));

    //draw_debug_text(x, y, "image_index = " + string(image_index));
    //draw_debug_text(x, y+16, "marker_angle = " + string(marker_angle));

    //draw_debug_text(x, y, "window = " + string(window));
    //draw_debug_text(x, y+16, "window_timer = " + string(window_timer));
    //draw_debug_text(x, y+32, "last_kb_angle = " + string(last_kb_angle));

    //draw_debug_text(x, y, "rotate_time = " + string(rotate_time));
    //draw_debug_text(x, y+16, "spr_angle = " + string(spr_angle));

    //draw_debug_text(x, y, "strong_charge = " + string(strong_charge));
    //draw_debug_text(x, y+16, "image = " + string(image_index));

    /*
    if (!instance_exists(artc_marker)) exit;

    draw_debug_text(x, y, "marker x = " + string(artc_marker.x));
    draw_debug_text(x, y+16, "marker y = " + string(artc_marker.y));
    draw_debug_text(x, y+32, "marker angle = " + string(marker_angle));
    draw_debug_text(x, y+48, "spr_dir = " + string(spr_dir));

    draw_debug_text(x, y, "stilleto_id = " + string(stilleto_id));

    if (!instance_exists(artc_marker)) exit;
    draw_debug_text(x, y+16, "state = " + string(artc_marker.state));
    draw_debug_text(x, y+32, "timer = " + string(artc_marker.state_timer));
    */

    //draw_debug_text(x, y, "allow_glitch_warp = " + string(allow_glitch_warp));
    //draw_debug_text(x, y+16, "nspec_cd = " + string(nspec_cd));

    //draw_debug_text(x, y+16, "image_index = " + string(image_index));

    //draw_debug_text(x, y, "last_damage = " + string(last_damage * 52));

    //draw_debug_text(x, y, "charge_attack = " + string(charge_attack));

    //draw_debug_text(x, y, "hud_anim_timer = " + string(hud_anim_timer));

    //if (instance_exists(artc_marker))
    //{
    //    draw_debug_text(x, y-16, "stilleto_offscreen = " + string(artc_marker.stilleto_offscreen));
    //    draw_debug_text(x, y, "view_x = " + string(view_get_xview()));
    //    draw_debug_text(x, y+16, "view_y = " + string(view_get_yview()));
    //    draw_debug_text(x, y+32, "offscreen (x,y) = " + string(artc_marker.offscreen_x_pos) + "," + string(artc_marker.offscreen_y_pos));
    //}

}



//vision hunt decree
if (vhd_effect)
{
    draw_debug_text(
        floor(view_get_xview()+144-get_match_setting(SET_TEAMS)*16),
        floor(view_get_yview()+80),
        get_match_setting(SET_TEAMS) ?
        "The Vision Hunt Decree is in force. Except " + string(get_player_name(player)) + "'s team, characters cannot use special moves..." :
        "The Vision Hunt Decree is in force. Except " + string(get_player_name(player)) + ", characters cannot use special moves..."
    );
    //it's supposed to put up the player's tagname, so people know who is immune, but i can't do that

    with (oPlayer) if (player != other.player && get_player_team(other.player) != get_player_team(player)) with (other)
    {
        shader_start();
        draw_sprite_ext(sprite_get("fx_runeO_disable"), get_gameplay_time()*0.2, other.x, other.y - other.char_height - 72, 2, 2, 0, c_white, 1);
        shader_end();
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
//debug_draw.gml

//draw_debug_text(x, y, "text = " + string(variable));

if (rumia_debug_view)
{
    with (oPlayer) if ("has_darkness" in self)
    {
        var _x = floor(view_get_xview()) + 128 * (player - 1) + 16;
        var _y = floor(view_get_yview() + 128);

        draw_debug_text(_x, _y + 16 * 0, "PLAYER " + string(player));

        if (self == other) 
        {
            draw_debug_text(_x, _y + 16 * 2, "active = " + string(has_darkness));
            draw_debug_text(_x, _y + 16 * 3, "id = " + string(darkness_id));
            draw_debug_text(_x, _y + 16 * 4, "owner = " + string(darkness_owner));
            draw_debug_text(_x, _y + 16 * 5, "self_dark = " + string(self_darkness));
            draw_debug_text(_x, _y + 16 * 6, "shield = " + string(dark_shield_hp));
            draw_debug_text(_x, _y + 16 * 7, "cooldown = " + string(darkness_cd));
            draw_debug_text(_x, _y + 16 * 8, "d_state = " + string(dark_state));
            draw_debug_text(_x, _y + 16 * 9, "d_time = " + string(dark_timer));
        }
        else if ("self_darkness" not in self)
        {
            draw_debug_text(_x, _y + 16 * 2, "active = " + string(has_darkness));
            draw_debug_text(_x, _y + 16 * 3, "owner = " + string(darkness_owner));
            draw_debug_text(_x, _y + 16 * 4, "d_state = " + string(dark_state));
            draw_debug_text(_x, _y + 16 * 5, "dark_blast = " + string(do_dark_blast));
        }
    }
}

if (hbox_view && can_graze)
{
    draw_set_alpha(0.2);
    draw_circle_color(graze_stats[0], graze_stats[1], graze_stats[2], c_aqua, c_aqua, false);
    draw_set_alpha(1);
}

//Put this above all the #defines in your script.
draw_colored_hitboxes();

//Put this at the very bottom of your script, with the rest of the #defines.
#define draw_colored_hitboxes
{
    if get_match_setting(SET_HITBOX_VIS) {
        var arrowspr = __kb_arrow_spr, hitboxes = [], arr_len, __kb_angle, angle;
        with (pHitBox) if (player_id == other && draw_colored) array_push(hitboxes,self)
        arr_len = array_length(hitboxes);
        if arr_len > 0 {
            selection_sort_priority(hitboxes);
            for (var i = 0; i < arr_len; i++) with hitboxes[i] {
                draw_sprite_ext(draw_spr, shape, x, y, image_xscale,image_yscale,0,col,0.5);
                __kb_angle = kb_angle == 361 ? 45 : kb_angle;
                angle = "dark_hit_angle" in other && attack == 0 && hbox_num == 1 ? other.dark_hit_angle : ((__kb_angle+90)*(hit_flipper==5?-1:1)*spr_dir)-90
                draw_sprite_ext(arrowspr, 0, x, y, 1,1,angle,-1,0.5);
            }
        }
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
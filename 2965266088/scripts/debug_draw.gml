//debug_draw.gml

//draw_debug_text(x, y, "text = " + string(variable));

if (rumia_debug_view)
{
    var _x = floor(view_get_xview()) + 16;
    var _y = floor(view_get_yview()) + 128;

    draw_debug_text(_x + 256 * (player-1), _y + 16 * 0, "d_state = " + string(dark_state));
    draw_debug_text(_x + 256 * (player-1), _y + 16 * 1, "d_time = " + string(dark_timer));
    draw_debug_text(_x + 256 * (player-1), _y + 16 * 2, "shield = " + string(dark_hp_cur));
    draw_debug_text(_x + 256 * (player-1), _y + 16 * 3, "cooldown = " + string(dark_cd) + " / " + string(dark_cd_set));
    draw_debug_text(_x + 256 * (player-1), _y + 16 * 4, "target / owner = " + string(dark_target) + " / " + string(dark_owner));

    draw_debug_text(_x + 256 * (player-1), _y + 16 * 5, "state = " + string(get_state_name(state)));
    draw_debug_text(_x + 256 * (player-1), _y + 16 * 6, "state_timer = " + string(state_timer));
}

//% view
if ((dark_state > -1 && dark_hp_cur > 0 || dark_hp_temp > 0) && (get_local_setting(SET_HUD_NAMES) || get_local_setting(SET_HUD_SIZE)))
{
    var checkID = dark_target == noone ? self : dark_target;
    var offset = "hud_offset" in checkID ? checkID.hud_offset : -8;
    text_draw(
        checkID.x,
        checkID.y - checkID.char_height - 78 + 16 * (get_player_name(checkID.player) == `P${checkID.player}` || playtest_active) - offset,
        `${dark_hp_temp > 0 ? floor(dark_hp_temp) : dark_hp_cur}%`, darkness_col, "fName", fa_center, 1, true, 1,
        !is_tas_alt ? hud_frame_col : make_color_rgb(static_colorO[6*4+0]*255, static_colorO[6*4+1]*255, static_colorO[6*4+2]*255)
    );
}

//horde enemies darkness drawing
shader_start();
if (dark_target != noone && "enemy_stage_article" in dark_target)
{
    if (dark_state > -1 && variable_instance_exists(dark_spr[dark_state], "spr"))
    {
        draw_sprite_ext(
            dark_spr[dark_state].spr,
            (dark_state != 3) ? dark_img : lerp(sprite_get_number(dark_spr[dark_state].spr)-1, 0, dark_timer/dark_spr[dark_state].anim_spd),
            floor(dark_target.x),
            floor(dark_target.y - dark_target.char_height / 1.75),
            2, 2,
            (dark_state != 3) ? 0 : point_direction(dark_target.x, dark_target.y, dark_target_prev.x, dark_target_prev.y),
            c_white, dark_alpha.cur
        );
    }
}
if (dark_target_prev != noone && "enemy_stage_article" in dark_target_prev && dark_state == 3) //transfer from previous darkness target
{
    draw_sprite_ext(
        dark_spr[dark_state].spr,
        dark_img,
        floor(dark_target_prev.x),
        floor(dark_target_prev.y - dark_target_prev.char_height / 1.75),
        2, 2,
        point_direction(dark_target_prev.x, dark_target_prev.y, dark_target.x, dark_target.y),
        c_white, dark_alpha.cur
    );
}
shader_end();

if (hbox_view && grazable_condition)
{
    draw_set_alpha(0.2);
    draw_circle_color(graze_pos[0], graze_pos[1], graze_dist_cur, c_aqua, c_aqua, false);
    draw_set_alpha(1);
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

#define text_draw
{
    var x = argument[0];
    var y = argument[1];
    var string = argument[2];
    var color = argument[3];
    var font = argument[4];
    var align = argument[5];
    var alpha = argument_count > 6 ? argument[6] : 1;
    var outline = argument_count > 7 ? argument[7] : false;
    var line_alpha = argument_count > 8 ? argument[8] : 1;
    var line_col = argument_count > 9 ? argument[9] : c_black;

    
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline && line_alpha > 0)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, line_col, line_col, line_col, line_col, line_alpha * alpha);
        }
    }

    draw_text_color(x, y, string, color, color, color, color, alpha);
}
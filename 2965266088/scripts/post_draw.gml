//post_draw.gml

shader_start();

//respawn "platform"
if (state == PS_RESPAWN || respawn_taunt > 0) draw_sprite_ext(sprite_get("fx_darkorb_loop"), game_time * plat_speed, x, y - 32, 2, 2, 0, c_white, 1);

//halloween costume
if (koa_hat) draw_sprite_ext(sprite_get("koakuma_idle"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 1);

///////////////////////////////////////////////// DARKNESS STUFF /////////////////////////////////////////////////

//% view
if (self_darkness && dark_shield_hp > 0 || is_attacking && attack == AT_DSPECIAL_2 && window >= 2 && floor(temp_dark_shield_hp) > 0)
{
    text_draw(
        x,
        y - char_height - 78 + 16 * (get_player_name(player) == `P${player}` || playtest_active) - hud_offset,
        `${self_darkness ? dark_shield_hp : floor(temp_dark_shield_hp)}%`, darkness_col, "fName", fa_center, 1, true, 1, hud_frame_col
    );
}

//cooldown effect
if (("draw_hud_type" not in self || draw_hud_type != "childe") && darkness_cd > 0)
{
    //30 frames before cooldown is done it starts flashing
    var cd_flash = darkness_cd < 30 ? (darkness_cd % 8 >= 4 ? 0 : 1) : 1;

    draw_sprite_ext(
        sprite_get("hud_player_arrow"), 0,
        x - 1, y - char_height - 24, 2, 2, 0,
        get_player_hud_color(player)/2, cd_flash == 0 ? 0 : 1
    );
}

//darkness orb
if (dark_state > -1 && dark_state < 4 && darkness_id != noone && darkness_owner == self)
{
    /*
    draw_sprite_ext(
        dark_sprite[dark_state][0],
        dark_image,
        floor(x),
        floor(y - char_height / 1.75),
        2, 2,
        (dark_state == 2 || dark_state == 3) && darkness_id != noone ? point_direction(x, y, darkness_id.x, darkness_id.y) : 0,
        c_white, 1
    );
    */

    //travel stretch thing
    if ((dark_state == 2 || dark_state == 3))
    {
        draw_sprite_ext(
            sprite_get("fx_darkorb_travel"),
            lerp(0, sprite_get_number(sprite_get("fx_darkorb_travel")), dark_timer/(dark_sprite[2][1]+1)),
            floor(lerp(x, darkness_id.x, 0.5)),
            floor(lerp(y - char_height / 1.75, darkness_id.y - darkness_id.char_height / 1.75, 0.5)),
            point_distance(x, y, darkness_id.x, darkness_id.y) / (128),
            2,
            dark_state == 2 ? point_direction(x, y, darkness_id.x, darkness_id.y) : point_direction(darkness_id.x, darkness_id.y, x, y),
            c_white, 1
        );
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if (is_attacking) switch (attack)
{
    case AT_JAB:
        spawn_base_dust(x, y + 4, "dash_start", spr_dir, 0, 5);
        if (was_free && !free) spawn_base_dust(x + hsp * 4, y, "land", spr_dir);
        break;
    case AT_UTILT:
        spawn_base_dust(x, y, "jump", spr_dir, 0, 2, window_end-1);
        break;
    case AT_FTILT:
        spawn_base_dust(x, y, "dash_start", spr_dir, 0, 1, window_end-1);
        break;
    case AT_DTILT:
        spawn_base_dust(x, y, "dash", spr_dir, 0, 1, window_end-1);
        break;
    case AT_DATTACK:
        spawn_base_dust(x - 32 * spr_dir, y - 24, "djump", 0, spr_dir ? 270 : 90, 2, 1);
        if (!free) spawn_base_dust(x + 16 * spr_dir + hsp * 2, y, "dash", -spr_dir, 0, 3, has_hit ? 7 : 11);
        break;
    case AT_USTRONG:
        spawn_base_dust(x, y, "land", 0, 0, 3, 1);
        break;
    case AT_FSTRONG:
        if (smash_charging) if (strong_charge % 15 == 0 && strong_charge < 30 || image_index < strong_charge/80 + 2) spawn_base_dust(x, y, "land", 0, 0, 2);
        spawn_base_dust(x, y, "dash", 0, 0, 3);
        spawn_base_dust(x + 32 * spr_dir, y, "dash", -spr_dir, 0, 3, 6);
        spawn_base_dust(x, y, "dash_start", 0, 0, 4, window_end-1);
        break;
    case AT_DSTRONG:
        spawn_base_dust(x - 16 * spr_dir, y, "dash_start", 0, 0, 4, 3);
        spawn_base_dust(x + 16 * spr_dir, y, "dash_start", -spr_dir, 0, 4, 3);
        break;
    case AT_NSPECIAL:
        if ((window == 1 && window_timer > window_end/2 || window == 2) && state_timer % 8 == 0)
        {
            spawn_base_dust(x, y + vsp * 2, free ? "djump_small" : "land");
        }

        if (free) spawn_base_dust(x - 32 * spr_dir, y - 24, "djump", 0, spr_dir ? 270 : 90, 3, 1);
        else if (window >= 3 && window <= 5 && state_timer % 3 == 0 && abs(hsp) > 5) spawn_base_dust(x, y, "dash_start");
        break;
    case AT_FSPECIAL:
        if (!free) spawn_base_dust(x - 16 * spr_dir, y, "dash", 0, 0, 3, 0);
        break;
    case AT_USPECIAL:
        if (!free)
        {
            spawn_base_dust(x, y, "jump", 0, 0, 3, 0);
            spawn_base_dust(x - 24 * spr_dir, y, "dash_start", 0, 0, 3, 0);
            spawn_base_dust(x + 24 * spr_dir, y, "dash_start", -spr_dir, 0, 3, 0);
        }
        else spawn_base_dust(x, y, "djump", 0, 0, 3, 0);
        break;
    case AT_DSPECIAL_2:
        if (floor(temp_dark_shield_hp) > 0)
        {
            shader_end();
            
            gpu_set_fog(1, darkness_col, 0, 1);
            draw_sprite_ext(sprite_index, -1, x, y, 2 * spr_dir, 2, 0, c_white, 0.5 * (state_timer % 8 > 4));
            gpu_set_fog(0, c_white, 0, 0);

            shader_start();
        }
        break;
    case AT_TAUNT:
        spawn_base_dust(x + 4 * spr_dir, y, "walk", 0, 0, 1, 7);
        break;
    case 2: //intro
        if (point_distance(x, 0, x + draw_x, 0) > 5 && draw_y == 0 && state_timer % 5 == 0) //slide
        {
            spawn_base_dust(x + draw_x + 48 * spr_dir, y, "dash", -spr_dir, 0);
        }

        //dark orb
        if (window == 1) draw_sprite_ext(sprite_get("fx_intro"), game_time, x + draw_x - 80 * spr_dir, y + draw_y - 98, 2 * spr_dir, 2, 0, c_white, 1);

        spawn_base_dust(x + draw_x + 16 * spr_dir, y, "land", 0, 0, 2);
        break;
    case 49: //final strong
        draw_set_alpha(fade_to_black);
        rectDraw(-100, -100, room_width + 100, room_height + 100, c_black);
        draw_set_alpha(1);
        break;
}

shader_end();

if (state == PS_TEMP_PRATFALL)
{
    draw_sprite_ext(
        sprite_index, -1, x, y, 2 * spr_dir, 2, spr_angle, c_black,
        state_timer >= temp_prat_end ? ((temp_prat_end+temp_prat_dissolve_time-state_timer) / temp_prat_dissolve_time) * 0.5 : 0.5
    );
}

//written by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
//text_draw(x, y, string, color, font, align, alpha, outline, line_alpha, line_col)
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
//written by supersonic, modified by bar-kun
#define spawn_base_dust
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    var angle = argument_count > 4 ? argument[4] : 0;
    var win = argument_count > 5 ? argument[5] : -10;
    var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}
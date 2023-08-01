//post_draw.gml
//we use this script to draw over the player character, both text and sprites can be used here

shader_start(); //everything between this and shader_end(); will be affected by alts

//respawn platform - check if the player is either in the respawn state or taunting while in the respawn state
if (state == PS_RESPAWN || respawn_taunt > 0) draw_sprite_ext(sprite_get("plat_post"), game_time * plat_speed, x, y, small_sprites + 1, small_sprites + 1, 0, c_white, 1);

shader_end();

if (is_attacking) switch (attack)
{
    //dust effects (check the spawn_base_dust function for more info on the expandtion i added - bar-kun)
    case AT_JAB:
        spawn_base_dust(x - 8 * spr_dir, y, "dash", 0, 0, 4, 4); 
        spawn_base_dust(x + 32 * spr_dir, y, "dash_start", 0, 0, 7, 4);
        break;
    case AT_FTILT:
        spawn_base_dust(x - 16 * spr_dir, y, "dash", 0, 0, 1, 7);
        spawn_base_dust(x, y, "dash_start", 0, 0, 8, 1);
        break;
    case AT_DTILT:
        spawn_base_dust(x + 32 * spr_dir, y, "dash_start", 0, 0, 1, 0);
        break;
    case AT_USTRONG:
        spawn_base_dust(x, y, "jump", 0, 0, 3, 3);
        break;
    case AT_FSTRONG:
        spawn_base_dust(x - 8 * spr_dir, y, "dash_start", 0, 0, 3, 0);
        break;
    case AT_DSTRONG:
        spawn_base_dust(x + 32 * spr_dir, y, "dattack", -spr_dir, 0, 4);
        spawn_base_dust(x - 32 * spr_dir, y, "dattack", spr_dir, 0, 4);
        break;
    case AT_NSPECIAL:
        //this is a little complex so here's a little rundown:
        //we first check the charge windows (windows 2-4), every multiples of 10 on the state timer, if we are not in the delay time and if we hold down special
        //then on the effects we change it so:
        //  - the effect is "bigger" based on charge level
        //  - there's ground and air variations for the dust (ground: walk -> dash -> dash_start | air: nothing -> djump_small -> djump)
        //  - the X offsets (we multiply the air version by 2 - that's what the [!free + 1] is for)

        if (window <= 4 && window > 1 && state_timer % 10 == 0 && nspec_shoot_delay_time <= nspec_shoot_delay_time_max && special_down)
        {
            if (nspec_charge >= 3) spawn_base_dust(x - (16 * spr_dir) * (!free + 1), y, free ? "djump" : "dash_start", 0, 0);
            else if (nspec_charge >= 2) spawn_base_dust(x - (16 * spr_dir) * (!free + 1), y, free ? "djump_small" : "dash", 0, 0);
            else if (nspec_charge >= 1 && !free) spawn_base_dust(x - 32 * spr_dir, y, "walk", 0, 0);
        }
        break;
    //fspec indicator + fspec dusts
    case AT_FSPECIAL:
        shader_start(); //this makes it capture the pallete changes
        if (is_attacking && attack == AT_FSPECIAL)
        {
            //draw indicator
			if (window == 1 && window_timer > 0 || window > 1 && window < 4)
            {
                draw_sprite_ext(
                    sprite_get("fx_fspec_crosshair"),
                    0,
                    fspec_tether_pos[0], //these are the recorded coordinates of fspec, stored in an array
                    fspec_tether_pos[1], //0 is X and 1 is Y, we also use them later for the tether "rope" distance
                    2,
                    2,
                    game_time * 5, //rotates indicator based on the game_time, so it always rotates
                    c_white,
                    1
                );
            }
            if (window == 4) //draw tether "rope"
            {
                //the point distance stretches the tether "rope" sprite according to the distance and the width of the sprite
                draw_sprite_ext(
                    sprite_get("fx_fspec_tether"),
                    window_timer * 0.4,
                    x+48*spr_dir,
                    y-char_height/2,
                    point_distance(x+48*spr_dir, y-char_height/2, fspec_tether_pos[0], fspec_tether_pos[1]) / sprite_get_width(sprite_get("fx_fspec_tether")),
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, fspec_tether_pos[0], fspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    1);
            }
            spawn_base_dust(x - 16, y - char_height / 2, "djump", 0, (90 + fspec_angle * fspec_aim) * -spr_dir, 6, 0);
		}
        shader_end();
        break;
}

if (get_match_setting(SET_RUNES))
{
    //spawns dusts on wall when sliding
    if (has_rune("A")) if (clinging && wall_slide_enabled && state_timer % 6 == 0) spawn_base_dust(x-20*spr_dir, y-char_height/2, "walk", spr_dir, spr_dir ? 270 : 90);
}



//particle system
for(var i = 0; i < array_length(fx_part); i++)
{
    var cur_part = fx_part[i];

    if (cur_part.shader) shader_start();
    if (cur_part.layer == -1)
    {
        gpu_set_fog(cur_part.filled, cur_part.color, 0, 1);
        draw_sprite_ext(
            cur_part.spr,
            cur_part.img,
            cur_part.xpos,
            cur_part.ypos,
            cur_part.xscale * cur_part.dir,
            cur_part.yscale,
            cur_part.angle,
            cur_part.color,
            cur_part.alpha
        )
        gpu_set_fog(false, cur_part.color, 0, 0);
    }
    if (cur_part.shader) shader_end();
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
//post_draw

//finding the center
//with (oPlayer) rectDraw(x, y, 1, 1, c_red);

//dust effects
if (!hitpause && is_attacking) switch (attack)
{
    case AT_JAB:
        switch (window)
        {
            case 8:
                if (window_timer == 1) spawn_base_dust(x, y, "dash_start", spr_dir);
                if (window_timer == 6) spawn_base_dust(x + 32 * spr_dir, y, "dash", -spr_dir);
                break;
            case 10:
                if (window_timer == window_end-1) spawn_base_dust(x, y, "jump", spr_dir);
                break;
            case 14:
                if (window_timer == 1) spawn_base_dust(x, y, "land", spr_dir);
                break;
        }
        break;
    case AT_FTILT:
        if (window_timer == 0) switch (window)
        {
            case 1:
                spawn_base_dust(x, y, "dash", spr_dir);
                break;
            case 2:
                spawn_base_dust(x + 16 * spr_dir, y, "walk", -spr_dir);
                break;
        }
        break;
    case AT_FSTRONG:
        if (window_timer == 1) switch (window)
        {
            case 4:
                spawn_base_dust(x + 48 * spr_dir, y, "dash_start", -spr_dir);
                break;
            case 5:
                spawn_base_dust(x - 32 * spr_dir, y, "dash_start", spr_dir);
                break;
        }
        break;
    case AT_DAIR:
        if ((window == 2 || window == 1) && !free)
        {
            spawn_base_dust(x, y, "land");
            spawn_base_dust(x + 16 * spr_dir, y, "dash_start", -spr_dir);
            spawn_base_dust(x + 16 * -spr_dir, y, "dash_start", spr_dir);
        }
        break;
    case AT_USPECIAL:
        if (window == 2 && window_timer == window_end-1 && uspec_count == 0)
        {
            spawn_base_dust(x, y, free?"doublejump":"jump");
        }
        break;
    case AT_FSPECIAL:
        if (window == 1 && window_timer == 0)
        {
            spawn_base_dust(x, y, free?"doublejump":"dash_start", spr_dir, free?-30*spr_dir:0);
        }
        break;
    case AT_DSPECIAL:
        if (!free && window == 3 && window_timer == 0)
        {
            spawn_base_dust(x, y, "dash_start", -spr_dir);
        }
        break;
    case 49: //final smash
        if (window_timer == 0)
        {
            if (window == 3) spawn_base_dust(x, y, "jump");
            if (window == 5) spawn_base_dust(x, y, "land");
        }
        break;
}

//misc effects
shader_start();
if (is_attacking) switch (attack)
{
    case AT_JAB:
        if (window == 15 && window_timer < 12) draw_sprite_ext(sprite_get("fx_jab5"), window_timer/2, x, y, 2*spr_dir, 2, 0, c_white, 1);
        break;
    case AT_DAIR:
        if (window == 2) draw_sprite_ext(sprite_get("fx_dair_air"), window_timer/2, x+27*spr_dir, y+4, 2, dair_fx_y_scale, 0, c_white, 1);
        break;
    case 49: //final smash
        //thank you Pejota for helping me with the wave effect!
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("fx_starward_sword_aoe_wave"), floor(state_timer*0.25), x, y-32, fs_ease_scale, fs_ease_scale, 0, c_white, fs_alpha*0.2);
        draw_sprite_ext(sprite_get("fx_starward_sword_aoe_wave"), floor(state_timer*0.25), x, y-32, fs_ease_scale, fs_ease_scale, 180, c_white, fs_alpha*0.2);
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sprite_get("fx_starward_sword_aoe"), floor(state_timer*0.25), x, y-32, fs_ease_scale, fs_ease_scale, 0, c_white, fs_alpha);

        //clone placeholders
        if (fs_cue_slashes && fs_slash_timer >= 9) draw_sprite_ext(sprite_get("fx_starward_sword_clones"), fs_afterimage_timer*0.8, x, y-32, 2, 2, 0, c_white, 1);
        break;
}

//halloween qiqi hat
if (qiqi_hat) draw_sprite_ext(sprite_get("qiqi_idle"), image_index, x+1*spr_dir, y-66, 2*spr_dir, 2, 0, c_white, 1);
shader_end();

//if (is_attacking && attack == AT_TAUNT_2 && window == 2)
//{
//    if (playing_lyre_timer < 60*3)
//    {
//        draw_debug_text(x-114, y, "use numkeys 0-9, decimal point,")
//        draw_debug_text(x-114, y+16, "multiply and division keys to")
//        draw_debug_text(x-56, y+32, "play the lyre")
//    }
//    
//}

var hud_x = floor(x)+48;
var hud_y = floor(y)-char_height-24;
//timer, only shows when the icon is the normal icon
if (!debug_keqing)
{
    if (nspec_cd > 0)
    {
        //background circle
        draw_sprite_ext(sprite_get("hud_skill_bg"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.3);
    
        //extra circle thingi
        draw_sprite_ext(sprite_get("hud_skill_used"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.3);
        
        //icon
        draw_sprite_ext(sprite_get("hud_skill_icon"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.4);
    
        //timer
        draw_sprite_ext(sprite_get("hud_skill_timer"), (max(nspec_cd/12)-300)*-1, hud_x, hud_y, 2, 2, 0, c_white, 0.8);
        draw_debug_text(hud_x-16, hud_y-6, string( string_format( floor(nspec_cd/60*10)/10, 2, 1) ));
    
        //should only show one fraction digit, not 2. it also should show a .0 when it's actually round
        //floor(nspec_cd/60*10)/10     <- this code is the closest thing i got to it
        //nspec_cd/60                   <- this is a simpler alternative
    }
    
    if (hud_anim_start)
    {
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("hud_skill_flash"), 0, hud_x, hud_y, hud_anim_timer/2/5+1, hud_anim_timer/2/5+1, 0, c_white, 1-hud_anim_timer/10);
        gpu_set_blendmode(bm_normal);
    }
}



#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);
    
    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}
//written by supersonic, angle variable added by bar-kun
#define spawn_base_dust
{
    /// spawn_base_dust(x, y, name, dir = 0)
    /// spawn_base_dust(x, y, name, ?dir, ?angle)
    //This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    var angle = argument_count > 4 ? argument[4] : 0;

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
    }
    var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if (dir != 0) newdust.spr_dir = dir; //set the spr_dir
    newdust.draw_angle = angle; //sets the angle of the dust sprite
    return newdust;
}
//post_draw.gml
//we use this script to draw over the player character, both text and sprites can be used here
shader_start(); //everything between this and shader_end(); will be affected by alts

//respawn platform - check if the player is either in the respawn state or taunting while in the respawn state
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_post"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);
}

// Draw ability icons
if (stored_strong_charge >= strong_full_charge_time) {
    draw_sprite_ext(sprite_get("hud_icons"),
                    0, x - 25, y - char_height - 8,
                    1, 1, 0, c_white, 1);
}
if (special_charge >= special_full_charge_time) {
    draw_sprite_ext(sprite_get("hud_icons"),
                    1, x + 25, y - char_height - 8,
                    1, 1, 0, c_white, 1);
}
draw_indicator_arrow = false;
indicator_arrow_index = 3;
if (is_attacking) {
	switch (attack) {
		case AT_FSTRONG :
			if (window == fstrong_charging_window) || (window == fstrong_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 1;
			}
			break;
		case AT_USTRONG :
			if (window == ustrong_charging_window) || (window == ustrong_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 0;
			}
			break;
		case AT_DSTRONG :
			if (window == dstrong_charging_window) || (window == dstrong_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 2;
			}
			break;
		case AT_NSPECIAL :
			if (window == nspecial_charging_window) || (window == nspecial_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 3;
			}
			break;
		case AT_NSPECIAL_AIR :
			if (window == nspecial_air_charging_window) || (window == nspecial_air_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 3;
			}
			break;
		case AT_FSPECIAL :
			if (window == fspecial_charging_window) || (window == fspecial_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 1;
			}
			break;
		case AT_DSPECIAL :
			if (window == dspecial_charging_window) || (window == dspecial_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 2;
			}
			break;
		case AT_USPECIAL_GROUND :
			if (window == uspecial_charging_window) || (window == uspecial_bonus_charging_window) {
				draw_indicator_arrow = true;
				indicator_arrow_index = 0;
			}
			break;
		default :
			break;
	}
}
if (draw_indicator_arrow) {
    draw_sprite_ext(sprite_get("indicator_arrow"),
                    indicator_arrow_index, x, y - char_height - 8,
                    spr_dir, 1, 0, c_white, 1);
}


shader_end();

// Flash when the strong or special is fully charged
if (charge_flash_cooldown > 0) {
	gpu_set_fog(true, c_fire, 0, 1);
	draw_sprite_ext(sprite_index, image_index,
					x, y, spr_dir * 2, 2, 0,
					c_white, charge_flash_cooldown / charge_flash_cooldown_max);
	gpu_set_fog(false, c_white, 0, 1);
}
// Flash when you can cancel dspecial
if (white_flash_cooldown > 0) {
	gpu_set_fog(true, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index,
					x, y, spr_dir * 2, 2, 0,
					c_white, white_flash_cooldown / charge_flash_cooldown_max);
	gpu_set_fog(false, c_white, 0, 1);
}

//uair visual 
if (attack == AT_UAIR && state == PS_ATTACK_AIR && window == 2 && window_timer == 2)
{
spawn_hit_fx( x, y, uairvfx)
}

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
    /*case AT_NSPECIAL:
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
        break;*/
    //fspec indicator + fspec dusts
    /*case AT_FSPECIAL:
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
        break;*/
}

if (get_match_setting(SET_RUNES))
{
    //spawns dusts on wall when sliding
    if (has_rune("A")) if (clinging && wall_slide_enabled && state_timer % 6 == 0) spawn_base_dust(x-20*spr_dir, y-char_height/2, "walk", spr_dir, 90);
}


//written by muno
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

//written by supersonic, modified by bar-kun
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
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


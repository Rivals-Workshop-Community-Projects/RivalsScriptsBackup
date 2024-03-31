//post_draw.gml

//chao color compatibility
if (instance_exists(pet_obj) && "chao_type" in pet_obj)
{
    for (var i = 0; i < array_length(pet_obj.chao_colO); i++)
    {
        if (i % 4 < 3) static_colorO[i] = pet_obj.chao_colO[i]; //RGB
        else static_colorO[i] = 1; //controls transperency
    }
    for (var i = 0; i < array_length(pet_obj.chao_colB); i++) static_colorB[i] = pet_obj.chao_colB[i];
}

shader_start();

if (is_attacking) switch (attack)
{
    case AT_NAIR:
        if (play_nair_fx) draw_sprite_ext(sprite_get("fx_nairshield"), nair_fx_time, x, y, 2 * spr_dir, 2, 0, c_white, 1);
        break;
    case AT_USPECIAL:
        //changes colors whenever out on sonic's vfx
        if (can_spawn_trick_ring && image_index < 6)
        {
            shader_end();
            //shader manipulation
            rainbow_ring_shader = true;
            user_event(15);

            //drawing ring
            shader_start();
            draw_sprite_ext(
                sprite_get("fx_uspec_ringtoss"),
                image_index + (6 * free) + (12 * uses_super_sprites),
                x, y,
                2 * spr_dir, 2,
                0, c_white, 1
            );
            shader_end();
            shader_start();

            rainbow_ring_shader = false;
            user_event(15);
        }
        break;
}

if (runeC_spinjump && state == PS_FIRST_JUMP) draw_sprite_ext(sprite_get("fx_runeC_ball"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 0.3);

shader_end();

//rainbow ring color
trick_ring_hue += 6;

//tornado side dust
with (pHitBox) if (player_id == other && attack == AT_DSTRONG && hbox_num == 2 && hitbox_timer % 8 == 0 && hitbox_timer <= length - 30) with (other)
{
    spawn_base_dust(dstrong_tornado_xscale[0] + 32 * -other.spr_dir, other.y + 44, "dash_start", -other.spr_dir);
    spawn_base_dust(dstrong_tornado_xscale[1] + 32 * other.spr_dir, other.y + 44, "dash_start", other.spr_dir);
}

//tornado dust spawn on enemy like those rings on sonic heroes when players are shot up from the tornados
with (oPlayer) if (hit_player_obj == other)
{
    if (state == PS_HITSTUN && state_timer % 5 == 0 && vsp < -2 && orig_knock > 13 && last_player == other.player && last_attack == AT_DSTRONG && last_hbox_num == 2)
    {
        with (other) spawn_base_dust(other.x, other.y, "djump")
    }
}

if (is_attacking && !hitpause) switch (attack)
{
    case 2: //intro
        //plane
        draw_sprite_ext(
            sprite_get("intro_plane"),
            intro_plane_img + 8 * (alt_cur == 14),
            intro_plane_x,
            intro_plane_y,
            2 * spr_dir, 2, 0, c_white, 1
        );

        //sonic on plane
        if (window == 1 && alt_cur != 14)
        {
            shader_start();
            draw_sprite_ext(
                sprite_get("intro_plane_sonic"),
                intro_plane_img,
                intro_plane_x,
                intro_plane_y,
                2 * spr_dir, 2, 0, c_white, 1
            );
            shader_end();
        }

        spawn_base_dust(x + draw_x, y, "land", 0, 0, 2, window_end-1)
        spawn_base_dust(x + 32 * spr_dir, y, "dash", -spr_dir, 0, 4, 7)
        spawn_base_dust(x, y, "walk", 0, 0, 6, 0)
        spawn_base_dust(x + 24 * spr_dir, y, "walk", 0, 0, 7, window_end-1)
        spawn_base_dust(x - 24 * spr_dir, y, "walk", 0, 0, 7, window_end-1)
        break;
    case AT_JAB:
        spawn_base_dust(x, y, "dash", 0, 0, 1, 3);
        spawn_base_dust(x, y, "dash_start", 0, 0, 4, 3);
        spawn_base_dust(x, y, "jump", 0, 0, 7, 5);
        spawn_base_dust(x, y, "land", 0, 0, 11);
        break;
    case AT_UTILT:
        spawn_base_dust(x - 16 * spr_dir, y, "walk", 0, 0, 1, 5);
        spawn_base_dust(x, y, "jump", 0, 0, 5, 5);
        spawn_base_dust(x, y, "land", 0, 0, 8);
        break;
    case AT_FTILT:
        spawn_base_dust(x, y, "dash_start", 0, 0, 1, 4);
        break;
    case AT_DTILT:
        spawn_base_dust(x + 80 * spr_dir, y, "dash", -spr_dir, 0, 1, 3);
        break;
    case AT_DATTACK:
        if (!free)
        {
            spawn_base_dust(x, y, "land", 0, 0, 5, 1);
            if (dattack_cancel_time > 1)
            {
                spawn_base_dust(x - 16, y, "dattack", 1, 0, 5, 5);
                spawn_base_dust(x + 16, y, "dattack", -1, 0, 5, 5);
            }
        }
        break;
    case AT_USTRONG:
        spawn_base_dust(x, y, "jump", 0, 0, 3, 3);
        break;
    case AT_FSTRONG:
        spawn_base_dust(x - 32 * spr_dir, y, "dash", 0, 0, 3, 0);
        spawn_base_dust(x + 48 * spr_dir, y, "dash_start", -spr_dir, 0, 3, 3);
        break;
    case AT_DSTRONG:
        if (window == 2 && strong_charge % 8 == 0)
        {
            spawn_base_dust(
                x - 16 * spr_dir * (strong_charge <= 20),
                y,
                strong_charge <= 20 ? "dash" : "dash_start"
            );
        }
        spawn_base_dust(x - 16 * spr_dir, y, "dattack", 0, 0, 3, 4);

        if ((window == 4 || window == 5) && state_timer % 2 == 0 && sign(hsp) != 0) spawn_base_dust(x - 32 * sign(hsp), y, "dash", sign(hsp));
        break;
    case AT_FSPECIAL:
        if (!free && (window == 2 || window == 3) && state_timer % 5 == 0) spawn_base_dust(x, y, window == 3 ? "dash_start" : "dash", sign(hsp));
        spawn_base_dust(x, y - 32, "djump", 0, spr_dir ? 300 : 60, 4, 0);
        if ((window == 8 || window == 9) && state_timer % 5 == 0)
        {
            spawn_base_dust(x, y - 24 - lengthdir_y(10, point_direction(0, 0, hsp, vsp)), "djump", 1, point_direction(0, 0, hsp, vsp) - 90);
        }
        
        if (abs(hsp) > 0.75) spawn_base_dust(x + 32 * spr_dir, y, "dash", -spr_dir, 0, 11, 0);
        break;
    case AT_DSPECIAL:
        spawn_base_dust(x, y - 8, "djump_small", 0, 0, 1, 0);
        spawn_base_dust(x, y, "jump", 0, 0, 1, 0);

        if (dspec_jumps > 0) spawn_base_dust(x, y - 64, "djump", 0, 180, 2, 7);
        if (!free)
        {
            spawn_base_dust(x, y, "land", 0, 0, 4, 1);
            if (dspec_jumps >= dspec_jumps_max)
            {
                spawn_base_dust(x + 16 * spr_dir, y, "dash_start", -spr_dir, 0, 4, 3);
                spawn_base_dust(x - 16 * spr_dir, y, "dash_start", 0, 0, 4, 3);
            }
        }
        break;
    case 49: //final smash - sonic overdrive
        spawn_base_dust(x, y, "land", 0, 0, 6, 0);
        spawn_base_dust(x + 32 * spr_dir, y, "dash_start", -1, 0, 6, 4);
        spawn_base_dust(x - 32 * spr_dir, y, "dash_start", 1, 0, 6, 4);
        spawn_base_dust(x + 96 * spr_dir, y, "dash", -1, 0, 6, 7);
        spawn_base_dust(x - 96 * spr_dir, y, "dash", 1, 0, 6, 7);
        break;
}
if (state == PS_DASH_STOP && state_timer == 0) spawn_base_dust(x + 32 * spr_dir, y, "dattack", -spr_dir);

//waiting notification
if (sprite_index == sprite_get("wait") && image_index >= 36 && image_index < 41)
{
    if (match_time[0] <= 99)
    {
        draw_debug_text(
            x - 18 + (spr_dir == 1 ? 8 : -6) + 4 * (match_time[0] < 10),
            y - 86,
            string(match_time[0]) + ((match_time[1]) < 10 ? ":0" : ":") +
            string(match_time[1])
        );
    }
    else //if sonic is waiting for more than 99 minutes he will put ... instead
    {
        draw_debug_text(
            x - 4 * spr_dir,
            y - 86,
            ". . ."
        );
    }
}

//final smash effects
if (is_attacking && attack == 49 && window == 5) draw_sprite_ext(sprite_get("fx_fs_ball"), state_timer * 0.5, x, y, 2 * spr_dir, 2, 0, c_white, 0.8);
with (oPlayer) if (other.fs_trapped_player[player]) with (other) //stun
{
    draw_sprite_ext(sprite_get("fx_fs_stun"), state_timer/2 + (10 * other.player), other.x, floor(other.y - char_height / 1.75), 2, 2, 0, c_white, 1);
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
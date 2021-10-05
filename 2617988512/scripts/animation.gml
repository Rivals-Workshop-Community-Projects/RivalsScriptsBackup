//animation.gml

if (state != PS_ATTACK_AIR || attack != AT_USPECIAL)
{
        draw_y = 0;
        spr_angle = 0;
        sprite_change_offset("uspecial", 96/2, 126/2, true);
} 

switch (state)
{
    case PS_CROUCH:
    {
        if (can_crawl)
        {
            if (left_down && spr_dir = -1 || right_down && spr_dir = 1)
            {
                if (frame_update = 6 && crouch_frame >= 5)
                {
                crouch_frame = 0;
                frame_update = 0; 
                }
                else if (frame_update = 6 && crouch_frame < 5)
                {
                crouch_frame++;
                frame_update = 0; 
                }
                else frame_update++;
                if (crouch_frame = 1 && frame_update = 0 || crouch_frame = 4 && frame_update = 0) spawn_base_dust(x-12*spr_dir, y, "walk", spr_dir);
            }
            if (left_down && spr_dir = 1 || right_down && spr_dir = -1)
            {
                if (frame_update = 6 && crouch_frame <= 0)
                {
                crouch_frame = 5;
                frame_update = 0; 
                }
                else if (frame_update = 6 && crouch_frame > 0)
                {
                crouch_frame--;
                frame_update = 0; 
                }
                else frame_update++;
                if (crouch_frame = 1 && frame_update = 0 || crouch_frame = 4 && frame_update = 0) spawn_base_dust(x-12*-spr_dir, y, "walk", -spr_dir);
            }
            if (!left_down && !right_down)
            {
            frame_update = 0; 
            }
            
        } 
        if (image_index >= 2 && image_index <= 8 && down_down)
        {
            can_crawl = true;
            image_index = crouch_frame + 2;
            crouch_sfx_played = false;
        }
        else
        {
            can_crawl = false;
        }
        if (image_index = 1 && crouch_sfx_played = false)
        {
        crouch_sfx_played = true;
        sound_play(sound_get("bcm_crouch"));
        }
        if (image_index = 10 && crouch_sfx_played = false)
        {
        crouch_sfx_played = true;
        sound_play(sound_get("bcm_uncrouch"));
        }
    }
    break;

    //case PS_PRATLAND:
    //    draw_y = 0;
    //    spr_angle = 0;
    //    sprite_change_offset("uspecial", 96/2, 126/2, true);
    //break;

    case PS_ATTACK_AIR:
        if (attack == AT_USPECIAL)
        {
            if (image_index > 0 && image_index < 7)
            {
                draw_y = -32;
                sprite_change_offset("uspecial", 96/2, 96/2, true);
            }
            else
            {
                draw_y = 0;
                sprite_change_offset("uspecial", 96/2, 126/2, true);
            }
            if (window = 1)
            {
                draw_y = 0;
                sprite_change_offset("uspecial", 96/2, 126/2, true);
            }
        }
    break;
}

if (state != PS_CROUCH) 
{ 
    crouch_frame = 0;
    crouch_sfx_played = false;
}

#define spawn_base_dust
var dlen;
var dfx;
var dfg;
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg; 
newdust.dust_color = dust_color;
if dir != 0 newdust.spr_dir = dir; 
return newdust;
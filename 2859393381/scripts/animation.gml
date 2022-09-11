//animation.gml

if (state != PS_ATTACK_AIR || attack != AT_USPECIAL)
{
        draw_y = 0;
        spr_angle = 0;
        sprite_change_offset("uspecial", 32,  63, true);
} 

switch(state)
{
    case PS_ATTACK_AIR:
        if (attack == AT_USPECIAL)
        {
            if ((window = 1 && window_timer != 5) || window = 4 || (window = 3 && window_timer >= 24))
            {
                draw_y = 0;
                sprite_change_offset("uspecial", 32, 63, true);
                spr_angle = 0;
            }
            else
            {
                draw_y = -32;
                sprite_change_offset("uspecial", 32, 47, true);
            }
        }
    break;
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
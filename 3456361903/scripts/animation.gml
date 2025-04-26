//Animation

//this is a superfluous way of making sure you don't see the giant white X during testing.
//remove this and the comment once you have every sprite done.
if sprite_index == 4145
{
    sprite_index = sprite_get("idle");
}

//intro anim template, remember post_draw and pre_draw can also add cool effects, 
//this is strip-based and only animates the character themselves
if (state == PS_SPAWN) && state_timer <= 13/0.3 //12 is the amount of frames on the intro animation strip
{
    sprite_index = sprite_get("intro");
    image_index = maioeseeanimframes;
    if (state_timer == 10) {
        sound_play(sound_get("smb2_pickup"));
        spawn_hit_fx(x, y-64, HFX_ELL_STEAM_HIT)
    }
    else if (state_timer == 20) sound_play(sound_get("jamb_walljump"));
    else if (maioeseeanimframes == 12) spawn_base_dust(x, y, "land", spr_dir);
    
    char_height = 500;
    
    //speed at which the intro animates
    maioeseeanimframes+= 0.3;//if you change this, change the number in the if statement regarding state_timer
} else {
    char_height = 36;
}

switch (state){
    case PS_WALL_JUMP:
        if clinging { 
            image_index = 0; 
            clingtime = state_timer 
        } else {
            image_index = ((state_timer-clingtime)/walljump_time)*image_number
            if (state_timer-clingtime == 1) {
                sound_play(sound_get("jamb_walljump"));
            }
        }
    break;
}

//when you want to use animation.gml during attacks, you need to first check if youre in an attack state
//otherwise these frames would appear outside of attack states
/*if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
{
    switch (attack)
    {
        case AT_USPECIAL:
        {
            
        }break;
    }
}*/

/* Specific Sprites for Newcomer States
if state == PS_BURIED{sprite_index = sprite_get("[Desired Sprite Strip]");}
if state == PS_CRYSTALIZED{sprite_index = sprite_get("Desired Sprite Strip");}
if state == PS_FLASHED{sprite_index = sprite_get("Desired Sprite Strip");}
*/

// spawn_base_dust made by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
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
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
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
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;


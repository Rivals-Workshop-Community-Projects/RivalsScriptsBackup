//animation.gml

switch (attack)
{
    case AT_DAIR:
        if (has_hit && hitpause)
        {
            image_index = 16;
        }
    break;
}

switch (state)
{
    case PS_WALL_JUMP:
        if (jump_down && clinging)
        {
            image_index = min(floor(state_timer/3), 3);
            walljump_jump_time = 0;
        }
        if (!clinging && state_timer > 1)
        {
            if (walljump_jump_time = 0)
            { 
                walljump_jump_time = state_timer;
                spawn_base_dust(x-1*spr_dir, y, "djump", spr_dir);
            }
            image_index = clamp(floor((state_timer-walljump_jump_time)/29*11)+4, 0, 14);
        }
    break;

    case PS_DOUBLE_JUMP:
        if (state_timer = 1)
        {
            sound_play(asset_get("sfx_ori_spirit_flame_1"), 0, 0, 0.3)
        }
    break;

    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack = AT_TAUNT)
        {
            image_index = taunt_index;
            char_height = 64;
        }
        if (attack = AT_NSPECIAL && window = 2)
        {
            spr_dir = nspecial_dir;
        }
    break;


    case PS_WALK_TURN:
        if (breakdance_timer >= 60)
        {
            if (breakdance_timer = 60)
            {
                breakdance_dir = spr_dir;
                sound_play(sound_get("sfx_breakdance"));
                sound_play(sound_get("sfx_breakdancemusic"), true);
                breakdance_box_vsp = -7; 
                breakdance_box_y = -1; 
                breakdance_box_x = x; 
            }
            else
            {
                spr_dir = breakdance_dir;

                if (breakdance_box_y < 0)
                {
                    breakdance_box_vsp += 0.7;
                    breakdance_box_y += breakdance_box_vsp;
                }
                if (breakdance_box_y >= 0)
                {
                    breakdance_box_vsp = 0;
                    breakdance_box_y = 0;
                }
                  
            }
            sprite_index = sprite_get("epic_breakdance");
            image_index = (breakdance_timer-60)/3;
        }
    break;
}


//hurtbox drawing
switch (state){
     case PS_DASH:
     case PS_DASH_TURN:
     case PS_DASH_START:
	 hurtboxID.sprite_index = sprite_get("dashbox");
       if (dash_sound = noone) dash_sound = sound_play(sound_get("sfx_mach2"), true);
     break;

     case PS_DASH_STOP:
     case PS_IDLE:
     case PS_WALK:
     case PS_WALK_TURN:
     case PS_JUMPSQUAT:
     case PS_LAND:
     case PS_IDLE_AIR:
     case PS_FIRST_JUMP:
     case PS_DOUBLE_JUMP:
     case PS_HITSTUN:
     case PS_HITSTUN_LAND:
     case PS_TUMBLE:
     case PS_WRAPPED:
     case PS_FROZEN:
     case PS_PRATFALL:
     case PS_PRATLAND:
     case PS_LANDING_LAG:
     case PS_WALL_JUMP:
     case PS_PARRY_START:
	 hurtboxID.sprite_index = hurtbox_spr;
       if (dash_sound != noone) 
       {
           sound_stop(dash_sound);
           dash_sound = noone;
       }
     case PS_ATTACK_GROUND:
     case PS_ATTACK_AIR:
       if (dash_sound != noone) 
       {
           sound_stop(dash_sound);
           dash_sound = noone;
       }
     break;

     case PS_CROUCH:
       if (dash_sound != noone) 
       {
           sound_stop(dash_sound);
           dash_sound = noone;
       }

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
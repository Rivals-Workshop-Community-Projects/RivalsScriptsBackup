
// Unown animation overrides
var cur_form_data = unown_form_data[unown_current_form];
var cur_form_sprites = cur_form_data.right_sprites;

if (spr_dir < 0) && (cur_form_data.left_sprites != noone)
{
    //asymmetry case
    cur_form_sprites = cur_form_data.left_sprites;
}

draw_y = 0; //animated below so reset here

switch (state)
{
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    {
        spr_dir = 1; //forced direction: Unown attacks are never flipped
        unown_turning_timer = unown_turning_time_per_frame + 1;
        
//=============================================================================
        if (attack == UNOWN_ATK.A) && !hitpause
        && (window == 2 && window_timer == 0)
        {
            spawn_hit_fx( x, y-4, 141 );
        }
//=============================================================================
        else if (attack == UNOWN_ATK.C) && !hitpause
             && (window == 2 && window_timer == 0)
        {
            spawn_hit_fx( x+24, y-4, 125 );
            sound_play(asset_get("sfx_ori_energyhit_heavy"));
        }
//=============================================================================
        else if (attack == UNOWN_ATK.D) && (window == 2)
        {
            len = get_window_value(attack, window, AG_WINDOW_LENGTH);
            image_index = (window_timer > len * 0.35 && window_timer < len * 0.65) ? 1 : 2;
        }
//=============================================================================
        else if (attack == UNOWN_ATK.F)  && !hitpause
        && (window == 3 || window == 7) && (window_timer == 0)
        {
            spawn_hit_fx(x + (window == 3 ? 36 : -36), y - 30, 14);
        }
//=============================================================================
        else if (attack == UNOWN_ATK.G) && (window == 3)
        {
            image_index = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
            image_index += (hsp > -3) + (hsp > -1.5) + (hsp > 1.5) + (hsp > 3);
        }
//=============================================================================
        else if (attack == UNOWN_ATK.L) && (window == 4)
        {
            //shake_camera(12, 2);
            //special effects for shockwave
            if (window_timer == 1 && !hitpause)
            {
                for (var test_x = 0; test_x < 160; test_x += 50)
                {
                    if (ground_raytest(x + test_x, y))
                    {
                        spawn_base_dust(x + test_x, y, "dash", -1)
                    }
                    else break;
                }
                for (var test_x = 0; test_x < 160; test_x += 50)
                {
                    if (ground_raytest(x - test_x, y))
                    {
                        spawn_base_dust(x - test_x, y, "dash", 1)
                    }
                    else break;
                }
            }
        }
//=============================================================================
        else if (attack == UNOWN_ATK.N)
        {
            if (window == 2)
            {
                image_index = get_window_value(attack, 2, AG_WINDOW_ANIM_FRAME_START) + (window_timer > 8);
            }
            if (window == 4) && (window_timer == 0)
            {
                image_index = 5;
            }
        }
//=============================================================================
        else if (attack == UNOWN_ATK.P) && !hitpause
        && (window == 2 && window_timer == 0)
        {
            spawn_hit_fx( x-12, y+12, 116 );
        }
//=============================================================================
        else if (attack == AT_EXTRA_1) //parry
        {
            init_shader();
        }
//=============================================================================
        else if (attack == AT_TAUNT) && !hitpause && (get_num_hitboxes(attack) > 0)
        {
            if (window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1)
            {
                sound_play(asset_get("sfx_ori_stomp_hit"))
            }
            else if (window == 2 && window_timer == 0)
            {
                switch (hidden_power_strength_vfx)
                {
                    case 1: spawn_hit_fx( x, y - unown_eye_center_offset, 302 ); break;
                    case 2: spawn_hit_fx( x, y - unown_eye_center_offset, 254 ); break;
                    case 3: spawn_hit_fx( x, y - unown_eye_center_offset, 304 ); break;
                } hidden_power_strength_vfx = 0;
                
                spawn_hit_fx( x, y - unown_eye_center_offset, hitfx_hiddenpower );
            }
        }
//=============================================================================
    } break;
    case PS_HITSTUN:
    case PS_HITSTUN_LAND:
    {
        sprite_index = cur_form_sprites.hurt;
    } break;
    case PS_WALL_JUMP:
    case PS_WALL_TECH:
    case PS_JUMPSQUAT:
    case PS_FIRST_JUMP:
    case PS_DOUBLE_JUMP:
    {
        unown_looking_dir = spr_dir;
        sprite_index = cur_form_sprites.jump;
        image_index = min(2, floor(state_timer/8))
    } break;
    case PS_TECH_GROUND:
    case PS_TECH_FORWARD:
    case PS_TECH_BACKWARD:
    {
        unown_looking_dir = spr_dir;
        sprite_index = cur_form_sprites.jump;
        image_index = 0;
    } break;
    case PS_LAND:
    case PS_WAVELAND:
    case PS_PRATFALL:
    case PS_PRATLAND:
    {
        sprite_index = cur_form_sprites.prat;
    } break;
    case PS_AIR_DODGE:
    {
        //yes, dodges use windows. Dan pls.
        sprite_index = (window == 1) ? empty_spr : cur_form_sprites.jump;
        if (window == 1 && window_timer == 0 && air_dodge_dir != 0 && !hitpause)
        {
            sound_play(unown_airdodge_sfx);
            var hfx = spawn_hit_fx( x, y - unown_eye_center_offset, unown_airdodge_vfx );
            hfx.image_index = 2;
        }
    } break;
    default: 
        //print("encountered state " + get_state_name( state ));
        sprite_index = cur_form_sprites.idle;
        image_index = 0;
        break; //implicit !? I shouldnt need the above lines to set sprite index ideally
    case PS_SPAWN:
    case PS_IDLE:
    case PS_IDLE_AIR:
    case PS_TUMBLE:
    {
        if (unown_turning_timer > 0)
        {
            sprite_index = cur_form_sprites.turn;
            image_index = 0;
        }
        else
        {
            sprite_index = cur_form_sprites.idle;
            image_index = 0;
        }
    } break;
    case PS_RESPAWN:
    {
        sprite_index = cur_form_sprites.idle;
        image_index = 0;
        draw_y = 8 - floor(sin(0.02*state_timer*(2*pi)) * 8);
        
        if (state_timer == (phone_practice? 1 : 90)) 
           spawn_hit_fx(x, y - unown_eye_center_offset, 66);
    } break;
}

//unown Y's water spout
if (unown_y_water.timer > 0) && (state != PS_ATTACK_AIR || !hitpause)
{
    unown_y_water.timer--;

    if !(state == PS_ATTACK_AIR) && (unown_y_water.timer > unown_y_water_dying_time)
    { unown_y_water.timer = unown_y_water_dying_time; }
    
    var animframe = (unown_y_water.timer < unown_y_water_dying_time) 
                  ?  (unown_y_water_dying_time - unown_y_water.timer) 
                     * (unown_y_water_dying_frames * 1.0 / unown_y_water_dying_time) + unown_y_water_active_frames
                  :  (unown_y_water_active_time - (unown_y_water.timer - unown_y_water_dying_time))
                     * (unown_y_water_active_frames * 1.0 / unown_y_water_active_time)
    
    unown_y_water.index = floor(animframe);
}

//===============================================================
//Hidden power effect
init_shader();
if (inward_hidden_power_timer > 0)
{
    inward_hidden_power_timer -= (inward_hidden_power_fast ? 2 : 1);
}
else 
{ 
    inward_hidden_power_fast = false;
}

if (hidden_power_text_anim_timer > 0) hidden_power_text_anim_timer--;


//Shiny!
if (get_player_color(player) == 1 || vfx_shiny_override)
&& (get_gameplay_time() % (16 + random_func(4, 128, true)) == 0)
{
    var kx = x - 32 + random_func(5, 64, true);
    var ky = y - unown_eye_center_offset - 32 + random_func(6, 64, true);
    
    var k = spawn_hit_fx(kx, ky, vfx_snow_twinkle);
    k.depth = depth - 1;
}

//=============================================================================
#define ground_raytest(x, y)
    return ( noone != collision_line(x, y+2, x, y-2, 
                                    asset_get("par_block"), true, true))
        || ( noone != collision_line(x, y+2, x, y-2, 
                                    asset_get("par_jumpthrough"), true, true));
 

//=================================================================
//
#define spawn_base_dust // originally by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
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
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(round(x),round(y),asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
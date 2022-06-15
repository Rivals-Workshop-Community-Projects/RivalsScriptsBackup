// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack)
{
    case AT_JAB:
        was_parried = false;
        break;
    case AT_NSPECIAL_2:
        if (window == 1)
        {
            if (window_timer == 1)
            {
                stall += 1;
            }
        }
        if (stall >= 2)
        {
            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 0)
            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, 0)
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 0)
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 0)
        }
        break;
    case AT_FSPECIAL:
        if (window == 1)
        {
            if (window_timer == 1)
            {
                reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
                sound_play(asset_get("sfx_frog_uspecial_cast"), 0, noone, 0.8, 0.85)
            }
            else if (window_timer == 6)
            {
                sound_play(asset_get("sfx_swipe_medium2"), 0, noone, 0.6, 0.9)
            }
            else if (window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH))
            {
                if (special_down)
                {
                    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 12);
                }
            }
        }
        if (window == 2)
        {
            if (window_timer == 2)
            {
                sound_play(asset_get("sfx_swish_medium"), 0, noone, 0.5, 1);
                sound_play(asset_get("sfx_shovel_swing_heavy2"), 0, noone, 0.5, 1);
            }
        }
        break;
    case AT_FSPECIAL_AIR:
        can_fast_fall = false;
        if (window == 1)
        {
            if (window_timer == 1)
            {
                reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
                sound_play(asset_get("sfx_frog_uspecial_cast"), 0, noone, 0.8, 0.85)
            }
            else if (window_timer == 6)
            {
                sound_play(asset_get("sfx_swipe_medium2"), 0, noone, 0.6, 0.9)
            }
            else if (window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH))
            {
                if (special_down)
                {
                    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 12);
                }
            }
        }
        if (window == 2)
        {
            if (window_timer == 2)
            {
                sound_play(asset_get("sfx_swish_medium"), 0, noone, 0.5, 1);
                sound_play(asset_get("sfx_shovel_swing_heavy2"), 0, noone, 0.5, 1);
            }
        }
        if (window == 1)
        {
            if (window_timer == 1)
            {
                if (free == true)
                set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 1)
                else
                {
                    set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2)
                }
            }
        }
        else if (window == 3)
        {
            if (window_timer == 1)
            {
                if (vsp > 0)
                {
                    vsp = 0;
                }
            }
        }
        else if (window == 4)
        {
            can_move = true;
        }
        else if (window < 4)
        {
            can_move = false;
        }
        break;
    case AT_FSTRONG:
        if (window == 1)
        {
            if (window_timer == 1)
            {
                reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
                sound_play(asset_get("sfx_frog_uspecial_cast"), 0, noone, 0.8, 0.85)
            }
            else if (window_timer == 6)
            {
                sound_play(asset_get("sfx_swipe_medium2"), 0, noone, 0.6, 0.9)
            }
        }
        if (window == 2)
        {
            if (window_timer == 2)
            {
                sound_play(asset_get("sfx_swish_weak"), 0, noone, 0.4, 1);
                sound_play(asset_get("sfx_shovel_swing_heavy1"), 0, noone, 0.5, 1);
            }
        }
    case AT_DSPECIAL:
        can_move = false;
        can_fast_fall = false;
        can_wall_jump = true;
        if(window == 1)
        {
            if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))
            {
                spawn_base_dust(x, y, "dash_start", spr_dir)
            }
        }
        break;
        break;
    case AT_DSPECIAL_2:
        can_move = false;
        can_fast_fall = false;
        can_wall_jump = true;
        if(window >= 1 && window <= 3 && !free){
            if(window == 2){
                destroy_hitboxes();
                set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
                window = 4;
                window_timer = 0;
                sound_play(asset_get("sfx_blow_heavy2"));
            }else{
                set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6);
                destroy_hitboxes();
                window = 6;
                window_timer = 0;
                sound_play(asset_get("sfx_med2"));
            }
        }
        if (window == 3)
        {
            if (window_timer == get_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH))
            {
                window = 7; 
            }
        }
        break;
    case AT_USPECIAL:
        can_fast_fall = false;
        if (window == 3)
        can_wall_jump = true;
        
        break;
    case AT_USTRONG:
        if (strong_charge == 30 and boost2 == 0)
        {
            sound_play(asset_get("mfx_star"))
            spawn_hit_fx(x, y - 20, 301);
            boost2 = 1;
        }
        switch (window)
        {
            case 1:
                if (window_timer == 1)
                {
                    boost2 = 0;
                    reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED);
                    reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED);
                }
                if (boost2 == 0)
                {
                    if (spr_dir == 1)
                    {
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8)
                        }
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -2)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12)
                        }
                    }
                    else if (spr_dir == -1)
                    {
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8)
                        }
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -2)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12)
                        }
                    }
                }
                else if (boost2 == 1)
                {
                    if (spr_dir == 1)
                    {
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -8)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10)
                        }
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -4)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -16)
                        }
                        if (!right_down and !left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12) 
                        }
                    }
                    else if (spr_dir == -1)
                    {
                        if (right_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -8)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10)
                        }
                        if (left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -4)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -16)
                        }
                        if (!right_down and !left_down)
                        {
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -6)
                            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12) 
                        }
                    }
                }
            case 2:
                if (window_timer == 1)
                {
                    move_cooldown[AT_USTRONG] = 60;
                }
        }
        break;
    case AT_DSTRONG:
        can_fast_fall = false;
        reset_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED);
        switch(window)
        {
            case 1:
                jump_time = 0;
                if (up_down)
                {
                    set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED, -11);
                }
                break;
            case 4:
                can_move = false;
                break;
            case 5:
                jump_time++;
                if (jump_time >= 24)
                {
                    can_jump = true;
                }
                can_move = false;
                break;
            case 6:
                if (window_timer == 1)
                {
                    sound_play(asset_get("sfx_swish_medium"))
                }
                can_move = false;
                break;
            case 7:
                can_move = false;
                break;
        }
        break;
    case AT_DAIR:
        if (window == 1)
        {
            boost = 1;
        }
        if (has_hit and boost = 1)
        {
            can_fast_fall = false;
            old_vsp = 0;
            old_vsp += -6;
            boost = 0;
        }
        break;
}
#define spawn_base_dust
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
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
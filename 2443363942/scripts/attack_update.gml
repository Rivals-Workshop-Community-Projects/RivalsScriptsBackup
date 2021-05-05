//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
    case AT_JAB:
        was_parried = false;
        break;

    case AT_TAUNT:
        if ( window == 2 && window_timer == 1) shake_camera(6, 10);
        break;

    case AT_UTILT:
        if (window == 2) hud_offset = 90;
        break;
        
    case AT_DTILT:
        if (window == 2 && window_timer == 1 && !hitpause) spawn_base_dust(x+66*spr_dir, y, "dash", -spr_dir);
        break;

    case AT_USTRONG:
        if (window > 1 && window < 5) hud_offset = 150;
        break;

    case AT_DSTRONG:
        if (window == 2 && window_timer == 4) sound_play(asset_get("sfx_blow_heavy2"));
        break;

    case AT_FSTRONG:
        can_move = false;
        if (window < 2 || window > 4) set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
        else set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
        if (window == 1)
        {
            fstrong_loops = 0;
            air_fstrong = false;
        }
        if (window == 5 && window_timer == 1 && !hitpause)
        {
            spawn_base_dust(x+10*spr_dir, y, "dash_start", spr_dir);
            spawn_base_dust(x+80*spr_dir, y, "dash_start", -spr_dir);
        }
        if (free)
        {
            air_fstrong = true;
            if (window == 4 && window_timer == 8)
            {
                destroy_hitboxes();
                window_timer = 0;
                fstrong_loops++;
            }
            if (fstrong_loops >= 4) can_jump = true;
        }
        else if (air_fstrong)
        {
            window = 5;
            window_timer = 0;
            air_fstrong = false;
            hsp = 0;
            destroy_hitboxes();
        }
        break;

    case AT_NSPECIAL:
        if (window == 3 && special_pressed && has_rune("A"))
        {
            window = 1;
            window_timer = 0;
        }
        break;

    case AT_FSPECIAL:
        if (((has_hit && !hitpause) || (position_meeting(x + 20 * spr_dir,y - 15,asset_get("par_block")) || position_meeting(x + 20 * spr_dir,y - 15,asset_get("obj_articlesolid")))) && (window == 2 || window == 3))
        {
            window = 4;
            window_timer = 0;
            hsp = 8 * -spr_dir;
            if (!has_hit && (position_meeting(x + 20 * spr_dir,y - 15,asset_get("par_block")) || position_meeting(x + 20 * spr_dir,y - 15,asset_get("obj_articlesolid"))))
            {
                spawn_hit_fx(x + 30 * spr_dir, y - 30, 14);
                sound_play(asset_get("sfx_blow_heavy1"));
                vsp = -1 * wall_bounces;
                if (wall_bounces > 0 && !has_rune("I")) wall_bounces--;
            }
            else vsp = -6;
            destroy_hitboxes();
        }
        can_fast_fall = false;
        break;

    case AT_USPECIAL:
        if (window != 5) can_move = false; 
        can_fast_fall = false;
        switch (window)
        {
            case 1:
                if (!free && window_timer == 1)
                {
                    y -= 5;
                    free = true;
                }
            case 2:
                can_shield = !was_parried;
                if (has_airdodge && shield_pressed) move_cooldown[AT_USPECIAL] = 30;
                break;

            case 3:
                if (!free) set_state(PS_LANDING_LAG);
                if (window_timer == 12 && !hitpause)
                {
                    fly_dir = joy_pad_idle?90:joy_dir;
                    spr_angle = fly_dir - 90;
                    hsp = lengthdir_x(1, fly_dir);
                    vsp = lengthdir_y(1, fly_dir);
                    if ((left_pressed || left_down) && spr_dir == 1) spr_dir = -1;
                    else if ((right_pressed || right_down) && spr_dir == -1) spr_dir = 1;
                }
                break;

            case 4:
                if (window == 4 && !hitpause)
                {
                    if (has_rune("G")){
                        fly_dir = fly_dir = joy_pad_idle?fly_dir:joy_dir;
                    }
                    spr_angle = fly_dir - 90;
                    hsp = lengthdir_x(20, fly_dir);
                    vsp = lengthdir_y(20, fly_dir);
                    if (!free){ //set_state(PS_LANDING_LAG);
                        if (has_hit){
                            window = 6;    
                            vsp = -3;
                        }
                        else{
                            window = 5;
                            vsp = -10;
                        }
                        window_timer = 0;
                        spr_angle = 0;
                        move_cooldown[AT_USPECIAL] = 30;
                        hsp = clamp(hsp, -8, 8);
                        destroy_hitboxes();
                    }
                }
                break;

            case 5:
                if (window_timer == 1)
                {
                    hsp /= 4;
                    vsp /= 4;
                }
                spr_angle = 0;
                break;
            case 6:
                if (window_timer > 5){
                    //can_jump = true;
                    can_shield = true;
                    //can_attack = true;
                    //can_special = true;
                }
                break;
                
        }
        break;

    case AT_DSPECIAL:
        if (window == 1) can_loop_shine = true;
        if (!special_down && can_loop_shine && window > 2) can_loop_shine = false;
        can_jump = ((window == 2 && window_timer > 2) ||window == 3 || window == 4) && !was_parried;
        if (window == 3 && window_timer == 6 && !was_parried && can_loop_shine)
        {
            attack_end();
            window_timer = 0;
        }
        can_fast_fall = false;
        break;
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
{
    ///spawn_base_dust(x, y, name, ?dir)
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
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
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
    return newdust;
} // Supersonic
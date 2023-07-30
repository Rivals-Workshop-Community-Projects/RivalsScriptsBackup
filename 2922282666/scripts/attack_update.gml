//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if((attack == AT_UAIR || attack == AT_USPECIAL || attack == AT_UTILT || attack == AT_USTRONG) && window >= 2)
    hud_offset = 50;

if(has_hit_player && !hitpause && special_pressed && move_cooldown[AT_NSPECIAL] == 0
&& collision_circle(GemObj.x,GemObj.y,140,self,true,false) && GemObj.state == 1 &&
!(attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_NSPECIAL_2 || attack == AT_USTRONG))
    set_attack(AT_NSPECIAL);
else if(GemObj.state < 3 && GemObj.state != 0)
{
    if(attack == AT_FSTRONG || attack == AT_DSTRONG ||attack == AT_USTRONG)
    {
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
        {
            SetGem(1);
            GemObj.spr_dir = spr_dir;
            var strongmod = ((strong_charge+30)/8);
            if(attack == AT_FSTRONG)
                GemObj.hsp = (15+strongmod)*spr_dir;
            else
                GemObj.vsp = (15+strongmod)*(attack == AT_USTRONG?-1:1);
        }
    }
}
attack_window = window;
switch(attack)
{
    case AT_TAUNT_2:
        move_cooldown[AT_TAUNT_2] = 9999999999;
        break;
    case AT_TAUNT:
        if(window == 2 && window_timer == 1) 
        { 
            shake_camera(4, 6); 
            GemPos_x = x+10*spr_dir;
            GemPos_y = y-40
            GemShow_timer = 30; 
        }
        break;
    case AT_NSPECIAL:
        if (window == 3 && window_timer == 1)
            SetGem(3);
        break;
    case AT_NSPECIAL_2: //Crystal Dash
        move_cooldown[AT_NSPECIAL_2] = 10;
        can_fast_fall = false;
        dashes = 1;
        if(state_timer = 1)
        {
            sprite_rot = point_direction(x,y,GemObj.x,GemObj.y+20);
            if(sprite_rot > 90 && sprite_rot < 270)
                spr_dir = -1;
            else if(sprite_rot > 0 && sprite_rot < 90 || sprite_rot > 270 && sprite_rot < 360)
                spr_dir = 1;
            if(collision_circle(GemObj.x,GemObj.y,140,self,true,false) && GemObj.state == 1)
            {
                set_num_hitboxes(AT_NSPECIAL_2, 1);
                dashspd = 20;
                fx = spawn_hit_fx(x,y-30,194);
                fx.depth = depth-10;
                sound_play(asset_get("sfx_coin_collect"))
                sound_play(asset_get("sfx_ori_ustrong_launch"))
            }
            else 
            {
                reset_num_hitboxes(AT_NSPECIAL_2);
                dashspd = 9;
            }
        }
        if(window != 1 && !hitpause && window != 4)
        {
            fall_through = 1;
            hsp = dashspd * cos(degtorad(sprite_rot));
            vsp = -dashspd * sin(degtorad(sprite_rot));
            if(collision_circle(GemObj.x,GemObj.y,30,self,true,false) && dashspd == 20 && GemObj.state == 1)
            {
                sound_play(asset_get("mfx_star"))
                x = GemObj.x;
                y = GemObj.y+20;
                draw_y = 0;
                hsp = 0;
                vsp = -9;
                old_hsp = 0;
                old_vsp = -9;
                y -= 2;
                white_flash_timer = 10;
                set_state(PS_IDLE_AIR);
                create_hitbox(AT_NSPECIAL_2,2,x,y);
                SetGem(0);
            }
            if(dash_grab_player != noone)
            {
                dash_grab_player.x = x+hsp*3;
                dash_grab_player.y = y+vsp*3;
            }
        }
        else if(window == 4 && window_timer == 1)
        {
            hsp /= 2;
            vsp /= 2;
        }
        break;
    case AT_USPECIAL:
        can_fast_fall = (window == 3);
        break;
    case AT_FSPECIAL:
        if(window == 1)
        {   
            if(free && vsp > 0 )vsp -= grav/2;
            if(special_down) attack_down = true;
            if(strong_charge > 30) attack_down = false; 
            if(GemObj.state == 0) SetGem(2);
        }
        if (window == 2 && !hitpause && window_timer == 1 && GemObj.state != 4){
            SetGem(1);
            move_cooldown[AT_NSPECIAL] = 2;
            GemObj.spr_dir = spr_dir;
            GemObj.hsp = (20*spr_dir)*((strong_charge+20)/30);
            sound_play(asset_get("sfx_ori_bash_launch"))
        }
        move_cooldown[AT_FSPECIAL] = 45;
        move_cooldown[AT_DSPECIAL] = 45;
        break;
    case AT_DSPECIAL:
        can_move = false;
        if (state_timer == 1)
            SetGem(0);
        move_cooldown[AT_FSPECIAL] = 30;
        move_cooldown[AT_DSPECIAL] = 30;
        break;
    case AT_DSTRONG:
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
        {
            sound_play(asset_get("sfx_ice_shatter"), false,noone, 1, 1.2);
            shake_camera(8, 8);
        }
        break;
    case AT_BAIR:
        if (window == get_attack_value(AT_BAIR, AG_NUM_WINDOWS) && window_timer == ceil(get_window_value(AT_BAIR, get_attack_value(AT_BAIR, AG_NUM_WINDOWS), AG_WINDOW_LENGTH)*(!has_hit?1.5:1)))
        {
            spr_dir = -spr_dir;
            attack_window = 1;
        }
        break;
    case AT_JAB:
        if(window == 4 && window_timer == 5)
            hsp += 35*spr_dir;
        break;
}
#define SetGem(GemNum)
if(GemObj.state != 4) 
{
    GemObj.state = GemNum;
    GemObj.state_timer = 0;
}
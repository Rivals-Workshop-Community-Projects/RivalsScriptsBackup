//God Darc Sharc could use his staff on me anytime~
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL)
{
    if(move_cooldown[AT_DSPECIAL] < 10) move_cooldown[AT_DSPECIAL] = 5;
    if(move_cooldown[AT_FSPECIAL] < 10) move_cooldown[AT_FSPECIAL] = 5;
    move_cooldown[AT_NSPECIAL] = 60;
    if(window == 2 && window_timer == 2)
    {
        instance_create(x+48*spr_dir, y-52, "obj_article2");
        
        if (!ds_Lock)
            curSuit ++;
    }
    
    if (window == 4 && window_timer < 14){
        if (shield_pressed){
            sound_play(asset_get("sfx_forsburn_consume_fail"),false,noone,0.5,1);
            state = PS_PRATFALL;
            can_fast_fall = true;
        }
    }
    
    if (window >= 2 && window <= 4)
        can_move = false;
    else
        can_move = true;
    
    if (window != 5)
        can_fast_fall = true;
    else
        can_fast_fall = false;
    
    if (window != 5){
        
        if (spr_dir) {
            if (left_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
            else if (right_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
            else
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
        }
        
        if (!spr_dir) {
            if (left_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
            else if (right_down)
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
            else
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
        }
    }
}
if (attack == AT_DSPECIAL)
{
    if(move_cooldown[AT_FSPECIAL] < 10) move_cooldown[AT_FSPECIAL] = 10;
    if(move_cooldown[AT_NSPECIAL] < 10) move_cooldown[AT_NSPECIAL] = 10;
    if(state_timer == 1)
        cardExists = false;
    if(window == 2 && window_timer == 1)
    {
        instance_create(x, y-30, "obj_article1");
        /*with(obj_article1)
        {
            if(player == other.player)
            {
                other.cardExists = true;
                remoteCtrl = false;
                state = 3;
            }
        }
        if(!cardExists)*/
        if (!ds_Lock)
            curSuit ++;
    }
}
if (attack == AT_FSPECIAL)
{
    if(move_cooldown[AT_NSPECIAL] < 10) move_cooldown[AT_NSPECIAL] = 10;
    if(move_cooldown[AT_DSPECIAL] < 10) move_cooldown[AT_DSPECIAL] = 10;
    move_cooldown[AT_FSPECIAL] = 60;
    if(window == 2)
    {
        if(window_timer <= 4)
        {
            beamX = x + 30 * spr_dir;
            beamY = y - 26;
        }
        if(window_timer == 1)
        {
            switch(curSuit)
            {
                case 0: //Spade
                    sound_play(asset_get("sfx_spin_longer"));
                    tempProj = create_hitbox(AT_FSPECIAL, 2, x+20*spr_dir, y-30);
                    break;
                case 1: //Diamond
                    sound_play(asset_get("sfx_buzzsaw_hit"));
                    for(i = 0; i < 4; i++)
                    {
                        tempProj = create_hitbox(AT_FSPECIAL, 5, x+20*spr_dir, y-30);
                        tempAngle = 30-i*20-(spr_dir == -1 ? 180: 0);
                        tempProj.proj_angle = tempAngle;
                        tempProj.hsp = cos(tempAngle/180*-3.14)*7;
                        tempProj.vsp = sin(tempAngle/180*-3.14)*7;
                    }
                    for(i = 0; i < 3; i++)
                    {
                        tempProj = create_hitbox(AT_FSPECIAL, 4, x+20*spr_dir, y-30);
                        tempAngle = 20-i*20-(spr_dir == -1 ? 180: 0);
                        tempProj.proj_angle = tempAngle;
                        tempProj.hsp = cos(tempAngle/180*-3.14)*6;
                        tempProj.vsp = sin(tempAngle/180*-3.14)*6;
                    }
                    break;
                case 2: //Club deez nuts
                    sound_play(sound_get("DS_acebeam"));
                    tempProj = create_hitbox(AT_FSPECIAL, 1, x+20*spr_dir, y-30);
                    break;
                case 3: //Heart
                    sound_play(asset_get("sfx_ori_energyhit_weak"));
                    tempProj = create_hitbox(AT_FSPECIAL, 6, x+20*spr_dir, y-30);
                    break;
            }
            if (!ds_Lock)
                curSuit ++;
        }
    }
}
if (attack == AT_USPECIAL)
{
    tpSpd = 8;
    can_move = false;
    can_fast_fall = false;
    fall_through = true;
    if ((window == 3 && window_timer >= 12) || window == 4)
        fall_through = false;
    
    if (window == 2)
    {
        if(joy_pad_idle)
            tpDir = 90/180*-3.14;
        else
            tpDir = joy_dir/180*-3.14;
    }
    //TP
    if (window == 3)
    {
        if(window_timer == 1)
            uspecUsed = true;
        vsp = sin(tpDir)*tpSpd;
        hsp = cos(tpDir)*tpSpd;
    }
    if (window == 4) {
        if (window_timer == 1) {
            vsp = vsp/2;
            hsp = hsp/2;
        }
        can_fast_fall = true;
    }
}

if (attack == AT_JAB){
    if (has_hit && window == 3 && window_timer >= 4){
        can_jump = true;
    }
}

if(hit_player_obj != -4)
{
    if (hit_player_obj.activated_kill_effect = 1 && hit_player_obj.state_timer = 0){
        if (get_player_color(player) == 29)
            sound_play(sound_get("DS_metalpipe"));
        else
            sound_play(sound_get("DS_acecrit"));
        hit_player_obj.state_timer = 1;
    }
}

if (attack == AT_FSTRONG){
    lgroove_can_clutch = 1;
    if(window == 2){
    hsp += 0.5 * spr_dir;
    if(get_gameplay_time() mod 3 == 0 && !free && hitpause == false)
        spawn_base_dust(x, y, "dash")
    }
    else
    sound_stop(sound_get("DS_windup"));
}

if (attack == AT_UAIR && window == 2){
    vsp += -0.25;
}

if (attack == AT_TAUNT_2){
    if (window <= 2){
    	suppress_stage_music(0, 0.1);
    }
    if (window = 3){
    	suppress_stage_music(1, 0.1);
    }
}
if (attack == AT_EXTRA_1 && window > 2 && !taunt_down){
    window = 6;
    window_timer = 10;
    sound_stop(sound_get("DS_Acumalaka"));
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
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
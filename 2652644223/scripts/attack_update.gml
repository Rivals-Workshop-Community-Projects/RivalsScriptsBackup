//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//If bullets are enhanced
if(state_timer == 1)
{
    if(6-bullets < hud_enhanced)
    {
        set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 20);
        set_hitbox_value(AT_BAIR, 3, HG_EXTRA_HITPAUSE, 12);
        set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, 12);
        set_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE, 12);
        set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 9);
        set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, 9);
        set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 8);
        set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 8);
        set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 8);
        set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 8);
        set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
        set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, laserhit_fx);
        set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, laserhit_fx);
        set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, laserhit_fx);
        set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, laserhit_fx);
        set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, laserhit_fx);
        set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, laserhit_fx);
        set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, laserhit_fx);
        set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, stronglaser_fx);
        set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, stronglaser_fx);
        set_num_hitboxes(AT_FSPECIAL, 2);
    }
    else
    {
        reset_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_BAIR, 3, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);
        reset_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
        set_num_hitboxes(AT_FSPECIAL, 1);
    }
}

if(state_timer <= 3 && !free && bullets != 6 && attack_pressed && special_pressed && attack != AT_TAUNT_2 && state_cat != SC_HITSTUN && state != PS_PARRY)
{
    tac_reload = true;
    attack = AT_TAUNT_2;
}

if (attack == AT_NSPECIAL){
    if(free)
        set_attack_value(AT_NSPECIAL, AG_CATEGORY, 1);
    if(window == 1)
    {
        if(window_timer == 1)
            clear_button_buffer(PC_SPECIAL_PRESSED);

        if(window_timer == 8 && !free && special_down && bullets != 6 || !free && bullets == 0)
        {
            tac_reload = true;
            white_flash_timer = 10;
            set_attack(AT_TAUNT_2);
            state_timer = 0;
        }
    }
    if (window == 2)
    {  
        if(window_timer == 1)
        { sound_play(sound_get("revolver_shot"),false,noone,1,1.05-(random_func(2,2,false)/40));  bullets --; }
    }
    move_cooldown[AT_NSPECIAL] = 15;
}

if (attack == AT_FSPECIAL){
    if(window == 3)
    {
        if(window_timer < 5 && window_timer % 2 == 0 && !free)
            spawn_base_dust(x+30*spr_dir,y,"dash_start",-spr_dir)
        can_wall_jump = true;
    }
    if (window == 2 || window == 3 && window_timer < 3){
        spawn_hit_fx(x,y-30,uspec_fire)
        if(place_meeting(x+10*spr_dir,y,asset_get("par_block")) && free)
            y -= 8;
    }
    if(window == 1)
    {
        if(window_timer == 1)
        {
            reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
            reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE);
            reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
            fspec_used = true;
        }
        
        if(window_timer == 11)
        { 
            if(bullets == 0)
            { set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);}
            else
            { sound_play(sound_get("revolver_ricochet"));  bullets --; }
        }
        if(window_timer == 9 && 6-bullets < hud_enhanced && !(bullets == 0 || hud_enhanced == 0))
        { sound_play(sound_get("thunder_shock")); fx = spawn_hit_fx(x,y,fspec_spark) fx.depth = depth-1;}
    }
    can_move = false;
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL){
    if (window == 1)
        dspec_held = 0;

    if (window == 2){
        var fire = false;
        if(window_timer >= 15)
        {
            if(window_timer > 16)
            {if(special_down) shake_camera(1, 12)}
            if(window_timer == 15 || window_timer == 30 || window_timer == 45)
            { bullets--; dspec_held++; sound_play(asset_get("sfx_absa_cloud_pop"));}
            if(!special_down || bullets == 0 || window_timer == 45)
            { fire = true; window = 3; window_timer = 0; sound_play(asset_get("sfx_boss_vortex_end")) }
        }
        if(fire)
        {
            article = instance_create(x+30*spr_dir, y-32, "obj_article1");
            for(i = 0; i < dspec_held; i++)
            {
                with(article)
                {
                    if(6-other.bullets < other.hud_enhanced+other.dspec_held)
                        bullets[bullets_held].enhanced = true;
                    bullets_held ++;
                }
            }
        }
    }
}
if (attack == AT_USPECIAL){
    can_fast_fall = false;
    if (window == 1)
    {
        if(window_timer == 1)
            uspec_used ++;
        fire_ang = 90;

        if(window_timer == 16)
        {
            sound_play(asset_get("sfx_clairen_fspecial_slash"));
            set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
            if(left_down || joy_dir > 90 && joy_dir < 270)
                spr_dir = -1;
            else if(right_down || joy_dir > 0 && joy_dir < 90 || joy_dir > 270 && joy_dir < 360)
                spr_dir = 1;
            
            if (!joy_pad_idle) 
                fire_ang = joy_dir;
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, abs(9 * cos(degtorad(fire_ang))));
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9 * sin(degtorad(fire_ang)));
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, abs(20*cos(degtorad(fire_ang))));
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -40 - abs(20*sin(degtorad(fire_ang))));
        }
    }
    else
    {
        can_wall_jump = true;
        if(place_meeting(x+10*cos(degtorad(fire_ang)),y,asset_get("par_block")))
            y -= 3;
    }

    if (window == 2){
        spr_angle = fire_ang - 90;
        if(window_timer % 2 == 1 && !hitpause)
        {
            firefx = spawn_hit_fx(x,y-34,uspec_fire)
            firefx.draw_angle =  fire_ang-(!spr_dir? 180 : 0);
        }
        if(window_timer == 12)
            spr_angle = 0;
    }
    if(window == 3)
    {
        hsp /= 1.03;
        vsp /= 1.03;
    }
    if(has_hit && uspec_used != 2 && window == 3)
        set_state(PS_IDLE_AIR)
    else
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
}

if(attack == AT_JAB)
{   
    if(window == 7 && bullets <= 0)
    {
        attack_end();
        tac_reload = false;
        set_attack(AT_TAUNT_2);
    }
    if(window == 8 && window_timer <= 1)
    {
        if(hitpause)
            window_timer = 2;
        sound_play(sound_get("revolver_shot"),false,noone,1,1.05-(random_func(2,2,false)/40));
        bullets --;
    }
}
// if(attack == AT_FAIR)
// {
//     if(hitpause && window_timer < 3)
//     {
//         old_hsp = -5*spr_dir;
//         old_vsp = -6; 
//     }
// }

if(attack == AT_BAIR || attack == AT_DAIR)
{
    if((attack_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed 
     || left_stick_pressed || right_stick_pressed || down_stick_pressed || up_stick_pressed) && window == 3 && bullets > 0 && !hitpause && free)
    { window = 4; window_timer = 0; destroy_hitboxes(); if(attack==AT_BAIR){vsp = -4; hsp = 3*spr_dir;}else vsp = -6; sound_play(sound_get("revolver_shot"),false,noone,1,1.05-(random_func(2,2,false)/40)); bullets--;}
}
if(attack == AT_UAIR)
{
    if((attack_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed 
    || left_stick_pressed || right_stick_pressed || down_stick_pressed || up_stick_pressed) && window == 2 && window_timer > 8 && bullets > 0 && !hitpause && free)
    { window = 4; window_timer = 0; vsp += 2; destroy_hitboxes(); sound_play(sound_get("revolver_shot"),false,noone,1,1.05-(random_func(2,2,false)/40)); bullets--;}
}
if(attack == AT_USTRONG)
{   
    if(window == 1 && bullets <= 0)
    {
        reload_check();
        if(!auto_reload)
            set_attack(AT_UTILT);
    }
    if(window == 2 && window_timer == 12)
    {
        sound_play(sound_get("revolver_shot"),false,noone,1,1.05-(random_func(2,2,false)/40));
        bullets --;
    }
}
if(attack == AT_DSTRONG)
{   
    if(window == 1)
    {
        reset_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);
        reset_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
        reset_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT);

        if(bullets == 0)
        {
            reload_check();
            if(!auto_reload)
                set_attack(AT_FTILT);
        }
        else
        {
            if(6-bullets < hud_enhanced)
            {
                set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 8);
                set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
                set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, stronglaser_fx);
            }
            if(7-bullets < hud_enhanced)
            {
                set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 8);
                set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 13);
                set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, stronglaser_fx);
            }
        }
    }
    if(window == 3)
    {
        if(window_timer <= 1 || window_timer == 12)
        {
            if(hitpause)
                window_timer += 2;
            bullets --;
            sound_play(sound_get("revolver_shot"),false,noone,1,1.05-(random_func(2,2,false)/40));
        }
        if(window_timer == 10 && bullets == 0)
        {
            white_flash_timer = 10;
            reload_check();
            if(!auto_reload)
                set_attack(AT_FTILT);
        }
    }
}
if(attack == AT_FSTRONG)
{   
    if(window == 1 && bullets <= 0)
    {
        reload_check();
        if(!auto_reload)
            set_attack(AT_FTILT);
    }
    if(window == 2 && window_timer == 3)
        bullets --;
}
if(attack == AT_DTILT)
{
    if(window == 1)
    {
        if(bullets <= 0)
        {
            if(state_timer == 1)
                reload_check();
            set_num_hitboxes(AT_DTILT, 3);
            if(window_timer == 9)
            {
                set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
                window = 5;
                window_timer = 0;
            }
            if(window_timer == 4)
                sound_play(asset_get("sfx_swipe_medium1"))
        }
        if(window_timer == 1)
        {
            set_num_hitboxes(AT_DTILT, 2);
            reset_attack_value(AT_DTILT, AG_NUM_WINDOWS);
            shot_x = 0;
            sfx_deploy = true;
            //Find solid ground to put projectile
            for(i = 190; i > 0; i -= 10)
            {
                if(position_meeting(x+(80+i)*spr_dir, y+3, asset_get("par_block")) 
                || position_meeting(x+(80+i)*spr_dir, y+3, asset_get("par_jumpthrough")))
                {
                    shot_x = 80+i;
                    break;
                }
            }
            set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, shot_x-30);
            reset_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y);

            if(shot_x == 0)
                set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -9999);
        }
    }
    if(window == 2 && window_timer == 4)
        sound_play(sound_get("revolver_shot"),false,noone,1,1.05-(random_func(2,2,false)/40));
    if(window == 3)
    {
        if(window_timer <= 1)
        {
            if(!hitpause)
            {
                bullets --;
                if !(6-bullets < hud_enhanced)
                {
                    reset_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE);
                    reset_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE);
                    reset_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT);
                    reset_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT);
                }
            }
            if(shot_x != 0)
            {
                shotfx = spawn_hit_fx(x+(shot_x-30)*spr_dir, y, dtilt_shot)
                shotfx.depth = -100;
                sound_play(sound_get("revolver_ricochet"));
            }
            shot_x = 0;
        }
        
        if((attack_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed 
        || left_stick_pressed || right_stick_pressed || down_stick_pressed || up_stick_pressed) && window_timer >= 6 && bullets != 0)
        {
            clear_button_buffer(PC_ATTACK_PRESSED);
            attack_end();
            window = 2;
            window_timer = 0;
            //Find solid ground to put projectile
            for(i = 190; i > 0; i -= 10)
            {
                if(position_meeting(x+(80+i)*spr_dir, y+3, asset_get("par_block")) 
                || position_meeting(x+(80+i)*spr_dir, y+3, asset_get("par_jumpthrough")))
                {
                    shot_x = 80+i;
                    break;
                }
            }
            // shot_x -= 20 + random_func( 0, 40, true);
            set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, shot_x-30);
        }
    }
}

if(attack == AT_TAUNT_2)
{
    hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    if(window == 1)
    {
        hud_fail = false;
        hud_enhanced = 0;
    }
    if(window == 2)
    {
        if(tac_reload && hud_enhanced == 0)
        {
            if((special_pressed || attack_pressed) && !hud_fail)
            {
                if(window_timer >= 12 && window_timer <= 15)
                {
                    spawn_hit_fx(x,y-30,194 );
                    sound_play(asset_get("sfx_coin_collect"))
                    white_flash_timer = 12;
                    hud_enhanced = 6-hud_bullet;
                }
                else
                {
                    sound_play(asset_get("sfx_absa_orb_miss"))
                    clear_button_buffer(PC_ATTACK_PRESSED);
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                    hud_fail = true;
                }
            }
        }
        if(window_timer == 15)
            bullets = 6;
    }
    if(window == 1 && window_timer == 4)
        sound_play(sound_get("revolver_wheel1"));
}

//Revolver Deploy SFX
if(sfx_deploy)
{
    sound_play(sound_get("revolver_deploy"));
    sfx_deploy = false;
}

bullets = clamp(bullets, 0, 6);

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

#define reload_check()

if(auto_reload)
{
    if(!free)
    { tac_reload = false; set_attack(AT_TAUNT_2);}
}
else
{
    clear_button_buffer(PC_SPECIAL_PRESSED);
    sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.5);
    outline_timer = 20;
}

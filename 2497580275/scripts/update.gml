//If landing fix stuff
if(!free && (state != PS_ATTACK_AIR || state == PS_ATTACK_AIR) || state == PS_WALL_JUMP || state == PS_HITSTUN)
{
    fspec_Used = false;
    fspec_Air = false;
    set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
    set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
}
else
{
    if(state != PS_ATTACK_AIR || state == PS_ATTACK_AIR && state_timer == 1)
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED);
}

if(fspec_Used)
    move_cooldown[AT_FSPECIAL] = 2;
if(state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR)
{
    init_shader();
    outline_color = [0,0,0];
}
if(introTimer2 < 4)
    introTimer2++
else if(state == PS_SPAWN)
{
    introTimer2 = 0;
    introTimer++;
    if(introTimer == 6)
        sound_play(sound_get("fspec_charge"));
}
else if(state != PS_RESPAWN)//Once game has started start the timer.
{
    if(parasiteSpawn != 2)
    {
        instance_create(x,y, "obj_article3")
        parasiteSpawn++;
    }
    // parasiteLevel = 2;
    if(parasiteTimer2 < 0)
    {
        if(!hitpause)
            parasiteTimer ++;
        if(parasiteTimer < 60*30)
        {
            parasiteLevel = 0;
            walk_speed = 4.75;
            initial_dash_speed = 7.5;
            dash_speed = 6.5;
        }
        else if (parasiteTimer < 60*60)
        {    
            parasiteLevel = 1;
            walk_speed = 5.05;
            initial_dash_speed = 7.8;
            dash_speed = 6.8;
        }
        else if (parasiteTimer < 60*90)
        {    
            parasiteLevel = 2;
            walk_speed = 5.35;
            initial_dash_speed = 8.1;
            dash_speed = 7.1;
        }
        else
        {
            if(parasiteTimer == 60*90)
                sound_play(asset_get("sfx_bigplant_eat"))

            parasiteLevel = 3; //Death.
            can_attack = false;
            can_special = false;
            can_shield = false;
            can_move = false;

            //if in control
            if(!free && state != PS_ATTACK_GROUND)
            {
                state = PS_ATTACK_GROUND;
                attack = AT_TAUNT_2;
            }
            if(state_cat == SC_AIR_NEUTRAL)
                state = PS_PRATFALL;
        }
    }
    else if(!hitpause)
    {
        if(parasiteTimer > 60*90)
        {
            parasiteLevel = 2;
            parasiteTimer = floor(60*90) - 1;
        }
        parasiteTimer2 --;
    }
}
if(initial_invince == 1)
{
    parasiteTimer2 = -1; //reset on death
    parasiteTimer = 0; //reset on death
    
}

//If an opponent dies, the parasite goes slurp slurp
if(hit_player_obj != -4 && hit_player_obj.state == PS_RESPAWN)
{
    hit_player_obj = noone;
    parasiteTimer2 = 60*10;
    parasiteTimerMax = parasiteTimer2;
}
//Debug things
if (get_training_cpu_action() != CPU_FIGHT) 
{
    if(dbg_ParasiteMax)
        parasiteTimer = 60*60;

    if(dbg_ParasiteDeath)
    {
        parasiteTimer = 60*90;
        dbg_ParasiteDeath = false;
        dbg_ParasiteMax = false;
    }

    if(taunt_pressed)
    {
        clear_button_buffer(PC_TAUNT_PRESSED)
        if(up_down)
        {
            dbg_Timer = 80;
            dbg_Msg = "Level 3 Parasite" + (!dbg_ParasiteMax ? " enabled" : " disabled");
            dbg_ParasiteMax = !dbg_ParasiteMax;
            if(!dbg_ParasiteMax)
                parasiteTimer = 0;
        }
        if(down_down)
        {
            dbg_Timer = 80;
            dbg_Msg = "You shall now die."
            dbg_ParasiteDeath = !dbg_ParasiteDeath;
        }
    }
}
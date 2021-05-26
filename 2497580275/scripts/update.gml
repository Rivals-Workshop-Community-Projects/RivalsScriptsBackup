//If landing fix stuff
if(!free || state == PS_WALL_JUMP || state == PS_HITSTUN)
{
    fspec_Used = false;
    fspec_Air = false;
    set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
    set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 160);
    set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 30);
}
else
{
    if(state != PS_ATTACK_AIR || state == PS_ATTACK_AIR && state_timer == 1)
    {
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED);
        reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
        reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE);
        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED);
        reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE);
        reset_hitbox_value(AT_USPECIAL, 2, HG_ANGLE);
    }
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
            initial_dash_speed = 8;
            dash_speed = 7;
        }
        else if (parasiteTimer < 60*60)
        {    
            parasiteLevel = 1;
            walk_speed = 5.05;
            initial_dash_speed = 8.30;
            dash_speed = 7.30;
        }
        else if (parasiteTimer < 60*90)
        {    
            parasiteLevel = 2;
            walk_speed = 5.35;
            initial_dash_speed = 8.6;
            dash_speed = 7.6;
        }
        else
        {
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
            parasiteTimer = floor(60*89.8);
        }
        parasiteTimer2 --;
    }
}
if(initial_invince == 1)
{
    parasiteTimer2 = -1; //reset on death
    parasiteTimer = 0; //reset on death
    
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
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(state_timer == 1)
{
    //Attack hitbox adjustments
    for(atkHitbox = 1; atkHitbox < get_num_hitboxes(attack)+1; atkHitbox++)
    {
        if(get_hitbox_value(attack, atkHitbox, HG_HITBOX_TYPE) != 2) //melee
        {
            hbox_kbscale = 1;
            hbox_dmgscale = 1;
            reset_hitbox_value(attack, atkHitbox, HG_BASE_KNOCKBACK);
            reset_hitbox_value(attack, atkHitbox, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(attack, atkHitbox, HG_DAMAGE);
            switch(power_color)
            {
                case 1: //fire
                    hbox_dmgscale = 1.15; hbox_kbscale = 0.8; break;
                case 2: //electric
                    hbox_dmgscale = 0.8; hbox_kbscale = 0.8; break;
                case 3: //ice
                    hbox_dmgscale = 0.9; hbox_kbscale = 1.1; break;
                case 4: //rock
                    hbox_kbscale = 0.7; break;
            }
            set_hitbox_value(attack, atkHitbox, HG_BASE_KNOCKBACK, floor(get_hitbox_value(attack, atkHitbox, HG_BASE_KNOCKBACK)*hbox_kbscale));
            set_hitbox_value(attack, atkHitbox, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, atkHitbox, HG_KNOCKBACK_SCALING)*hbox_kbscale);
            set_hitbox_value(attack, atkHitbox, HG_DAMAGE, floor(get_hitbox_value(attack, atkHitbox, HG_DAMAGE)*hbox_dmgscale));
        }
    }
}


if (attack == AT_NSPECIAL){
    if (window == 1)
        aim_angle = (spr_dir - 1) * 180 / 2;

    if (window == 2)
    {
        //make sure that joypad is not idle.
        if(!joy_pad_idle)
        {
            if(!shield_down)
                aim_angle = joy_dir;
            else
            {
                if((joy_dir-aim_angle) > 180)
                    aim_angle += 360;
                if((joy_dir-aim_angle) < -180)
                    aim_angle -= 360;

                aim_angle = (joy_dir+aim_angle)/2;
            }
        }
        //face different directions when aiming left/right
        if (left_down)
            spr_dir = -1;
        else if(right_down)
            spr_dir = 1;
    }
    //If special is held, loop the window before shot.
    if (special_down && window <= 2)
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
    else 
        reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE);
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    can_move = false;
    fspec_reset = true;
    
    if(state_timer == 1)
    {
        arrowchain = 0;
        tempchain = 0;
        for(i = 0; i<30; i++)
        {
            arrowchainx[i] = 0; 
            arrowchainy[i] = 0; 
        }
    }

    if(free)
    {
        if(window != 8)
        {
            hsp = hsp * (window < 3 ? 0.75 : 0);
            vsp = vsp * (window < 3 ? 0.75 : 0);
        }
        attack = AT_FSPECIAL_AIR;
        fall_through = true;
    }
    else
        attack = AT_FSPECIAL;

    if(fspechit)
    {
        set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
        set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 6);
        window = 5;
        window_timer = 0;
        fspechit = false;
    }
    if(window == 1)
    {
        attack_end();
        reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
        reset_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS);
        fspechit = false;
        vsp = vsp / 2;
        hit_dest = -9999;
        hit_floor = -9999;
    }
    if(window == 3 && window_timer == 1)
        spawn_hit_fx(x, y, shotFX);
    //pick path
    if(window == 5 && window_timer == 18)
    {
        if(jump_down)
        {
            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
            set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 8);
            window = 8;
            window_timer = 0;
        }
        else if(special_down || hit_id == noone)
        {
            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
            set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 7);
            window = 7;
            window_timer = 0;
        } 
        else if(attack_down)
        {
            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
            set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 6);
            window = 6;
            window_timer = 0;
        }
    }
    //pull opponent
    if(window == 6)
    {
        hit_id.x = ease_sineOut(hit_id.x, x-40*-spr_dir, window_timer, 40);
        hit_id.y = ease_sineOut(hit_id.y, y, window_timer, 40);
        hit_id.hitstop = 2;
        if(window_timer % 1 == 0 && arrowchain > 0)
        {
            arrowchainx[arrowchain] = 0; 
            arrowchainy[arrowchain] = 0; 
            arrowchain --;
        }
    }
    //pull yourself in
    if(window == 7)
    {
        x = ease_sineIn(x, (hit_dest != -9999 ? hit_dest : hit_id.x)+(!free ? 40 : 0)*-spr_dir, window_timer, 30);
        if(free)
            y = ease_sineIn(y, (hit_floor != -9999 ? hit_floor : (hit_id != noone ? hit_id.y : y-30))+30, window_timer, 30);
        vsp = 0;
        if(hit_id != noone)
            hit_id.hitstop = 2;
        if(window_timer == 1)
            tempchain = 0;
        if(window_timer % 1 == 0 && tempchain < arrowchain)
        {
            arrowchainx[tempchain] = 0; 
            arrowchainy[tempchain] = 0; 
            tempchain ++;
        }
    }
    if(window == 8)
    {
        if(window_timer == 1)
        {
            destroy_hitboxes();
            vsp = -8;
            hsp = -2*spr_dir;
            for(i = 0; i<30; i++)
            {
                arrowchainx[i] = 0; 
                arrowchainy[i] = 0; 
            }
        }
        else if(window_timer > 10)
        {
            can_attack = true;
            can_special = true;
            can_jump = true;
            can_move = true;
        }
    }
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL){
    if (window == 2){
        if (get_gameplay_time() mod 4 == 0){
            instance_create( x, y, "obj_article1" );
        }
        if(window_timer > 10)
        {
            can_attack = true;
            can_special = true;
        }
    }
    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    has_zss = true;
    can_fast_fall = false;
    can_wall_jump = true;
}

if (attack == AT_USPECIAL)
{
    if (vsp < 0) //once you start falling.
        set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);

    if (window == 1 && window_timer == 1 && free) // if youre in the air
    {
        window = 2;
        if (!has_flown)
        {
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            window_timer = 0;
        }
        else
        {
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0.5);
            window_timer = 12;
        }
    }
    if(state_timer == 30)
        sound_play(sound_get("elriosuspecial-02"), true)
        
    if (window == 3) //let you do stuff
    {   
        has_flown = true;
        can_attack = true;
        can_shield = true;
        can_special = true;
        can_wall_jump = true;
        can_jump = true;
        move_cooldown[AT_USPECIAL] = 2;
        if(get_gameplay_time() mod 1 == 0)
            attack_end();
    }
}

//Normals
//Down Tilt
if(attack == AT_DTILT)
{
    if(window == 1)
        reset_attack_value(AT_DTILT, AG_NUM_WINDOWS);
    if(attack_down && has_hit && window == 2)
    {
        set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
        window = 4;
        window_timer = 0;
    }
    if(window == 4 && window_timer == 6 && special_down)
    {
        attack_end();
        attack = AT_DSPECIAL;
        window = 1;
        window_timer = 0;
        if(left_down)
            spr_dir = -1;
        if(right_down)
            spr_dir = 1;
    }
}

if(attack == AT_UTILT)
{
    if(window == 1)
        reset_attack_value(AT_UTILT, AG_NUM_WINDOWS);
    else if(window == 2 && window_timer == 1 && attack_down)
    {
        set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
        window = 4;
        window_timer = 0;
    }
}

if(attack == AT_DATTACK)
{
    move_cooldown[AT_DATTACK] = 10;
    if(window == 3 && window_timer == 16)
        spr_dir = -spr_dir;
}

//Elrios Taunt section
if (attack == AT_TAUNT) 
{
    if(state_timer == 1)
        select_timer = 20;

    if(window == 2)
    {
        can_shield = true;
        if(select_timer == 0)
        {
            if(power_color == select_cur) //if nothing changed
                set_state(PS_IDLE);

            window = 3;
            window_timer = 0;
        }
    }
    else if (window == 3)
    {
        can_shield = false;
        select_timer = 0;
        if(window_timer >= 4)
            iasa_script();
    }
}

if (attack == AT_JAB && window == 8)
{
    //see if youre going away
    if(window_timer > 20)
        set_hitbox_value(AT_JAB,4,HG_ANGLE_FLIPPER, 5);
    else
        reset_hitbox_value(AT_JAB,4,HG_ANGLE_FLIPPER);
}

//make sure you dont go over
if(power_color < 5 && changing && arrowsremain[power_color] == 0)
{
    while(arrowsremain[power_color] == 0 && power_color <= 4)
    {
        power_color ++;  
        if(power_color >= 4)
            power_color = 0;
    } 
    init_shader();
}

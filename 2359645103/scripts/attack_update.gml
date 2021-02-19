// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL)
{
    trigger_b_reverse();
}


if (attack == AT_UAIR/* || attack == AT_USTRONG*/)
{
    can_fast_fall = false;
    if(has_hit == false) kk_dashed = true;
}

if (attack == AT_DAIR)
{
    can_fast_fall = false;
    if (window == 2 || window == 3)
        vsp *= 0.8;
    else
        vsp *= 0.95;
    if (left_down)
        hsp = -4;
    else if (right_down)
        hsp = 4;
    else
        hsp = 0;
    if (window == 1)
        kk_rotations = 0;
    if (window == 2 && window_timer == 8)
    {
        kk_rotations++;
        if (has_hit && kk_rotations < 13)
            kk_rotations = 13;
        if (kk_rotations < 3 || (attack_down && kk_rotations < 15))
        {
            window_timer = 0;
            attack_end();
        }
    }
}

if (attack == AT_DSTRONG)
{
    if (window == 3)
    {
        if (left_down)
            hsp = -4;
        else if (right_down)
            hsp = 4;
        else
            hsp = 0;
            
        if (up_down)
            vsp = -4;
        else if (down_down)
            vsp = 4;
        else
            vsp = 0;
        
        kk_bubble_timer++;
        if (kk_bubble_timer > 16 + 1 * strong_charge || attack_pressed || up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed)
        {
            window = 4;
            window_timer = 0;
        }
        else if (window_timer >= 32)
            window_timer = 0;
    }
    else
        kk_bubble_timer = 0;
}
else
    kk_bubble_timer = 0;

if (attack == AT_NSPECIAL)
{
    if (window == 1 && window_timer == 1 && kk_rat != noone)
    {
        if (!kk_rat.free)
        {
            kk_rat.vsp = -5;
            kk_rat.hsp = 0;
            kk_rat.free = false;
            kk_rat.spr_dir *= -1;
        }
        else
        {
            kk_rat.detonate = true;
        }
        window = 2;
        window_timer = 3;
    }
    
    if (window == 1 && window_timer == 10 && kk_rat == noone)
        kk_rat = instance_create(x + 16*spr_dir, y-32, "obj_article1");
}

if (attack == AT_FSPECIAL)
{
    if (window != 6 && window != 7)
    {
        kk_dashed = true;
        kk_bounced = 0;
    }
    else
    {
        if (kk_bounced)
        {
            kk_dashed = false;
            if (kk_bounced > 1)
            {
                kk_bounced--;
                if (kk_bounced == 1)
                    attack_end();
            }
        }
        else
            kk_dashed = true;
    }
    
    if (kk_rat != noone && (window == 2 || window == 3))
    {
        if (!kk_rat.bashed && instance_place(x, y, kk_rat) != noone)
        {
            kk_rat.bashed = true;
            kk_rat.vsp = -5;
            kk_rat.hsp = 12 * spr_dir;
            window = 6;
            window_timer = 0;
            free = true;
            kk_dashed = true;
            attack_end();
            destroy_hitboxes();
            has_hit = false;
        }
    }
    
    //finish the move after window 5 and 3
    if ((window == 3 && window_timer == 10) || (window == 5 && window_timer == 10))
    {
        if (!free)
            set_state(PS_IDLE);
        else
            set_state(PS_IDLE_AIR);
    }
    
    //attack to go into a roll
    if ((window == 2 || window == 3) && (has_hit || hsp == 0))
    {
        window = 6;
        window_timer = 0;
        free = true;
        kk_dashed = true;
        attack_end();
        destroy_hitboxes();
        has_hit = false;
    }
    else if (window == 2 && special_pressed)
    {
        destroy_hitboxes();
        window = 4;
        window_timer = 0;
    }
    
    
    
    if (window == 7)
    {
        if (left_down)
            hsp = -4;
        else if (right_down)
            hsp = 4;
        else
            hsp = 0;
        can_jump = true;
        can_attack = true;
        can_special = true;
        can_wall_jump = true;
        can_shield = true;
        if (!free)
        {
            attack_end();
            set_state(PS_LANDING_LAG);
        }
        if (has_hit)
        {
            kk_bounced = 20;
            window = 6;
            window_timer = 0;
            destroy_hitboxes();
            has_hit = false;
        }
    }
    
    
}


if (attack == AT_DSPECIAL)
{
    can_fast_fall = false;
    if ((window == 2 || (window == 1 && window_timer == 20)) && !free)
    {
        window = 3;
        window_timer = 0;
        spawn_hit_fx(x, y, 192)
        destroy_hitboxes();
    }
    if (window == 4 && !special_down)
    {
        window = 5;
        window_timer = 0;
    }
}

if (attack == AT_USPECIAL)
{
    can_fast_fall = false;
    kk_in_upB = true;
    can_wall_jump = true;
    if ((window == 5 || window == 6) && !free)
    {
        window = 7;
        window_timer = 0;
    }
    else if (window == 5 || window == 6)
        vsp = 9;
    
    if (window <= 6)
    {
        if (left_down)
            hsp = -3;
        else if (right_down)
            hsp = 3;
        else
            hsp = 0;
    }
}






 if (has_hit == false && get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) = 1 && window == get_attack_value( attack, AG_NUM_WINDOWS ) )
    {
    final_frame = round(get_window_value(attack, window, AG_WINDOW_LENGTH ) * 1.5);
    }
    else 
    {
    final_frame = get_window_value(attack, window, AG_WINDOW_LENGTH );
    }

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
   // trigger_b_reverse();
}

//FSPECIAL MOVEMENT

if (attack == AT_FSPECIAL && window = 2)
{



    can_fast_fall = false;

    hsp = 0;
    vsp = 0;

    if (!joy_pad_idle)
    {
        launch_dir = joy_dir;

        if (spr_dir = 1)
        {
        spr_angle = launch_dir - 315;
        }
        else if (spr_dir = -1)
        {
        spr_angle = launch_dir - 225;
        }
    }
    else if (launch_dir = noone)
    {
        if (spr_dir = 1)
        {
        launch_dir = 315;
        }
        else
        {
        launch_dir = 225;
        }
    }

    if (  (window_timer = 6 || window_timer = 12 || window_timer = 18)   || !free )
    {


        if (joy_pad_idle || window_timer = 18)
        {
            hsp = lengthdir_x(13, launch_dir);
            vsp = lengthdir_y(13, launch_dir);
            window = 3;
            window_timer = 0;
            launch_dir = noone;
        
        }
    }

    //hsp = 10 * spr_dir;
    //vsp = 10;
}
else
{
    can_fast_fall = true;
}

if (attack == AT_FSPECIAL && window == get_attack_value( attack, AG_NUM_WINDOWS ) && window_timer == 3)
{
    spark = 1;
    unteleported = 1;
}

if (attack == AT_USPECIAL)
{
    if (window = 2)
    {
        if (shield_pressed)
        {
            window = 6;
            window_timer = 0;
        }

    }

    if (window = 2)
    {
        chomp_timer++;

        if (chomp_timer > 240 || was_parried)
        {
            chomp_timer = 0;
            window = 7;
            window_timer = 0;
            pratfall_debt = 1;
        }
    }
    if (window = 2 && (!special_down || has_hit))
    {
        window = 3;
        vsp = -10;
        window_timer = 0;
        chomp_timer = 0;
    }
    if (window = 4 && window_timer = 0)
    {
        vsp = 0;
    }
    if (final_frame && window = 5)
    {

    }


    if (window > 2)
    {
        visible = true;
    }
}

if (attack == AT_USPECIAL_2)
{
    if (window == 2)
    {
        if (!special_down)
        {
            window = 3;
            window_timer = 0;
            vsp = -13;
        }
        if (!free)
        {
            attack = AT_USPECIAL;
            window = 2;
            window_timer = 0;
        }
    }
}

if (attack == AT_DAIR)
{
    if (window = 3 && window_timer = 1 &&has_hit)
    {
        vsp += -5;
        hsp += -2 * spr_dir;
    }
}


//DSTRONG

if (attack == AT_DSTRONG)
{
    if (window = 1)
    {
        vsp = -7;
        hsp += -3 * spr_dir;
    }
    if (window = 2)
    {
        can_fast_fall = 0;
        vsp = 0;
        hsp = hsp * 0.5;
        if (window_timer = 1)
        {
        hsp = 0;
        }

        if (strong_charge > 4 && (strong_charge mod 10) == 0)
        {
            create_hitbox(AT_DSTRONG, 2, x, y);
        }
    }
    if (window = 3)
    {
        vsp += 3;
        
        if (vsp > 10)
        {
            vsp = 10;
        }
    }
}


//walljump

if ((attack == AT_USPECIAL_2 || attack == AT_USPECIAL)&& window > 2)  { can_wall_jump = true; }

//FX

if (attack == AT_FTILT)
{
    if (window = 3 && window_timer == final_frame)
    {
        spawn_hit_fx(x, y, plunger);
    }
}

if (attack == AT_BAIR)
{
    if (window = 3 && window_timer = final_frame)
    {
        article_type = 2;
        instance_create(x, y-1, "obj_article1");
    }
}

if (attack == AT_USTRONG)
{
    if (window = 1 && window_timer = 1)
    {
        temp_fx = spawn_hit_fx(x, y, ustrong_thunder1);
        temp_fx.depth = depth - 1;
    }

    if (window = 2 && window_timer = 5)
    {
                temp_fx = spawn_hit_fx(x + 10 * spr_dir, y, ustrong_thunder2);
        temp_fx.depth = depth - 1;
    }
}

if (attack == AT_FSTRONG)
{
    if (window = 3 && window_timer = 5)
    {
        temp_fx = spawn_hit_fx(x, y, fstrong_fx);
        temp_fx.depth = depth - 1;
    }

}


if (attack == AT_JAB && 69 = 420)
{
    if (window = 1 && window_timer = 1)
    {
        rotate_fx = spawn_hit_fx(x, y, rotate);
        rotate_fx.depth = 4;
    }
}
//SOUND

if (attack == AT_DTILT)
{
    if (window = 1 && window_timer = 1)
    {
        sound_play(sound_get("bonecrack"));
    }
}


if (attack == AT_FTILT)
{
    if (window = 1 && window_timer = 1)
    {
        sound_play(sound_get("plunger"));
    }
}

if (attack == AT_USTRONG)
{
    if (window = 2 && window_timer = 5)
    {
        sound_play(asset_get("sfx_absa_jab1"));
    }
}

if (attack == AT_DSTRONG)
{
    if (window = 1 && window_timer = 1)
    {
        sound_play(asset_get("sfx_upbcharge"));
    }
}


if (attack == AT_UTILT)
{
    if (window = 1 && window_timer = 1)
    {
        //sound_play(sound_get("hit23"));
    }

        if (window = 3 && window_timer = 5)
    {
        //sound_play(sound_get("bosu01"));
    }
}

if (attack == AT_BAIR)
{
    if (window = 1 && window_timer = 1)
    {
        //sound_play(sound_get("hit23"));
    }



}

if (attack == AT_NSPECIAL)
{
    if (window = 1 && window_timer = 1)
    {
        sound_play(sound_get("spray2"));
    }



}

if (attack == AT_FAIR)
{
    if (window = 1 && window_timer = 5)
    {
        //sound_play(sound_get("Beam"));
    }

    

}

if (attack == AT_JAB)
{
    if (window = 1 && window_timer = 1)
    {
        sound_play(sound_get("glitch6"));
    }



}

if (attack == AT_FSTRONG)
{
    if (window = 1 && window_timer = 1)
    {
        sound_play(sound_get("glitch1"));
    }
    if (window = 2 && window_timer = 1)
    {
        sound_play(sound_get("glitch7"));
    }
}

if (attack == AT_DSPECIAL)
{
    if (window = 1 && window_timer = 1)
    {
        sound_play(sound_get("trapdoor"));
    }
}

if (attack == AT_USPECIAL)
{
    if (window = 3 && window_timer = 1)
    {
        sound_play(sound_get("shock"));
    }
}

if (attack == AT_TAUNT)
{
    if (window = 1 && window_timer = 2)
    {
            spr_dir = 1;

    
    }
    if (window = 3 && window_timer = 1)
    {
        taunt_timer = 900;
        
        call_determiner = random_func( 0, 10, true) + 1;

        move_cooldown[AT_TAUNT] = 1500;

        if (call_determiner = 1)
        {
        sound_play(sound_get("goodcall1"));
        }
        if (call_determiner = 2)
        {
        sound_play(sound_get("goodcall2"));
        taunt_timer += -50;
        }
        if (call_determiner = 3)
        {
        sound_play(sound_get("goodcall3"));
        taunt_timer += -250;
        }
        if (call_determiner = 4)
        {
        sound_play(sound_get("goodcall4"));
        taunt_timer += 250;
        }
        if (call_determiner = 5)
        {
        sound_play(sound_get("goodcall5"));
        taunt_timer += 100;
        }
        else if (call_determiner > 5)
        {
        sound_play(sound_get("UIFX3"));
        taunt_timer += -900;
        }
    }
}

//DSTRONG infinite fall

if (attack == AT_DSTRONG && window = 3 && 69 = 420)
{
    if (free && window_timer = 5)
    {
        window = 3;
        window_timer = 0;
    }
    else if (!free)
    {
    window = 4;
    window_timer = 0;
    }
}
//USPECIAL CANCEL

if (attack == AT_USPECIAL && window = 5 && window_timer > 4)
{
    if (attack_pressed || special_pressed || up_stick_pressed || down_stick_pressed || left_stick_pressed || right_stick_pressed || jump_pressed || shield_pressed)
    {
        window_timer = 14;
    }
}

//cancel parry stun
if attack == AT_JAB{
    if was_parried {
        was_parried = false;
    }
}
//USPECIAL INTERACTION WITH WATER

if (attack == AT_USPECIAL)
{
    submerged = instance_place(x, y, obj_article3);
    if (window = 2 && submerged != noone && submerged.player_id = id)
    {
            



                    visible = false;
            
            
            
    }
    else
    {
                visible = true;
    }
}

if (attack == AT_DSPECIAL)
{
    if (window = 2 && window_timer == 1)
    {
        article_type = 1;
        instance_create(x, y-1, "obj_article1");
        move_cooldown[AT_DSPECIAL] = 240;
        
    }

    
}

if (attack == AT_NSPECIAL)
{
    if (window = 1 && window_timer = 1)
    {
        hose_i = 1;
        current_y = 9999999;
    }

    if (window = 2 || window = 3)
    {
        if (free)
        {
            conditional_add = 50;
            conditional_up = 50;
        }
        else
        {
            conditional_add = 20;
            conditional_up = 40;
        }
        if (hose_i <= total_spray)
        {
            splash[hose_i] = instance_create(x + conditional_add * spr_dir, y- conditional_up, "obj_article2");
            splash[hose_i].self_id = splash[hose_i];
            splash[hose_i].hsp = 4 * spr_dir + hsp + (hose_i * 0.5);
            hose_i++;
            
        }

    }
}

if (attack == AT_FTILT)
{
    if (window = 3 && window_timer = final_frame)
    {
        //x += 40 * spr_dir;
    }
}

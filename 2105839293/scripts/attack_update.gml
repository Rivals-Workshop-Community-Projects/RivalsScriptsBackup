//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



/*if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }p
}*/

if (attack == AT_TAUNT)
{
    if (window == 2)
    {
        if (window_timer == 10)
        {
            sound_play(sound_get("sfx_yuuto_land"));
        }
        if (window_timer == 55)
        {
            sound_play(sound_get("sfx_yuuto_takeout"));
        }
        if (window_timer == 105)
        {
            sound_play(sound_get("sfx_yuuto_bite"));
        }
    }
    
    
    if (window == 1)
    {
        if (window_timer == 1 && !hitpause)
        {
            if (chizuruSummoned)
            {
                //window = 200;
                if (abs(x - chizuruObject.x) < 120 && chizuruObject.state > 1003 && chizuruObject.state < 1007)
                {
                    if (x > chizuruObject.x)
                    {
                        spr_dir = -1;
                        chizuruObject.spr_dir = 1;
                    }
                    else
                    {
                        spr_dir = 1;
                        chizuruObject.spr_dir = -1;
                    }
                    chizuruObject.state = 1004;
                    chizuruObject.image_index = 33;
                    chizuruObject.greeted = true;
                    sound_stop(sound_get("sfx_yuuto_greet"));
                    sound_play(sound_get("sfx_yuuto_eatconfirm"));
                    
                    
                    window = 2;
                    window_timer = 0;
                }
                else
                {
                    window = 2
                    window_timer = 900;
                }
                
            }
            else
            {
                xSummon = 70;
                
                if (!place_meeting(x - (spr_dir * xSummon),y+2,asset_get("par_block")) && !place_meeting(x - (spr_dir * xSummon),y+2,asset_get("par_jumpthrough")))
                {
                    xSummon = 0;
                }
                
                
                chizuruSummoned = true;
                chizuruObject = instance_create(x - (spr_dir * xSummon), y, "obj_article1");
                chizuruObject.spr_dir = spr_dir;
                chizuruObject.chizuruMode = true;
                chizuruObject.sprite_index = sprite_get("chizuru");
                //chizuruObject.image_speed = 0.25;
                chizuruObject.state = 1000;
                chizuruObject.player_id = id;
                chizuruObject.player = player;
                sound_play(sound_get("sfx_yuuto_trashin"));
                
            }
        }
        
        if (window_timer == 2 && !hitpause)
        {
            sound_play(sound_get("sfx_yuuto_wobble"));
        }
        if (window_timer == 20 && !hitpause)
        {
            sound_play(sound_get("sfx_yuuto_land"));
        }
        
        if (window_timer == 69 && !hitpause)
        {
            spr_dir *= -1;
            window = 2;
            window_timer = 900;
        }
    }
}


if (attack == AT_FAIR)
{
    //Play ice sound effect
    if (window == 1)
    {
        if (window_timer == 10 && !hitpause)
        {
            sound_play(sound_get("sfx_yuuto_ice"),false,noone,1,0.99+(random_func(1,1,false)/16));
            //sound_play(sound_get("sfx_yuuto_ice"));
        }
    }
}

if (attack == AT_USPECIAL) {
    //Allow attack to be cancelled with wall jump
    can_wall_jump = true;
}

if (attack == AT_UAIR)
{
    //Play ice sound effect
    if (window == 2)
    {
        if (window_timer == 1 && !hitpause)
        {
            sound_play(sound_get("sfx_yuuto_ice"),false,noone,1,0.99+(random_func(1,1,false)/16));
            //sound_play(sound_get("sfx_yuuto_ice"));
        }
    }
}

if (attack == AT_USPECIAL)
{
    //prevent fastfalling while attack is happening
    if (window < 3)
    {
        can_fast_fall = false;
        if (window_timer mod 2 == 0 && window_timer < 15)
        {
            var smokeCloud = instance_create(x + (15 * spr_dir), y - 32, "obj_article1");
            smokeCloud.state = 695;
            smokeCloud.image_alpha = 0.8;
            smokeCloud.sprite_index = sprite_get("smoke");
            smokeCloud.hsp = -spr_dir * (-2 + random_func( 0, 7, false ));
            smokeCloud.vsp = 1 + random_func( 0, 4, false );
            smokeCloud.image_xscale = 0.1;
            smokeCloud.image_yscale = 0.1;
            smokeCloud.spr_dir = spr_dir;
            if (spr_dir > 0)
            {
                smokeCloud.image_angle = 340 + random_func( 0, 20, false );
            }
            else
            {
                smokeCloud.image_angle = 0 + random_func( 0, 20, false );
            }
        }
        
    }
    else
    {
        can_fast_fall = true;
    }
    
    //Create an exposion at the peak of the jump
    if (window == 3)
    {
        if (window_timer == 1 && !hitpause)
        {
            var square = instance_create(x + (2 * spr_dir), y - 32, "obj_article1");
            square.state = 690;
            square.sprite_index = sprite_get("explosionbigger");
            square.state_timer = 0;
            square.image_xscale = 1* spr_dir;
            square.image_yscale = 1;
        }
    }
}




if (attack == AT_DAIR)
{
    //Create a small explosion first
    if (window == 2)
    {
        if (window_timer == 1 && !hitpause)
        {
            var square = instance_create(x + (2 * spr_dir), y + 5, "obj_article1");
            square.state = 691;
            square.sprite_index = sprite_get("boom");
            square.image_index = 0;
            square.state_timer = 0;
            sound_play(sound_get("sfx_yuuto_crack"));
        }
    }
    //Create a larger explosion next
    if (window == 3)
    {
        if (window_timer == 1 && !hitpause)
        {
            var xPlacer = -20;
            
            if (spr_dir < 0)
            {
                xPlacer = -10;
            }
            
            var square = instance_create(x + (xPlacer), y + 20, "obj_article1");
            square.state = 689;
            square.image_xscale = 1;
            square.image_yscale = 1;
            square.sprite_index = sprite_get("explosionbigger");
            square.state_timer = 0;
            sound_play(sound_get("sfx_yuuto_crashed"));
        }

    }
}

if (attack == AT_DSPECIAL)
{
    if (window == 1 && window_timer == 1)
    {
        if (!hitpause)
        {
            sound_play(sound_get("sfx_yuuto_magic"),false,noone,1,0.99+(random_func(1,1,false)/16));
            //sound_play(sound_get("sfx_yuuto_magic"));
        }
    }
    
    //Prevents accidentall fast falling at the start of the move
    if (window < 2)
    {
        can_fast_fall = false;
    }
    else
    {
        can_fast_fall = true;
    }
    
    //Perform a small jump so that the vortex will be vertically aligned
    //while not falling too much from end lag
    if (window == 1 && window_timer == 1 && free)
    {
        vsp = -3;
    }
    
    //Create the vortex
    if (window == 1 && window_timer == 10)
    {
        absorb = instance_create(x + 240 * spr_dir, y - 32, "obj_article3");
        absorb.player_id = id;
        absorb.player = player;
        absorb.spr_dir = spr_dir;
        move_cooldown[AT_DSPECIAL] = 150;
    }
}

if (nspecialCooldown > 0)
{
    nspecialCooldown -= 1;
}

if (attack == AT_NSPECIAL)
{
    //Perform a small jump so that players will have the chance
    //to reach the rock when trying to recover
    if (window == 1 && window_timer == 1)
    {
        if (!hitpause)
        {
            sound_play(sound_get("sfx_yuuto_magic"),false,noone,1,0.99+(random_func(1,1,false)/16));
            //sound_play(sound_get("sfx_yuuto_magic"));
        }
        if (free)
        {
            vsp = -3;
        }
        
    }
    
    if (window == 6 && window_timer == 1)
    {
        if (!hitpause)
        {
            sound_play(sound_get("sfx_yuuto_snap"));
        }
        
    }
    
    
    if (rockset && instance_exists(rock))
    {
        //Make rock shoot if it exists
        if (window == 5 && window_timer == 1 && (rock.state == 60 || rock.state == 0) && !rock.isShooting)
        {
            rock.isShooting = true;
            rock.shotTimer = 0;
            rock.state = 69;
            rock.lockedDirection = spr_dir;
            rockset = false;
            //window = 3;
            //window_timer = 2;
            move_cooldown[AT_NSPECIAL] = 50;
        }
        //Rock duplicate prevention worst case scenario
        if (window == 1 && window_timer == 1 && ((rock.state != 60 && rock.state != 0) || rock.isShooting))
        {
            state = 3;
            state_timer = 24;
        }
        
        
        
        
        
        //rock already shot, do shorter cooldown
        if (window == 3 && window_timer == 20)
        {
            window = 10;
            window_timer = 10;
        }
        
        //rock just summoned, do longer end lag
        if (window == 1 && window_timer == 1)
        {
            window = 4;
            window_timer = 1;
        }
        
        
    }
    else
    {
        //Summon rock if it doesn't exist
        if (window == 2 && window_timer == 1 && nspecialCooldown < 1)
        {
            rock = instance_create(x+32*spr_dir, y-80, "obj_article2");
            rock.player_id = id;
            rock.player = player;
            previousRockID = rock.id;
            rock.spr_dir = spr_dir;
            rock.hsp = 8 * spr_dir;
            rock.vsp = -6;
            
            rockset = true;
        }
        
        //Rock duplicate prevention worst case scenario
        if (window == 1 && window_timer == 1 && nspecialCooldown > 0)
        {
            state = 3;
            state_timer = 24;
        }
        
        
        
        
    }
    
}

if (attack == AT_FSPECIAL)
{
    //Perform a small jump so that the flame will be vertically aligned
    //while not falling too much from end lag
    
    if (window == 1 && window_timer == 8)
    {
        if (!hitpause)
        {
            sound_play(sound_get("sfx_yuuto_magic"),false,noone,1,0.99+(random_func(1,1,false)/16));
        }
    }
    
    if (window == 1 && window_timer == 1 && free)
    {
        vsp = -5.9;
    }
    else if (flameset == true)
    {
        //Explode flame if it exists NO LONGER USED
        if (window == 3 && window_timer == 1 && flame != noone)
        {
            flame.window_timer = 10;
            flame.hits = 3;
            flameset = false;
        }
        
    }
    else
    {
        //Create a flame
        if (window == 3 && window_timer == 1)
        {
            flame = instance_create(x+32*spr_dir, y-32, "obj_article1");
            flame.player_id = id;
            flame.player = player;
            previousFlameID = flame.id;
            flame.spr_dir = spr_dir;
            flame.hsp = 15 * spr_dir;
            flame.initialHorizontal = flame.hsp;
            
            //Allow aiming the flame up/down
            if (up_down)
            {
                flame.vsp = -7;
                flame.initialVertical = flame.vsp;
            }
            if (down_down)
            {
                flame.vsp = 7;
                flame.initialVertical = 0;//flame.vsp;
            }
            
            //flameset = true;
            move_cooldown[AT_FSPECIAL] = 90;
            //fspecialCooldown = 1;
            
        }
    }

    
}



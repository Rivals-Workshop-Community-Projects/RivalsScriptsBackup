switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case PS_ATTACK_GROUND:
        /*if (attack == AT_FTILT && window_timer == 1) //0
        //if (state == PS_ATTACK_GROUND && attack == AT_FTILT && window == 1 && window_timer == 1)
        {
            var rand = random_func(0,6,true);
            //sprite_index = sprite_get("[NORMAL TAUNT SPRITE]");
            image_index *= rand;
        }*/
    break;
    
    default: break;
}


if (get_player_damage( player ) > 0) 
{
    if(state == PS_IDLE)
    {    
        //sprite_index = sprite_get("idle_damaged0");
        //would be a lot of work... + animation doesn't loop
    }
}



//var rand = 0; //now done in init

if (state == PS_ATTACK_GROUND && attack == AT_FTILT && state_timer == 0)
{
    // Complete random
    //rand = random_func(0,6,true);
    
    // Immer abwechselnd layer 1 / 2
    /*if(rand < 3)
    {    
        rand = random_func(1,3,true) + 3;
    }
    else
    {
        rand = random_func(2,3,true);
    }*/
    
    // Warscheinlicher das abwechselnd, als das gleiches layer nochmal
    var rand2 = random_func(4,100,true)+1;
    if(rand2 < 80)
    {
        if(rand < 3)
        {    
            rand = random_func(5,3,true) + 3;
        }
        else
        {
            rand = random_func(6,3,true);
        }
    }
    else
    {
        if(rand > 2)
        {    
            rand = random_func(7,3,true) + 3;
        }
        else
        {
            rand = random_func(8,3,true);
        }
    }
}

if (state == PS_ATTACK_GROUND && attack == AT_FTILT) //needs to run whole ftilt, but rand only once
{
    if(rand == 0)
    {    
        sprite_index = sprite_get("ftilt");
    }
    if(rand == 1)
    {    
        sprite_index = sprite_get("ftilt2");
    }
    if(rand == 2)
    {    
        sprite_index = sprite_get("ftilt3");
    }
    if(rand == 3)
    {    
        sprite_index = sprite_get("ftilt4");
    }
    if(rand == 4)
    {    
        sprite_index = sprite_get("ftilt5");
    }
    if(rand == 5)
    {
        sprite_index = sprite_get("ftilt6");
    }
}

if(!canAttack && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
{
    var animSpd = 8.5;

    if (state == PS_IDLE)
        sprite_index = sprite_get("idleskinny");
        
    //TODO: start, stop, end, turn
    if (state == PS_WALK)
        sprite_index = sprite_get("walkskinny");
        
    if (state == PS_JUMPSQUAT)
        sprite_index = sprite_get("jumpstartskinny");
        
    if (state == PS_FIRST_JUMP || state = PS_DOUBLE_JUMP || state == PS_IDLE_AIR || state == PS_PRATFALL || state == PS_TUMBLE)
    {
        sprite_index = sprite_get("jumpskinny");
        //mask_index = sprite_get("jumpskinny_hurt"); //doesn't work??
    }
    if(state == PS_WALL_JUMP)
        sprite_index = sprite_get("walljumpskinny");
        
    if (state == PS_WALK_TURN)
    {
        sprite_index = sprite_get("walkturnskinny");
        animSpd = 2;
    }
        
    if (state == PS_LAND)
        sprite_index = sprite_get("landskinny");
        
    if (state_cat == SC_HITSTUN)
        sprite_index = sprite_get("hurtskinny");
        
        
    if (state == PS_CROUCH || state == PS_TECH_GROUND || state == PS_PRATLAND)
        sprite_index = sprite_get("crouchskinny");
        
    if (state == PS_PARRY_START || state == PS_PARRY)
        sprite_index = sprite_get("parryskinny");
        
        
    if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD
    || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD)
        animSpd = 2.75;
    if (state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD)
        sprite_index = sprite_get("rollskinny_forward");
    if (state == PS_ROLL_BACKWARD || state == PS_TECH_BACKWARD)
        sprite_index = sprite_get("rollskinny_backward");
        
    //TODO: start, stop, end, turn
    
    if (state == PS_DASH)
    {  
        sprite_index = sprite_get("dashskinny");
        animSpd = 2.75;
    }
    if (state == PS_DASH_START)
    {  
        sprite_index = sprite_get("dashskinnystart");
        animSpd = 1;
    }
    if (state == PS_DASH_STOP)
    {  
        sprite_index = sprite_get("dashskinnystop");
        animSpd = 2;
        
        //TODO: longer & just better? roll through is more fun tbh
        //sprite_index = sprite_get("idleskinny");
    }
    if (state == PS_DASH_TURN)
    {
        sprite_index = sprite_get("dashskinnyturn");
        animSpd = 1;
    }
        
    if(state == PS_PRATFALL)
        print("NEED 1");
    if(state == PS_LANDING_LAG)
        print("NEED 5");
    if(state == PS_PRATFALL)
        print("NEED 8");
    if(state == PS_TUMBLE)
        print("NEED 10");
    if(state == PS_WALL_TECH)
        print("NEED 12");
    if(state == PS_WRAPPED)
        print("NEED 13");
    if(state == PS_FROZEN)
        print("NEED 14");
        
        
    if (state == PS_WAVELAND)
        sprite_index = sprite_get("wavelandskinny");
        
    //animate
    if(state != PS_CROUCH)
        image_index = floor(image_number*state_timer/(image_number * animSpd));
}


if (state == PS_AIR_DODGE)
{
    if(!canAttack)
        sprite_index = sprite_get("airdodgeskinny");
    else
        sprite_index = sprite_get("airdodge");
        
    if(!airInverse)
        image_index = floor(image_number*state_timer/(image_number * 2));
    else
        image_index = image_number-floor(image_number*state_timer/(image_number * 2));
}


if(state == PS_SPAWN)
{
    sprite_index = sprite_get("intro");
    
    //print_debug("spawn " + string(state_timer));
    //-> 0-125, but you only really see after 15
    
    if(state_timer == 1)
        spawnRepeat++;
    
    var startTime = 25;
    if(spawnRepeat > 1)//fix for dracula
    {
        sprite_index = sprite_get("idle");
        image_index = floor(image_number*state_timer/(image_number * 12.5));
    }
    else if(state_timer > startTime)
    {
        //image_index = floor(image_number*state_timer/(image_number * 10));
        //image_index = floor(state_timer / 15.625);
        //image_index = floor((state_timer/125) * image_number);
        image_index = floor(((state_timer-startTime)/(125-startTime)) * image_number);
        if(image_index >= image_number)
            image_index = image_number-1;
            
        if(image_index > 5 && image_index < 20)
        {
            //sound_play( asset_get( "mfx_back" ) );
            //sound_play( sound_get( "assembly27"), false, noone, 1);
            var nr = random_func(0, 27, true)+1;
            if(nr < 10)
                nr = "0"+string(nr);
            else
                nr = string(nr);
            sound_play(sound_get("assembly" + nr), false, noone, 1, 1);
        }
    }
    else
    {
        image_index = 0;
    }
    
    if(state_timer == 125)
    {
        state = PS_IDLE;
        state_timer = 0;
    }
}



/*if(inTauntWindowAir)
{
    //image_index = floor(image_number * (state_timer - startFrames) / (image_number * 10));
    image_index = floor((airTauntFrames+tauntStartFrames) * tauntWindowTimer / 
    ((airTauntFrames+tauntStartFrames) * tauntAirLengthTotal));
}
if(inTauntWindowFloor)
{
    image_index = floor((floorTauntFrames-tauntStartFrames) * tauntWindowTimer / 
    ((floorTauntFrames-tauntStartFrames) * tauntFloorLengthTotal * 0.6)) + tauntStartFrames;
}*/
/*if (inTauntWindowAir && state_timer > tauntStartFrames)
{
    //ease_expoInOut
    //image_index = ease_linear(tauntStartFrames, image_number, state_timer, floor(tauntAirLengthTotal * 60));
    //image_index = ease_linear(tauntStartFrames, airTauntFrames, state_timer, floor(tauntAirLengthTotal * 60));
    image_index = ease_linear(1, airTauntFrames-tauntStartFrames, tauntWindowTimer, floor(tauntAirLengthTotal * 60)) + tauntStartFrames;
    print(string(image_index) + " / " + string(state_timer) + " / " + string(tauntWindowTimer));
}
if (inTauntWindowFloor && state_timer > tauntStartFrames)
{
    //image_index = ease_linear(tauntStartFrames, floorTauntFrames, state_timer, floor(tauntFloorLengthTotal * 60));
    image_index = ease_linear(1, floorTauntFrames-tauntStartFrames, tauntWindowTimer, floor(tauntFloorLengthTotal * 60)) + tauntStartFrames;
    print(string(image_index) + " / " + string(state_timer) + " / " + string(tauntWindowTimer));
    
}*/

/*
if (inTauntWindowFloor && state_timer > tauntStartFrames - 1)
{
    tauntTimer += customEase(arr[image_index-tauntStartFrames]);
    if(tauntTimer > 1)
        image_index ++;
    //image_index += 0.2;
    print(image_index);
}
*/


#define customEase(arr, time)
return arr[floor(arr.length * time)];
if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP)
	groundswitch = 0

if (!free or state == PS_WALL_JUMP){
   move_cooldown[AT_USPECIAL] = 0;
   move_cooldown[AT_FSPECIAL_AIR] = 0;
   nspec_stall = 0;
   dspec_stall = 0;
}

if (state == PS_DASH_TURN  && state_timer == 1)   {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1)
}

if (state == PS_DASH && (state_timer % 10 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_waveland_zet"))
    sound_play(asset_get("sfx_waveland_zet"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if (state == PS_WALK && (state_timer % 20 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

// update afterimage array
var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

if(fast_fwd)
{
    if(get_gameplay_time()% 4 == 0) 
        CreateAfterimage();
    if(fast_timer != 0 && !hitpause) fast_timer --; else if (!hitpause) fast_fwd = false;
    if(nspec_target_timer != 0) nspec_target_timer--;
    if(nspec_target != noone)
    {
        shoot_x = nspec_target.x;
        shoot_y = nspec_target.y-floor(char_height/2);
        if(nspec_target.state == PS_RESPAWN)
        {
            nspec_target = noone;
            nspec_target_timer = 0;
        }

    }
    else nspec_shells = 0;
    set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("ffshine"));
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2);
}
else if(attack != AT_NSPECIAL_2 && attack != AT_DSPECIAL_2) 
{
    reset_attack_value(AT_DSPECIAL_2, AG_SPRITE);
    reset_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE);
    nspec_target = noone;
    nspec_target_timer = 0;
    nspec_shells = 0;
}
with(oPlayer)
{
    if(desirae_timelock)
    {
        switch(desirae_time_mode)
        {
            case 0: // BUILD UP
            {
                if(!hitpause || state_cat != SC_HITSTUN) 
                    desirae_time_left --; //remove time unless being hit

                if(get_player_damage(player) >= desirae_time_percent)
                {
                    white_flash_timer = 10;
		            desirae_time_mode = 1;
                    desirae_time_x = x;
                    desirae_time_y = y;
                    sound_play(asset_get("sfx_abyss_despawn"));
                }
                else if(desirae_time_left <= 0) //whoops too bad
                {
                    white_flash_timer = 10;
                    sound_play(asset_get("sfx_coin_collect"));
                    desirae_timelock = false;
                    desirae_rewind_state = 0;
                    desirae_rewind_spots = 0;
                    desirae_time_state = 0;
                }
            }
            break;
            case 1: // REWIND 
            {
                can_tech = false;
                can_wall_tech = false;
                desirae_time_state = hitstun;
                //Keep marking spots as long they have a timer on.
                if((desirae_time_state >= 4+floor(desirae_rewind_spots/1.5) || state == PS_HITSTUN_LAND) && desirae_rewind_state == 0)
                {
                    if(get_gameplay_time() % clamp(10-floor((vsp+hsp)/6),2,20) == 0) //every 10 ticks save position
                    {
                        desirae_rewind_spot[desirae_rewind_spots] = [x,y];
                        desirae_rewind_spots ++;
                    }
                }
                else
                {
                    hitpause = true;
                    switch(desirae_rewind_state)
                    {
                        case 0: //REWIND SETUP!
                            desirae_rewind_spots --; 
                            desirae_rewind_spot[desirae_rewind_spots] = [x,y];
                            desirae_rewind_spot[0] = [desirae_time_x, desirae_time_y];
                            //Keep them in stun
                            set_state(PS_HITSTUN);
                            last_player = noone;
                            desirae_rewind_state = 1;
                            white_flash_timer = 10;
                            hitstun = 5*(3+desirae_rewind_spots);
                            sound_play(asset_get("sfx_clairen_sword_deactivate"));
                            can_tech = false;
                            can_wall_tech = false;
                        break;
                        case 1: //Zoom into the last few positions
                            var temppos = desirae_rewind_spot[desirae_rewind_spots];
                            x = temppos[0];
                            y = temppos[1];
                            if(y < 0) y = 5; else if(y > view_get_hview()) y = view_get_hview()-5;
                            if(x < 0) x = 5; else if(x > view_get_wview()) x = view_get_wview()-5;
                            
                            if(last_player != noone || (state == PS_RESPAWN || state == PS_DEAD)) //If hit
                            {
                                desirae_timelock = false;
                                desirae_rewind_state = 0;
                                desirate_rewind_spots = 0;
                                exit;
                            }
                            if(get_gameplay_time() % 2 == 0)
                            {
                                if(desirae_rewind_spots != 0) 
                                    desirae_rewind_spots --; 
                                else desirae_rewind_state = 2;
                            }
                        break;
                        case 2: //Finish!
                            x = desirae_time_x;
                            y = desirae_time_y;
                            desirae_timelock = false;
                            desirae_time_state = 0;
                            desirae_rewind_spots = 0;
                            white_flash_timer = 4;
                            with(other) //OLD REWIND HITBOX CAN BE REACTIVATED
                            {
                                hbox = create_hitbox(AT_DSPECIAL_2, 2,other.x,other.y)
                                hbox.extra_hitpause = 10;
                                if(other.player == player)
                                {
                                    for(i = 0; i<4; i++)
                                        if(i != player) hbox.can_hit[i] = false;
                                    hbox.can_hit_self = true;
                                }
                                move_cooldown[AT_DSPECIAL] = 60;
                            }
                        break;
                    }
                }
            }
            break;
        }
    }
    if(state == PS_RESPAWN || state == PS_DEAD || other.state == PS_RESPAWN)
    {
        desirae_timelock = false;
        desirae_rewind_state = 0;
        desirae_rewind_spots = 0;
        desirae_time_state = 0;
        if(other.nspec_target == id && (state == PS_RESPAWN || state == PS_DEAD))
        {
            print_debug('arf')
            other.nspec_target = noone;
            other.nspec_target_timer = 0;
            other.nspec_shells = 0;
        }
    }
}

if(state == PS_RESPAWN)
{
    fast_fwd = false;
    nspec_target = noone;
    nspec_shells = 0;
    nspec_target_timer = 0;
} 

hud_timing ++;

if(hud_timing > 30) hud_timing = 0;
#define CreateAfterimage()
{
    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:$AAA200 , timer:0, timerMax:20};
}

/*
if ((state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) && state_timer == 1)  {
    sound_stop(sound_get("ha"))
    sound_play(sound_get("ha"),false,noone,0.6, 1)
}

if (state == PS_FIRST_JUMP && state_timer == 1)  {
    sound_stop(sound_get("hoo"))
    sound_play(sound_get("hoo"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}



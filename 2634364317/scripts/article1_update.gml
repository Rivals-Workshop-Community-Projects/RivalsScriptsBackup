//article update

#macro AUDIENCE_EMPTY    -1
#macro AUDIENCE_IDLE      0
#macro AUDIENCE_IDLING1   1
#macro AUDIENCE_GASPING   2
#macro AUDIENCE_CHEERING  3
#macro AUDIENCE_JUMPING   4
#macro AUDIENCE_JUMPTWIRL 5
//note that the order is important: "higher" states take priority
#macro AUDIENCE_THROW     7

#macro GRAVITY         0.55
#macro ROCK_GRAVITY    0.35

//audience hype resets
if (react_timer > 0)
{ react_timer--; }
else 
{ react_type = 0; }

//attempt to throw rock
if (is_aether_stage() && react_timer == 0)
{
    rock_throw_timer--;
    if (rock_throw_timer <= 0)
    {
        if (random_func_2(7, 100, false) < rock_throw_chance)
        {
            //pick audience member to throw a rock
            var i = random_func_2(17, audience_number, true);
            with (audience_array[i]) if (self != noone)
            {
                set_state(AUDIENCE_THROW);
            }
            rock_state = 1; //shows warning
            pick_rock_target();
        }
        rock_throw_timer = rock_throw_min_wait 
             + random_func_2(11, rock_throw_max_wait - rock_throw_min_wait, true);
    }
}
//warning only
if (rock_state == 1)
{
    rock_obj.timer++; //for animation of warning
}
else if (rock_state == 2) with (rock_obj)
{
    timer++;
    x += hsp;
    y += vsp;
    vsp += ROCK_GRAVITY;
    
    if (timer == timer_max)
    {
        with (other)
        {
            create_hitbox(AT_EXTRA_1, 1, floor(rock_obj.x), floor(rock_obj.y));
            sound_play(asset_get("sfx_blow_weak2"), false, 0, 1, 1);
        }
        vsp = -3;
        hsp = sign(hsp) * -2;
    }
    
    if (y > 1000) rock_state = 0;
}



//audience update
for (var i = 0; i < audience_number; i++)
{
    with (audience_array[i]) if (self != noone)
    {
        //reset a few parameters
        subimg = 0; //normal sprite
        var new_xscale = 1; //forward
        //slight breathing effect
        var new_yscale = 1 + (abs((state_timer % 120) - 60) * 0.001);
        
        //apply gravity in case of jumping
        y += vsp;
        if (y < 0)
        { vsp += GRAVITY; }
        if (y > 0)
        { y = 0; vsp = 0; }
        
        //audience can always react to something more "hype" than what they are currently doing
        var tried_reacting;
        if (other.react_type > state) 
        {
            tried_reacting = true;
            try_react(other.react_type);
        }
        
        switch (state)
        {
            //============================================================
            case AUDIENCE_IDLE:
                
                if !tried_reacting && !in_cooldown()
                {
                    //select random idling activity
                    var rng = random_func_2((36 + i)%200, 100, true)
                    if (rng > 90)
                    {
                        set_state(AUDIENCE_IDLING1);
                    }
                    //else if (rng > 75)
                    //{
                    //    //set_state(MORE_IDLING_STATES_HERE);
                    //}
                    else
                    {
                        set_cooldown(120, 240);
                    }
                }
            break;
            //============================================================
            case AUDIENCE_IDLING1:
                //peeking at players
                var turn_frames = 15;
                var pause_frames = 15;
                
                if (state_timer < turn_frames)
                {
                    new_xscale = 0.01 * ease_sineIn(100, -100, state_timer, turn_frames);
                }
                else if (state_timer < turn_frames + pause_frames)
                {
                    new_xscale = -1;
                }
                else if (state_timer < turn_frames + pause_frames + turn_frames)
                {
                    new_xscale = 0.01 * ease_sineIn(-100, 100, state_timer-turn_frames-pause_frames, turn_frames);
                }
                else
                {
                    set_state(AUDIENCE_IDLE);
                    set_cooldown(60, 240);
                }
            break;
            //============================================================
            case AUDIENCE_CHEERING:
                subimg = 1; //jumping sprite
                
                var rising_time = 5;
                var total_time = 60;
                
                if (state_timer < rising_time)
                {
                    //rising stretch
                    new_yscale = 1 + 0.01 * max(0, ease_quadOut(0, 40, state_timer, rising_time));
                }
                else if (state_timer < total_time)
                {
                    //lowering stretch
                    new_yscale = 1 + 0.01 * max(0, ease_sineOut(40, 0, state_timer, total_time));
                }
                else
                {
                    set_state(AUDIENCE_IDLE);
                    set_cooldown(60, 240);
                }
            break;
            //============================================================
            case AUDIENCE_GASPING:
            
                var rising_time = 5;
                var total_time = 60;
                if (state_timer < rising_time)
                {
                    //rising worried stretch
                    new_yscale = 1 + 0.01 * max(0, ease_quadOut(0, 30, state_timer, rising_time));
                }
                else if (state_timer < total_time)
                {
                    //lowering worried stretch
                    new_yscale = 1 + 0.01 * max(0, ease_sineOut(30, 0, state_timer, total_time));
                }
                else
                {
                    set_state(AUDIENCE_IDLE);
                    set_cooldown(60, 240);
                }
            break;
            //============================================================
            case AUDIENCE_JUMPING:
                subimg = 1; //jumping sprite
                
                if (y > -2)
                {
                    if (state_timer > 15)
                    {
                        set_state(AUDIENCE_IDLE);
                        set_cooldown(60, 240);
                    }
                    else
                    {
                        vsp = -8 - random_func_2(6, 3, false);
                    }
                }
            break;
            //============================================================
            case AUDIENCE_JUMPTWIRL:
                subimg = 1; //jumping sprite
                
                if (y > -2)
                {
                    if (state_timer > 15)
                    {
                        set_state(AUDIENCE_IDLE);
                        set_cooldown(60, 240);
                    }
                    else
                    {
                        vsp = -8 - random_func_2(2, 3, false);
                        can_twirl = random_func_2(13, 100, false) > 35; //%chance not to twirl
                    }
                }
                //like jump but adds spin
                if (can_twirl) new_xscale = cos(state_timer/5);
            break;
            //============================================================
            case AUDIENCE_THROW:
                subimg = 1; //jumping sprite
                
                new_yscale = 1;
                if (state_timer > 120) //2 seconds
                {
                    vsp = -5;
                    with (other) { start_rock_throw(other); }
                    set_state(AUDIENCE_IDLE);
                    set_cooldown(60, 240);
                }
            break;
            //============================================================
        }
        
        state_timer++;
        xscale = lerp(xscale, new_xscale, 0.6);
        yscale = lerp(yscale, new_yscale, 0.3);
    }
}


//audience defines
//===========================================
#define set_state(new_state)
{
    state = new_state;
    state_timer = 0;
    react_delay = random_func_2(3 + (num % 100), 20, true);
}
//===========================================
#define in_cooldown()
{
    cooldown--;
    return cooldown > 0;
}
//===========================================
#define try_react(react_state)
{
    react_delay--;
    if (react_delay <= 0)
    {
        set_state(react_state);
        cooldown = 0;
    }
}
//===========================================
#define set_cooldown(min_cd, max_cd)
{
    cooldown = max(0, min_cd) + random_func_2(7, max(2, max_cd - min_cd), true);
}
//rock throw
//===========================================
#define pick_rock_target()
{
    var random_player_num = random_func_2(18, instance_number(oPlayer), true);
    var rand_id = instance_find(oPlayer, random_player_num);
    
    var fwd_frames = 12; //nuber of frames to look ahead (hsp/vsp)
    rock_obj.target_x = rand_id.x + rand_id.hsp * fwd_frames;
    rock_obj.target_y = rand_id.y + (rand_id.vsp * fwd_frames + (GRAVITY*fwd_frames)) + rand_id.char_height/2;
    rock_obj.target_x += random_func_2(19, 120, true) - 60;
    rock_obj.target_y += random_func_2(20, 120, true) - 60;

    rock_obj.target_x = clamp(rock_obj.target_x, rock_targetx_min, rock_targetx_max);
    rock_obj.target_y = clamp(rock_obj.target_y, rock_targety_min, rock_targety_max);
}
#define start_rock_throw(thrower)
{
    var start_x = x + thrower.x + thrower.seat_x;
    var start_y = y + thrower.y + thrower.seat_y + rock_held_height;
    
    with (rock_obj)
    {
        timer_max = 45;
        timer = 0;
        x = start_x;
        y = start_y;
        hsp = (target_x - x) * 1.0/timer_max;
        vsp = (target_y - y) * 1.0/timer_max - timer_max * ROCK_GRAVITY/2;
    }
    
    rock_state = 2; //begun throw
}
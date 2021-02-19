//update
if free
{
    air = 1;
    ground1 = 0;
    move_cooldown[AT_FSPECIAL_2] = 10;
    if (slot = 0)
    {
        move_cooldown[AT_DSPECIAL] = 10;
    }
}
else 
{
    air = 0;
    ground1 = 1;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{
    air_max_speed = 4.5;
    air_accel = .3;
    air_friction = .04;
}
if (state == PS_SPAWN)
{
    if (taunt_pressed == true)
    {
        voice = 0;
        voice_text = 1;
    }
}

if (state_cat == SC_AIR_NEUTRAL or state_cat == SC_AIR_COMMITTED or state == PS_JUMPSQUAT)
{
    if (evidence1 == 7)
    {
        move_cooldown[AT_DSPECIAL] = 10;
    }
}

if (state != PS_IDLE)
{
    idle = 0;
}
else if (state == PS_IDLE)
{
    land = 0;
}

if (slot == 3)
{
    move_cooldown[AT_FSPECIAL_2] = 10;
}

if (state != PS_ATTACK_GROUND and popup = 0 and state_timer = 5)
{
    popup -= 1;
}
if (attack == AT_USPECIAL)
{
    if (window == 1 and window_timer == 0)
    {

        frame = 0;
    }
}

if (psychedraw == 1)
{
    move_cooldown[AT_USTRONG] = 10;
    if (frame2 < 54)
    {
        frame2 += 1;
        if (frame2 < 12)
        {
            chain += 1;
        }
        else if (frame2 >= 12 and frame2 < 37)
        {
            chain = 12;
            if (lock < 16)
            {
                lock += 1;
                if (lock == 3)
                {
                    sound_play(sound_get("sfx-lock"));
                }
            }
        }
        else if (frame2 >= 37 and frame2 < 54)
        {
            chain -= 1;
            if (lock < 22 and frame2 mod 3 = 0)
            {
                lock += 1;
            }
        }
        if (frame2 == 36)
        {
            create_hitbox(AT_USTRONG, 3, x3, y3);
        }
    }
    else if (frame2 == 54)
    {
        psychedraw = 0;
        frame2 = 0;
        chain = 0;
        lock = -1;
    }
}

if (infected == 1)
{
    if (get_gameplay_time() < old_time)
    {
        if (get_gameplay_time() % 50 = 0)
        {
            take_damage(hit_player_obj.player, player, 1); 
        }
    }
    else if (get_gameplay_time() == old_time)
    {
        hit_player_obj.infect = 0;
        infected = 0;
    }
}

if(stuff == 1)
{
    if (frame < 14 and get_gameplay_time() % 3 == 0)
    {
        frame += 1
    }
    if (frame == 14)
    {
        frame = -1
        stuff = 0;
    }
}

if (safe = 1 and (prev_state == PS_HITSTUN or prev_state == PS_HITSTUN_LAND))
{
    slot -= 1;
    investigate = -1;
    safe = 0;
}

if (state = PS_RESPAWN)
{
    outline_color = [0,0,0];
    turnabout = 0;
}
if(turnabout = 1)
{
    move_cooldown[AT_FSPECIAL_2] = 10;
    initial_dash_speed = 6.75;
    dash_speed = 7;
    if (bout_timer > 0 and hit_player_obj.state != PS_RESPAWN)
    {
        bout_timer -= 1;
    }
    else if (bout_timer == 0)
    {
        turnabout = 0;
        initial_dash_speed = 6;
        dash_speed = 5.5;
    }
    
    if (hit_player_obj.state == PS_RESPAWN and hit_player_obj.state_timer == 1)
    {
        bout_timer += 300;
    }
}

if (hit_player_obj.state == PS_RESPAWN and hit_player_obj.state_timer == 1)
{
    infected = 0;
    hit_player_obj.infect = 0;
}

if (swallowed)
{
    swallowed = 0;
    var ability_spr = sprite_get("nspecial_kirby");
    var ability_hurt = sprite_get("nspecial_kirby_hurt");
    var ability_icon = sprite_get("badge");
    var ability_sfx = sound_get("SpeechBubble")
    with (enemykirby)
    {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 13);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 26);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 13);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 15);
        
        set_num_hitboxes(AT_EXTRA_3,1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 100);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -40);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 75);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 110);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .9);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    }
}
init_shader();
//if hit
if(!hitpause)
{
    if(instance_exists(smashed_player))
    {
        with(smashed_player)
            sent_down = false;
        smashed_player = noone;
    }
}
if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)
{
    draw_y = 0;
    uspecUsed = false;
    fspecUsed = false;
}

if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
{
    can_break = false;
    break_table = false;
    specEnhanced = false;
    grabbed_player_obj = noone; 
    reset_attack_value(AT_FSPECIAL, AG_CATEGORY);
}

if(state == PS_RESPAWN && state_timer == 1)
    crowdHype = clamp(crowdHype-5,0,10);

if(instance_exists(crowdVictim))
{
    //SuperHyped to see them killed
    if((crowdVictim.state == PS_DEAD || crowdVictim.state == PS_RESPAWN))
    {
        if(crowdHype >= 15)
        {
            sound_play(sound_get("crowd_awesome"), false, noone, 0.7, 1.0)
            crowdHype = 0;
        }
        else
            crowdHype ++;
        crowdVictim = noone;
        exit;
    }
    //Get Galaxied!
    if(crowdVictim.activated_kill_effect)
    {
        //Chant if its a grab that kills
        if(crowdHype >= 5)
        {
            if(random_func( 2, 100, false ) > 50)
                sound_play(sound_get("crowd_galaxy"), false, noone, 0.6, 1.1)
            else
                sound_play(sound_get("crowd_galaxy2"), false, noone, 0.6, 1.1)
        }
        crowdHype ++;
        crowdVictim.activated_kill_effect = false;
    }
}

if(uspecUsed)
    move_cooldown[AT_USPECIAL] = 4;
if(fspecUsed)
    move_cooldown[AT_FSPECIAL] = 4;

if(crowdCooldown > 0)
    crowdCooldown --;

// afterimage
if (afterImageTimer > 0)
{
    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10};
    afterImageTimer--;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;

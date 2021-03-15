//update

if (!free)
{
    fspe_stall = 0;
}
 
if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_EXTRA_1)
{
    if (window_timer > 4)
    {
        set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
    }
    else
    {
        set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
    }
    
}
else
{
    set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
}

/*
if !(((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_NSPECIAL))
{
    counter = false;
    counter_opp = noone;
}
*/
if !(((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_USPECIAL))
{
    set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_ground"));
    set_attack_value(AT_USPECIAL, AG_CATEGORY, 2)
}
// ustrong
if (picture_draw)
{
    picture_draw -= 1
}

if (tired_timer)
{
    tired_timer -= 1;
}

if (state != PS_CROUCH)
{
    if (instance_exists(tired_obj))
    {
        tired_obj.x = -10000
        tired_obj.y = -10000
    }
}
switch(state)
{
    case PS_CROUCH:
        if (state_timer == 4) and (!tired_timer)
        {
            tired_timer = 10;
            tired_obj = spawn_hit_fx( x - 16 * spr_dir, y - 28, tired_effect );
            sound_stop(sound_get("pause"))
            sound_play(sound_get("pause"))
        }
    break;
    case PS_ROLL_FORWARD:
    case PS_TECH_FORWARD:
        switch(state_timer)
        {
            case 3:
                spawn_hit_fx( x, y, gap_front_effect );
            break;
            case 13:
                roll_forward_max = 126;
                techroll_speed = 140;
            break;
            case 14:
                roll_forward_max = 0;
                techroll_speed = 0;
                sound_play(sound_get("gap"))
            break;
        }
    break;
    case PS_ROLL_BACKWARD:
    case PS_TECH_BACKWARD:
        switch(state_timer)
        {
            case 3:
                spawn_hit_fx( x, y, gap_back_effect );
            break;
            case 13:
                roll_backward_max = 126;
                techroll_speed = 140;
            break;
            case 14:
                roll_backward_max = 0;
                techroll_speed = 0;
                sound_play(sound_get("gap"))
            break;
        }
    break;
    case PS_AIR_DODGE:
        if (state_timer > 0) and (state_timer < 14)
        {
            draw_indicator = false;
        }
        
        switch(state_timer)
        {
            case 0:
                ad_x = x;
                ad_y = y;
                
            break;
            case 1:
                draw_x = 3000;
                draw_y = 3000;
                
                sound_play(asset_get("sfx_quick_dodge"))
            break
            case 14:
                sound_stop(sound_get("gap"));
                sound_play(sound_get("gap"));
            break;
        }
    break;
    
}

with (oPlayer)
{
    if (self != other)
    {
        if !((state_cat = SC_HITSTUN) and (hitpause))
        {
            true_old_hsp = hsp;
            true_old_vsp = vsp;
        }
    }
}

if (state == PS_PRATFALL)
{
    max_fall = max_fall_pratfall;
}
else
{
    max_fall = max_fall_ref;
}


// RUNE A
if (has_rune("A"))
{
    if !((state == PS_AIR_DODGE) or (state == PS_ROLL_BACKWARD) or (state == PS_ROLL_FORWARD) or (state == PS_TECH_FORWARD) or (state == PS_TECH_BACKWARD))
    {
        if !((((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_NSPECIAL)) and (window < 3))
        {
            hurtboxID.sprite_index = sprite_get("small_hurtbox");
        }
        else
        {
             hurtboxID.sprite_index = sprite_get("nothing");
        }
    }
    else
    {
        hurtboxID.sprite_index = sprite_get("nothing");
    }
}




// TRUMMEL CODEC

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 15;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "anime";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "again";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Come on, nobody chose to";
    trummelcodecline[page,2] = "be anime or not. Animo-";
    trummelcodecline[page,3] = "phobia is a thing people";
    trummelcodecline[page,4] = "are really sensitive about.";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "k ill try my hardest";
    trummelcodecline[page,2] = "to be inclusive";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "i have succeeded";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Awesome! That lad over";
    trummelcodecline[page,2] = "there is Seija Kijin. She's";
    trummelcodecline[page,3] = "an Amanojaku known for";
    trummelcodecline[page,4] = "reversing stuff.";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "And she can obviously";
    trummelcodecline[page,2] = "do that in Rival as well,";
    trummelcodecline[page,3] = "with her Fspecial.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "It can be very dangerous";
    trummelcodecline[page,2] = "if we are trying to go";
    trummelcodecline[page,3] = "back on stage.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Having our momentum";
    trummelcodecline[page,2] = "suddenly inverted can";
    trummelcodecline[page,3] = "be confusing so stay";
    trummelcodecline[page,4] = "focused.";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Don't forget to mind";
    trummelcodecline[page,2] = "those Bombs she places, ";
    trummelcodecline[page,3] = "they are pretty powerful.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "But in the other hand,";
    trummelcodecline[page,2] = "she is also affect by the";
    trummelcodecline[page,3] = "explosion so we can use";
    trummelcodecline[page,4] = "this to our advantage!";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "tahw wow";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "gaow";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Err.. Trummel, are";
    trummelcodecline[page,2] = "you alright?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "taht ekil tnod i";
    trummelcodecline[page,2] = "otla em pleh";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = ".gniyas era uoy tahw";
    trummelcodecline[page,2] = "dnatsrednu t'nod I";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
     //Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "!gnidaerps s'ti on hO";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
     //Page 15
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "sgg mettog haha";
    trummelcodecline[page,2] = "rats live on no evil star";
    trummelcodecline[page,3] = "...";
    trummelcodecline[page,4] = "";
    page++; 

    //repeat...
}


if (!Erune_set)
{
    for (var att = 0; att < 38; att += 1)
    {
        for (var ind = 0; ind < 5 ind += 1)
        {
            set_hitbox_value(att, ind, HG_ANGLE, get_hitbox_value(att, ind, HG_ANGLE) + 180)
        }
    }
    Erune_set = true;
}


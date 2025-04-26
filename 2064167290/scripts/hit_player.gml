//hit_player



// bouncing dair off of player
if (my_hitboxID.attack == AT_DAIR) 
{
    if (state_cat != SC_HITSTUN)
    {
        destroy_hitboxes()
        attack_end();
        set_attack(AT_EXTRA_1);
        hurtboxID.sprite_index = sprite_get("dairbounce_hurt")
        vsp = 0;
        has_hit = true
    }
}

// Pale hitting with the sweetspot
if (my_hitboxID.attack == AT_USTRONG) 
{
    has_hit = true
    
    if (my_hitboxID.hbox_num == 3)
    {
        with (obj_article2)
        {
            if (player_id == other)
            {
                //pale_sweetspot = true;
                state = 2;
                state_timer = 0;
                image_index = 0;
                sprite_index = sprite_get("ustrong_pale_hurt");
            }
        }
    }
    
  
}


// bouncing dtilt timer
if (my_hitboxID.attack == AT_DTILT) 
{
    if (state_cat != SC_HITSTUN)
    {
        destroy_hitboxes()
        attack_end();
        set_attack(AT_EXTRA_2);
        hurtboxID.sprite_index = sprite_get("dtiltbounce_hurt")
        vsp = 0;
        
        // the late hitbox doesn't send hana as high
        if (my_hitboxID.hbox_num == 1)
        {
            set_window_value( AT_EXTRA_2, 2, AG_WINDOW_VSPEED, -7 )
        }
        else
        {
            set_window_value( AT_EXTRA_2, 2, AG_WINDOW_VSPEED, -5 )
        }
    }
    
}

// turntable hitting someone
if (my_hitboxID.attack == AT_DSPECIAL) //and (my_hitboxID.hbox_num == 1)
{
    with (obj_article1)
    {
        if (player_id == other)
        {
            if (col != 3) 
            {
                hsp = -hsp / 3;
                vsp = -9 - (hsp == 0) * 2;
                
                
                if (!player_id.runeI)
                {
                    can_hit = false;
                }
                else
                {
                    runeI_timer = 10;
                }
                
            }
            
            var me = self;
            if (col == 3)
            {
                hitstop = 4;
            }
            else
            {
                hitstop = 9;
            }
        }
    }
    me.PV -= get_hitbox_value( AT_DSPECIAL, me.col + 1, HG_DAMAGE );
}


// uspecial combo
if (my_hitboxID.attack == AT_USPECIAL)
{
    can_uspecial_combo = true;
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}


// shield cd throw
if (my_hitboxID.attack == AT_NSPECIAL_2)
{
    if (my_hitboxID.hbox_num == 4)
    {
        ycd_id = my_hitboxID;
        ycd_timer = 10;
    }
       
}


if (my_hitboxID.attack == AT_FSPECIAL)
{
    if (state_cat != SC_HITSTUN)
    {
        destroy_hitboxes()
        attack_end();
        set_attack(AT_EXTRA_1);
        window_timer = 4;
        hurtboxID.sprite_index = sprite_get("dairbounce_hurt");
        sound_play(sound_get("bounce"));
        vsp = 0;
        move_cooldown[AT_FSPECIAL] = 0;
    }
}
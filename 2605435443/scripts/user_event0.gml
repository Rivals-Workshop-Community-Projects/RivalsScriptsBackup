//Noise Cancelling Code


//check input
var parry_input
if (right_pressed || left_pressed || (down_pressed && !free)){
    parry_input = true;
}
else
    parry_input = false;

//check for 3Sparry input
if parry_input && !noise_cancel && !was_parried && !shield_pressed &&
(state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_DASH_START) && 
nc_cooldown == 0
{
     ncparry_timer = 14; //window that can 3Sparry
     
     //3Sparry direction
     if (right_pressed)
     nc_dir = 1;
     if (left_pressed)
     nc_dir = -1;
     
     if (down_pressed)
     nc_dir = spr_dir;
     
}

if (right_pressed || left_pressed || (down_pressed && !free)){ //set cooldown
    nc_cooldown = 13;
}   
   

if (ncparry_timer > 0 && !noise_cancel)
{
    ncparry_timer--;
     
with (pHurtBox)
{
    if (player = other.player)
    other.hurtboxobj = id;
    
}
    
with (pHitBox)
    {
        
        if (place_meeting(x, y, other.hurtboxobj))//collission check with hitbox
        {
            var teamattack = get_match_setting( SET_TEAMATTACK );
            if (((get_player_team( other.player ) != get_player_team( player )) && teamattack == 0) || teamattack == 1) && //check teams and team attack
            (other.last_hbox_num == hbox_num && other.last_attack == attack && other.last_player == player) && //check for which specific hitbox has hit
            (((other.x > player_id.x && other.nc_dir = -1) || (other.x < player_id.x && other.nc_dir = 1)) && type = 1) || //check if parrying the correct side for physical
            (((other.x > player_id.x && other.nc_dir = -1) || (other.x < player_id.x && other.nc_dir = 1)) && type = 2) //check if parrying the correct side for projectile
            {
                with (other) //'other' is big band
                {

                    
                    //overwrites force from knockback as momentum saved from previous frame
                    old_vsp = nc_vsp;
                    old_hsp = nc_hsp;
                    
                    //some hitboxes turn the player around so spr_dir needs to be overridden
                    spr_dir = nc_dir;
                    
                    if (free) //makes sure that player will not enter hitstun state
                    state = PS_IDLE_AIR;
                    else if (!free)
                    state = PS_IDLE;
                    
                    nchbox_type = other.type; //this other is the hitbox itself
                    noise_cancel = true;
                    ncenemy = other.player_id; //set the hitbox owner as ncenemy
                    
                    
                    switch (other.effect)
                    {
                        case 1:
                            if !prev_burn
                            burned = false;
                            burn_timer = prev_burn_timer;
                        break;
                        
                        case 4:
                            if !prev_wrap
                            wrapped = false;
                        break;
                        
                        case 6:
                            if !prev_mark
                            marked = false;
                        break;
                        
                        case 10:
                            if (poison != 4)
                            poison -= 1;
                        break;
                    }
                    
                    //workshop compatibility
        
                        if (ncenemy.url == 1866016173){ //guadua
                            if !prev_bamboo
                            bambood = false;
                        }
                }
                
                    take_damage( other.player, -1, floor(-(damage/2)) ) //heal half of damage
                    player_id.has_hit = false;
                    player_id.has_hit_player = false;
                    was_parried = true;
            
            }
        }
        else //check effect before getting hit
        {
            with (other)
            {
                prev_burn = burned;
                prev_burn_timer = burn_timer;
                prev_mark = marked;
                prev_wrap = wrapped;
                prev_bamboo = bambood;
            }
        }
    }
    
}

//this happens during the actual 3Sparry
if (noise_cancel)
{
    if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    set_attack(AT_EXTRA_1);
}
    if (ncparry_timer > 0) 
    {
        nc_cooldown = 0;
    //apply hitstop and preserve momentum of enemy if physical hitbox
        if (nchbox_type = 1)
        {
        ncenemy.hitpause = true;
        ncenemy.hitstop = 22;
        ncenemy.old_vsp = ncenemy.vsp;
        ncenemy.old_hsp = ncenemy.hsp;
        
        }
        
        
    }
    hitpause = false;
    hitstop = 0;
    hitstun = 0; //no hitstun
    ncparry_timer = 0;

    //blue outline
    outline_color = [ 0, 0, 255 ];
    init_shader();

//sprites

// if !free - i removed the !free condition the move works on the air anyway
}


//reset after 3Sparry ends
var parry_length = get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH) - 1;

if (noise_cancel &&
 (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) &&
 attack == AT_EXTRA_1 &&
 window_timer == parry_length)
{
    //end 3Sparry
    noise_cancel = false;
 
    //resume player momentum   
    if (free)
    set_state(PS_IDLE_AIR);
    else
    set_state(PS_IDLE);
    

    vsp = nc_vsp;
    hsp = nc_hsp;
    
    if (nchbox_type == 1)
    {
    //resume enemy momentum
    ncenemy.vsp = ncenemy.old_vsp;
    ncenemy.hsp = ncenemy.old_hsp;
    }
    
    ncenemy = noone;
    
    //back to black outline
}

//set timer to 0 in states unable to parry or when not parrying
if !(state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_DASH_START) && !(attack == AT_EXTRA_1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) && !noise_cancel
{
    ncparry_timer = 0;
}

//store momentum of this frame
    if (!noise_cancel){
    nc_vsp = vsp;
    nc_hsp = hsp;
    }
    
    
    //cooldown so no easy parry spam
    
    if (nc_cooldown > 0)
    {
        nc_cooldown--;
    }
    
     if (invincible){
     ncparry_timer = 0;
     ncenemy = noone;
     
     if (attack == AT_EXTRA_1 && window_timer == 6){
                  noise_cancel = false;
                  with (pHitBox){
                      destroyed = true;
                  }
     }
     
     }
switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}


// WING
if (!free) 
{
    is_winged = false;
}

if (state == PS_DOUBLE_JUMP) 
{
   is_winged = true; 
}

if (is_winged) and (state == PS_IDLE_AIR)
{
    sprite_index = sprite_get( "winged" );
}


// AIRBORN for smoother air idle after air dodging
if (state == PS_AIR_DODGE)
{
    airborn = true;
    is_winged = false // not used for airborn but hey
}

if ( state != PS_IDLE_AIR) and (state != PS_AIR_DODGE) 
{
    airborn = false;
}

if (airborn) and ( state == PS_IDLE_AIR)
{
    sprite_index = sprite_get( "airborn" );
}


if (state == PS_WALL_JUMP)
{
    if (is_winged)
    {
        sprite_index = sprite_get("walljump_winged" )
    }
    else
    {
        sprite_index = sprite_get("walljump")
    }
    
}


// HOLDING TURNTABLE ANIMATION
if (holding_turntable) // i know, switch is better, but its already there
{
    if (state == PS_IDLE) 
    {
         sprite_index = sprite_get("turntable_idle");
         image_index = state_timer * idle_anim_speed;
    }
    if (state == PS_IDLE_AIR) 
    {
         sprite_index = sprite_get("turntable_jump");
    }
    if (state == PS_WALK) 
    {
         sprite_index = sprite_get("turntable_walk");
         image_index = state_timer * walk_anim_speed;
    }
    if (state == PS_WALK_TURN) 
    {
         sprite_index = sprite_get("turntable_walkturn");
    }
    if (state == PS_DASH) 
    {
         sprite_index = sprite_get("turntable_dash");
         image_index = state_timer * dash_anim_speed;
    }
    if (state == PS_DASH_START) 
    {
         sprite_index = sprite_get("turntable_dashstart");
    }
    if (state == PS_DASH_TURN) 
    {
         sprite_index = sprite_get("turntable_dashturn");
    }
    if (state == PS_DASH_STOP) 
    {
         sprite_index = sprite_get("turntable_dashstop");
    }
    if (state == PS_FIRST_JUMP) 
    {
         sprite_index = sprite_get("turntable_jump");
    }
    if (state == PS_JUMPSQUAT) 
    {
         sprite_index = sprite_get("turntable_jumpstart");
    }
    if (state == PS_LAND) 
    {
         sprite_index = sprite_get("turntable_land");
    }
    if (state == PS_CROUCH) 
    {
         sprite_index = sprite_get("turntable_crouch");
    }
    
}

if (attack == AT_UTHROW) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
    if (free)
    {
        set_attack_value( AT_UTHROW, AG_SPRITE, sprite_get("uthrow_air"))
        set_attack_value( AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_air_hurt"))
        
        if ( pHurtBox.sprite_index != sprite_get("uthrow_air_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("uthrow_air_hurt");
        }
    }
    else
    {
        set_attack_value( AT_UTHROW, AG_SPRITE, sprite_get("uthrow"))
        set_attack_value( AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"))
        if ( pHurtBox.sprite_index != sprite_get("uthrow_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("uthrow_hurt");
        }
    }
}

if (attack == AT_FTHROW) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
    if (free)
    {
        set_attack_value( AT_FTHROW, AG_SPRITE, sprite_get("fthrow_air"))
        set_attack_value( AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_air_hurt"))
        
        if ( pHurtBox.sprite_index != sprite_get("fthrow_air_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("fthrow_air_hurt");
        }
    }
    else
    {
        set_attack_value( AT_FTHROW, AG_SPRITE, sprite_get("fthrow"))
        set_attack_value( AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"))
        if ( pHurtBox.sprite_index != sprite_get("fthrow_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("fthrow_hurt");
        }
    }
}



if (attack == AT_NSPECIAL) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
    if (free)
    {
        set_window_value( AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5 )
        set_window_value( AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 25 )
        
        set_attack_value( AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_air"))
        
        if ( sprite_index != sprite_get("nspecial_air"))
        {
            sprite_index =  sprite_get("nspecial_air");
        }
        
        
        set_attack_value( AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"))
        
        if ( pHurtBox.sprite_index != sprite_get("nspecial_air_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("nspecial_air_hurt");
        }
    }
    else
    {
        set_window_value( AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8 )
        set_window_value( AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 48 )
        
        
        set_attack_value( AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"))
        if ( sprite_index != sprite_get("nspecial"))
        {
            sprite_index =  sprite_get("nspecial");
        }
        
        set_attack_value( AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"))
        if ( pHurtBox.sprite_index != sprite_get("nspecial_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("nspecial_hurt");
        }
    }
}


// NSPECIAL_2
if (attack == AT_NSPECIAL_2) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
    if (free)
    {
        
        switch (cd_level){
        case 0:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_air_black")) 
            var spr = sprite_get("nspecial_throw_air_black");
        break;
        case 1:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_air_blue"))     
            var spr = sprite_get("nspecial_throw_air_blue");
        break;
        case 2:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_air_green"))    
            var spr = sprite_get("nspecial_throw_air_green");
        break;
        case 3:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_air_yellow")) 
            var spr = sprite_get("nspecial_throw_air_yellow");
        break;
        case 4:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_air_orange"))
            var spr = sprite_get("nspecial_throw_air_orange");
        break;
        case 5:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_air_red"))	
            var spr = sprite_get("nspecial_throw_air_red");
        break;
        case 6:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_air_purple"))
            var spr = sprite_get("nspecial_throw_air_purple");
        break;
        }
        
        if (sprite_index != spr)
        {
            sprite_index = spr;
        }
        
    
        set_attack_value( AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_throw_air_hurt"))
        
        if ( pHurtBox.sprite_index != sprite_get("nspecial_throw_air_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("nspecial_throw_air_hurt");
        }
    }
    else
    {
        
        switch (cd_level){
        case 0:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_black"))   
            var spr = sprite_get("nspecial_throw_black");
        break;
        case 1:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_blue"))        
            var spr = sprite_get("nspecial_throw_blue");
        break;
        case 2:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_green"))    
            var spr = sprite_get("nspecial_throw_green");
        break;
        case 3:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_yellow")) 	
            var spr = sprite_get("nspecial_throw_yellow");
        break;
        case 4:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_orange"))
            var spr = sprite_get("nspecial_throw_orange");
        break;
        case 5:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_red"))	
            var spr = sprite_get("nspecial_throw_red");
        break;
        case 6:
            set_attack_value( AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw_purple"))	
            var spr = sprite_get("nspecial_throw_purple");
        break;
        }
        if (sprite_index != spr)
        {
            sprite_index = spr;
        }
        
        
        
        set_attack_value( AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_throw_hurt"))
        if ( pHurtBox.sprite_index != sprite_get("nspecial_throw_hurt"))
        {
            pHurtBox.sprite_index =  sprite_get("nspecial_throw_hurt");
        }
    }
}











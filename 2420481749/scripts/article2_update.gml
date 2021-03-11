//panels

if instance_exists(self)
{

if free
{
    vsp += article_gravity;
}

if (state = 1 && sprite_index == sprite_get("tencoin"))
{
    image_index+= 0.2;
    ignores_walls = false;
    can_be_grounded = true;
    article_gravity = 0.8;
    
    
    if (tencoindeathtimer >= 0)
    {
        tencoindeathtimer--;
        
        if (tencoindeathtimer == 299)
        {
            vsp = -6;
        }
        
        if (tencoindeathtimer == 290)
        {
            vsp = 0;
        }
    }
    else if (tencoindeathtimer <= 0)
    {
        with player_id
        {
            spawn_hit_fx( other.x, other.y, coinshine);
        }
        should_destroy = true;
    }

    with oPlayer
    {
        if place_meeting(x, y, other)
        {
            if player = other.player
            {
                other.player_id.totalcoins +=10;
            }
            
            with other.player_id
            {
                spawn_hit_fx( other.x, other.y, coinshine);
                sound_play( sound_get( "coin" ) );
            }
            other.should_destroy = true;
        }
        
    }
    
}

if (state = 2 && sprite_index == sprite_get("coin"))
{
    image_index+= 0.2;
    ignores_walls = false;
    can_be_grounded = true;
    article_gravity = 0.2;
    

    
    if (cointimer >= 0)
    {
        cointimer--;
        if (cointimer >= 24)
        {
            vsp = coinvsp + random_func( -6, 1, false );
        }
        
        if (cointimer <= 14)
        {
            vsp += 0.8;
        }
    }
    else if (cointimer <= 0)
    {
        with player_id
        {
            spawn_hit_fx( other.x, other.y, coinshine);
            sound_play( sound_get( "coin" ) );
            totalcoins +=1;
        }
         should_destroy = true;
    }
}


//downward
if (state = 3)
{
    sprite_index = sprite_get("arrow");
    ignores_walls = false;
    panelpullable = true;
    
    if (arrowpush == true)
    {
        canBeHit()
        with oPlayer
        {
        if (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_START || state == PS_DASH_TURN
        || state == PS_HITSTUN)
            {
                if collision_circle( x, y-(char_height%2), 16+(char_height%1.5), other, false, true )
                {
                arrowpanel_down = 14;
                with other.player_id
                {
                    sound_play(sound_get("dodge"));
                }
                other.arrowpush = false;
                other.panelfade = true;
                }
            }
        }
    }
}

//left
if (state = 4)
{
    sprite_index = sprite_get("arrow");
    image_angle = 90;
    ignores_walls = false;
    panelpullable = true;
    
    if (arrowpush == true)
    {
        canBeHit()
        with oPlayer
        {
        if (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_START || state == PS_DASH_TURN
        || state == PS_HITSTUN)
            {
                if collision_circle( x, y-(char_height%2), 16+(char_height%1.5), other, false, true )
                {
                arrowpanel_left = 14;
                with other.player_id
                {
                    sound_play(sound_get("dodge"));
                }
                other.arrowpush = false;
                other.panelfade = true;
                }
            }
        }
    }
}

//up
if (state = 5)
{
    sprite_index = sprite_get("arrow");
    image_angle = 180;
    ignores_walls = false;
    panelpullable = true;
    
    if (arrowpush == true)
    {
        canBeHit()
        with oPlayer
        {
        if (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_START || state == PS_DASH_TURN
        || state == PS_HITSTUN)
            {
                if collision_circle( x, y-(char_height%2), 16+(char_height%1.5), other, false, true )
                {
                arrowpanel_up = 14;
                with other.player_id
                {
                    sound_play(sound_get("dodge"));
                }
                other.arrowpush = false;
                other.panelfade = true;
                }
            }
        }
    }
}

//right
if (state = 6)
{
    sprite_index = sprite_get("arrow");
    image_angle = 270;
    ignores_walls = false;
    panelpullable = true;
    
    if (arrowpush == true)
    {
        canBeHit()
        with oPlayer
        {
        if (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_START || state == PS_DASH_TURN
        || state == PS_HITSTUN) && (state != PS_RESPAWN)
            {
                if collision_circle( x, y-(char_height%2), 16+(char_height%1.5), other, false, true )
                {
                arrowpanel_right = 14;
                with other.player_id
                {
                    sound_play(sound_get("dodge"));
                }
                other.arrowpush = false;
                other.panelfade = true;
                }
            }
        }
    }
}

//buff
if (state = 7)
{
    sprite_index = sprite_get("2x");
    ignores_walls = false;
    
    if activateboost == true && panelupward <= 1
    {
        with player_id
        {
            if collision_circle( x, y-20, 16, other, false, true )
            {
                if doublepowerboost == false
                {
                    spawn_hit_fx( other.x-14, other.y-14, paneldsp);
                    doublepowerboost = true;
                    doublepower_pickuptxt = 32;
                    doublepower_pickuptxt_y = -70;
                    sound_play(sound_get("softsound"));
                    other.activateboost = false;
                    other.panelfade = true;
                }
            }
        }
    }
}

if (state = 8)
{
    sprite_index = sprite_get("exjump");
    ignores_walls = false;
    
    if exjump == true && panelupward <= 1
    {
        with player_id
        {
            if place_meeting(x, y, other)
            {
                if (exjumps != 2)
                {
                    spawn_hit_fx( other.x-14, other.y-14, paneldsp);
                    exjumps+=1;
                    exjump_pickuptxt = 32;
                    exjump_pickuptxt_y = -70;
                    sound_play(sound_get("softsound"));
                    other.exjump = false;
                    other.panelfade = true;
                }
            }
        }
    }
}


//ON Button
if (state == 9)
{
    sprite_index = sprite_get("onpanel");
    ignores_walls = false;
    
    if panelupward <= 1 && !panelfade
    {
        with player_id
        {
            if place_meeting(x, y, other)
            {
                spawn_hit_fx( other.x-14, other.y-14, paneldsp);
                panelstate = 1;
                magiccircleon = 40;
                magiccircleon_y = -70;
                magiccirclealpha = 1;
                sound_play(sound_get("shinysound"));
                other.panelfade = true;
            }
        }
    }
}

//1000 Fold Arm
if (state == 10)
{
    sprite_index = sprite_get("handpanel");
    ignores_walls = false;
    panelpullable = true;
    
    if panelupward <= 1 && !panelfade
    {
        with player_id
        {
            if free
            {
                other.panelpullable = true;
            }
            else
            if !free
            {
                other.panelpullable = false;
            }
            
            if place_meeting(x, y, other)
            {
                other.image_angle+=2;
                other.panelglow = 3;
                thousandfold = true;
                
                if state == PS_ATTACK_GROUND && attack == AT_FSPECIAL_2
                {
                    sound_play(sound_get("shinysound"));
                    other.panelfade = true;
                    panelstate = 0;
                    thousandfold = false;
                }
            }
            else
            {
                other.image_angle = 0;
                other.panelglow = 0;
                thousandfold = false;
            }
        }
    }
}

//Ice Vellumental
if (state == 11)
{
    sprite_index = sprite_get("icevellpanel");
    ignores_walls = false;
    panelpullable = true;
    
     if panelupward <= 1 && !panelfade
    {
        with player_id
        {
            if place_meeting(x, y, other)
            {
                other.image_angle+=2;
                other.panelglow = 7;
                icevell = true;
                
                if state == PS_ATTACK_GROUND  && attack == AT_DSTRONG_2
                {
                    sound_play(sound_get("shinysound"));
                    other.panelfade = true;
                    panelstate = 0;
                    icevell = false;
                }
            }
            else
            {
                other.image_angle = 0;
                other.panelglow = 0;
                icevell = false;
            }
        }
    }
}

//Water Vellumental
if (state == 12)
{
    sprite_index = sprite_get("watervellpanel");
    ignores_walls = false;
    panelpullable = true;
    
    if panelupward <= 1 && !panelfade
    {
        with player_id
        {
            if place_meeting(x, y, other)
            {
                other.image_angle+=2;
                other.panelglow = 6;
                watervell = true;
                
                if state == PS_ATTACK_GROUND  && attack == AT_USTRONG_2
                {
                    sound_play(sound_get("shinysound"));
                    other.panelfade = true;
                    panelstate = 0;
                    watervell = false;
                }
            }
            else
            {
                other.image_angle = 0;
                other.panelglow = 0;
                watervell = false;
            }
        }
    }
}

//Earth Vellumental
if (state == 13)
{
    sprite_index = sprite_get("earthvellpanel");
    ignores_walls = false;
    panelpullable = true;
    
    if panelupward <= 1 && !panelfade
    {
        with player_id
        {
            if place_meeting(x, y, other) 
            {
                other.image_angle+=2;
                other.panelglow = 5;
                earthvell = true;
                
                if state == PS_ATTACK_GROUND  && attack == AT_DSPECIAL_2
                {
                    sound_play(sound_get("shinysound"));
                    other.panelfade = true;
                    panelstate = 0;
                    earthvell = false;
                }
            }
            else
            {
                other.image_angle = 0;
                other.panelglow = 0;
                earthvell = false;
            }
        }
    }
}

//Fire Vellumental
if (state == 14)
{
    sprite_index = sprite_get("firevellpanel");
    ignores_walls = false;
    panelpullable = true;
    
    if panelupward <= 1 && !panelfade
    {
        with player_id
        {
            if place_meeting(x, y, other)
            {
                other.image_angle+=2;
                other.panelglow = 4;
                firevell = true;
                
                if state == PS_ATTACK_GROUND && attack == AT_FSTRONG_2
                {
                    sound_play(sound_get("shinysound"));
                    other.panelfade = true;
                    panelstate = 0;
                    firevell = false;
                }
            }
            else
            {
                other.image_angle = 0;
                other.panelglow = 0;
                firevell = false;
            }
        }
    }
}

if (state >= 3)
{
    if (panelupward >= 1)
    {
        panelupward--;
        
        
        if panelupward <= 5
        {
        with obj_article2
        {
            if state >= 3 && player_id == other.player_id
            {
                if place_meeting(x, y, other)
                {
                    if x > other.x
                    {
                        panelspacing_x_dir = 1;
                        panelspacing = 5;
                    }
                    else
                    {
                        panelspacing_x_dir = 2;
                        panelspacing = 5;
                    }
                    
                    if y > other.y
                    {
                        panelspacing_y_dir = 1;
                        panelspacing = 5;
                    }
                    else
                    {
                        panelspacing_y_dir = 2;
                        panelspacing = 5;
                    }
                }
            }
        }
        
        if (panelspacing != 1)
                    {
                        panelspacing--;
                        
                        switch (panelspacing_x_dir)
                        {
                            case 1:
                            {
                                hsp = 7;
                            }break;
                            
                            case 2:
                            {
                                hsp = -7;
                            }break;
                        }
                        
                        switch (panelspacing_y_dir)
                        {
                            case 1:
                            {
                                vsp = 7;
                            }break;
                            
                            case 2:
                            {
                                vsp = -7;
                            }break;
                        }
                    }
        }
    }
    
    if (panelyeet >= 1 && !hitpause)
    {
        panelyeet--;
    }
    if (panelyeet == 1)
    {
        panelupward = 24;
        article_gravity = 0.3;
        
        switch (panelpulldirection)
        {
            case 0:
            {
                with player_id
                {
                    other.hsp = 6*spr_dir*-1;
                    other.vsp = -2;
                    pullingpanel = false;
                }
            }break
            
            case 3:
            {
                with player_id
                {
                    other.hsp = 12*spr_dir*-1;
                    other.vsp = -1;
                    pullingpanel = false;
                }
            }break
            
            case 1:
            {
                with player_id
                {
                    other.hsp = 1*spr_dir*-1;
                    other.vsp = -8;
                    pullingpanel = false;
                }
            }break
            
            case 4:
            {
                with player_id
                {
                    other.hsp = 6*spr_dir*-1;
                    other.vsp = -7;
                    pullingpanel = false;
                }
            }break
            
            case 2:
            {
                with player_id
                {
                    other.hsp = 2*spr_dir*-1;
                    other.vsp = 4;
                    pullingpanel = false;
                }
            }break  
        }
    }
    
    if (panelpullable == true) && !panelfade
    {
        with player_id
        {
            if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
                if collision_point(x+22*spr_dir, y-28, other, false, true )
                {
                    if window == 2
                    {
                        window = 3;
                        window_timer = 0;
                        pullingpanel = true;
                    }
                    
                    if window == 3
                    {
                        if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)) && !down_down && !up_down
                    {
                        other.panelpulldirection = 3;
                    }
                    else
                    if (down_down) && !up_down
                    {
                        other.panelpulldirection = 2;
                    }
                    else
                    if (up_down) && !left_down && !right_down
                    {
                        other.panelpulldirection = 1;
                    }
                    else
                    if (up_down && ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)))
                    {
                        other.panelpulldirection = 4;
                    }
                    else
                    {
                        other.panelpulldirection = 0;
                    }
                    other.panelyeet = 4;
                    }
                    
                }
        }
    }
    
    if (panelupward <= 1)
    {
        if (vsp <= 0)
        {
            vsp *= 0.99;
        }
        else 
        if (vsp >= 0)
        {
            vsp = 0;
        }
        
        hsp = 0;
    }
    
    if (panelglow >= 3)
    {
        if panelglowing <= 0.4
        {
            panelglowing+=0.1;
        }
    }
    else
    {
        if panelglowing != 0
        {
            panelglowing-=0.1;
        }
    }
    
    if (panelupward == 3)
    {
        panelanimate = true;
    }
    
    if (panelanimate == true)
    {
        depth = -5;
        if (image_index >= -1 && image_index <= 1)
        {
            image_index+=0.5;
        }
        else if (image_index >= 1 && image_index <= 2)
        {
            image_index+=0.05;
        }
        else if (image_index >= 2 && image_index <= 3)
        {
            image_index+=0.1;
        }
        else if (image_index >= 3 && image_index <= 4)
        {
            panelanimate = false;
            if (state == 3 || state == 4 || state == 5 || state == 6)
            {
                arrowpush = true;
            }
            image_index+=1;
        }
    }
    else if (panelanimate == false)
    {
        image_index = 0;
        depth = -3;
    }
    
    with player_id
    {
        if paneltimer >= 1
        {
            paneltimercountdown = true;
        }
        
        if paneltimer <= 0.01
        {
            other.panelfade = true;
            paneltimer_reset = 10;
        }
    }
    
    if (panelfade == true)
    {
        image_alpha+= -0.2;
        
        if image_alpha <= 0
        {
            should_destroy = true;
        }
    }
}

if (should_destroy)
{
    instance_destroy();
}

}

#define canBeHit()
{    
    with pHitBox
    {
        if player_id != other.player_id
        {
            if place_meeting(x, y, other)
            {
                with other
                {
                    var puffx = x;
                    var puffy = y;
                    
                    with player_id
                    {
                        sound_play(sound_get("pulloff"));
                        spawn_hit_fx( other.x, other.y, puffyhit);
                    }
                    should_destroy = true;
                }
            }
        }
    }
}


//article1_update
if st != 5
{
    switch(player_id.player)
    {
        case 1: belongsto = 0;break;
        case 2: belongsto = 1;break;
        case 3: belongsto = 2;break;
        case 4: belongsto = 3;break;
    }
}

#region hitstop n spd stuff
if hitlockout2 > 0
{
    hitlockout2--;
}
if hitlockout2 < 0
{
    hitlockout2 = 0;
}

if hitstop_increase >= 60
{
    hitstop_increase = 60;
}

if spd >= 80
{
    spd = 79;
    hitstop_increase = 60;
}
if spd >= 50
{
    h = 57;
}
else
{
    h = 56;
}
if hitstop = 0 && st != 1
{
    {
        if spd != 0
        {
            spd = lerp(spd,0,0.1);
        }
        if hsp != 0 
        {
            hsp = lerp(hsp,0,0.1);
        }
        if vsp != 0 
        {
            vsp = lerp(vsp,0,0.1);
        }
    }
}
#endregion

#region plasma_field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(st == 5 || st == 0)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
    st = 5;
    stt = 0;
}
#endregion

#region sound n effects
if playsound == true
{
    if spd == 0
    {
        sound_play(sound_get("deflect"));
    }
    if spd > 0 && spd <= 20
    {
        sound_play(sound_get("weak_hit"));
    }
    if spd >= 21 && spd <= 39
    {
        sound_play(sound_get("medium_hit"));    
    }
    if spd >= 40 && spd <= 59
    {
        sound_play(sound_get("medium_hit"));
    }
    if spd >= 60
    {
        sound_play(sound_get("medium_hit"));    
    }
    playsound = false;
    if life != 0
    {
        var cool_effect = spawn_hit_fx( x, y, ball_hitfx);
    }
    else
    {
        var cool_effect = spawn_hit_fx(x,y,hitball_fx);
        cool_effect.draw_angle = angle;
        cool_effect.spr_dir = 1;
        cool_effect.depth = depth-10;
    }
    shake_camera( 4, 4 )
}
#endregion

#region walls
if wall1a > 0
{
    wall1a-=0.05;
}
if wall1a < 0
{
    wall1a = 0;
}

if wall2a > 0
{
    wall2a-=0.05;
}
if wall2a < 0
{
    wall2a = 0;
}

if wall3a > 0
{
    wall3a-=0.05;
}
if wall3a < 0
{
    wall3a = 0;
}

/*
if size >= 1080
{
    shoc2 = 1;
}
if shoc2 = 1
{
    size2+=60;
}
if size2 >= 1080
{
    size2 = 0;
    shoc2 = 0;
    size = 0;
    draw_e = 0;
}

if draw_e = 1
{
    size+=20;
}
*/
#endregion

#region getting hit
if st != 5
{
	var candyman_player_id = player_id;
	var this_ball = self;
    with (asset_get("pHitBox")) //if you are reading this and you actually know how to code, i'm sorry.
    {
        if place_meeting(x,y,other) && other.hitstop == 0 && other.fuckingrockid != id
        && (length != 99999999) && (other.st != 0) && type != 2
        {
            if player_id != other.player_id
            {
                other.hit_by_opponent = player;
            }
            else
            {
                other.hit_by_opponent = player;
            }
            other.fuckingrockid = id;
            if damage != 0 
            {
                if ((attack == AT_NSPECIAL || attack == AT_FSPECIAL) && (player_id == other.player_id || player_id.url == other.original_url))
                {
                    if player_id.url == other.original_url
                    {
                        other.playerurl = player_id
                    }
                    else
                    {
                        other.playerurl = player_id.url
                    }

                    if (attack == AT_NSPECIAL)
                    {
                        other.angle = 90;
                        other.spd = 0;
                        other.st = 7;
                        other.stt = 0;
                        other.playsound=true;
                        other.hitpause = true;
                        other.hitstop = 10; 
                        other.hitlockout = player;
                        other.hitlockout2 = 20;
                        with player_id
                        {
                            old_hsp = hsp;
                            old_vsp = vsp;       
                            hitpause = true;
                            hitstop = 5;
                            has_hit = true;
                            destroy_hitboxes();
                        }
                    }
                    /*if attack == AT_FSPECIAL /// BALL GRAB CODE
                    {
                        if hbox_num == 2
                        {
                            other.st = 8;
                            other.stt = 0;
                            with player_id
                            {
                                old_hsp = hsp;
                                old_vsp = vsp;       
                                hitpause = true;
                                hitstop = 5;
                                has_hit = true;
                                destroy_hitboxes();
                            }
                        }
                        if hbox_num == 3 && other.st == 8
                        {
                            kb_angle = 0;
                            other.spd = 60;
                            other.st = 2;
                            other.stt = 0;
                            cool_hitboxstuff();    
                        }
                    }*/
                }
                else 
                {
                    if (other.hitlockout != player || other.hitlockout2 == 0) && (other.hitstop == 0)
                    {
                        /*if player_id != other.player_id // Opengunner: Removing Life on ball
                        {
                            other.life-=1;
                        }*/
                        if other.spd >= 60
                        {
                            other.draw_e = 1;
                        }
                        other.times_hit+=1;
                        other.st = 2;
                        other.stt = 0;
    
                        if (attack == AT_FSTRONG) || (attack == AT_USTRONG) 
                        || (attack == AT_DSTRONG) || damage >= 12
                        {
                            other.spd+=80;
                        }
                        else
                        {
                            if damage <=5 && type == 1
                            {
                                    other.spd = 29;
                            }
                            else if damage <=5 && type == 2
                            {
                                other.spd = 2;
                                if player_id.url != CH_WRASTOR
                                {
                                    destroyed = true;
                                }
                            }
                            else
                            {
    
                                other.spd+=40;  
                            }
                        }
                        if other.spd >= 8
                        {
                            other.hitstop_increase += round(other.spd/10);
                        }
                        switch (attack)
                        { // Opengunner: Added forced angles for consistency so that jab sends it 45 degrees Angles the ball sends at: 
                        	case AT_JAB: kb_angle = 45; break; // 
                        	case AT_DATTACK: kb_angle = 45; break; //
                            case AT_FTILT: kb_angle = 0;break;
                            case AT_UTILT: kb_angle = 90;break;
                            case AT_DTILT: kb_angle = 90;break;
                            case AT_NAIR: kb_angle = 45; break;
                            case AT_DAIR: kb_angle = 270; break;
                            case AT_FAIR: kb_angle = -45; other.spd+= 10;break;
                            case AT_BAIR: kb_angle = 180;break;
                            case AT_UAIR: kb_angle = 90; break;
                            case AT_FSTRONG: kb_angle = 0;break;
                            case AT_USTRONG: kb_angle = 90;break;
                            //case AT_NSPECIAL: kb_angle = 90;break;
                            case AT_FSPECIAL: kb_angle = 0;break;
                            case AT_DSPECIAL: kb_angle = 45;break;
                            case AT_USPECIAL: kb_angle = 90;break;
                            case AT_DSTRONG: // Added logic to make the ball go in a consistent direction based on proximity to the person who hits it.
                            	switch(spr_dir){
                            		case -1:
                            			if(player_id.x - this_ball.x < 0){ kb_angle = 135;} else {kb_angle = 45;}
                            			break;
                            		case 1:
                            			if(player_id.x - this_ball.x > 0){ kb_angle = 135;} else {kb_angle = 45;}
                            			break;
                            	}
                        break;
                        }
                        cool_hitboxstuff();
                        hit_priority = 10;
                        if type == 1
                        {
                            with player_id 
                            {
                                old_hsp = hsp;
                                old_vsp = vsp;                      
                                hitpause = true;
                                hitstop = 10;
                                if invincible = false
                                {
                                    invincible = true;
                                    invince_time = 10;
                                }
                                if url == CH_WRASTOR
                                {
                                    has_hit_player = true;
                                }
                                else if  url == CH_ETALUS
                                {
                                    has_hit = false;
                                }
                                else
                                {
                                    has_hit = true;
                                }
                                destroy_hitboxes();
                            }   
                        }
                        else if type == 2
                        {
                            if player_id.url != CH_WRASTOR
                            {
                                destroyed = true;
                            }
                        }
                    }
                }
            }
            else
            {
                //super smash brothers. melee for the nintendo gamecube released in november 21 of 2001 developed by hal laboratory and published by nintendo
            }
        }
    }
}
#endregion

#region states
//st 1: Idle
if (life <= 0) && (st != 5)
{
    st = 5;
    stt = 0;
    if hit_exists == true
    {
        instance_destroy(ballhitbox);
    }    
}
if hitlockout2 == 0
{
    hitlockout = noone;
}
//spawn state
if (st == 0)
{
        if (y < 250)
        {
             y = lerp(y,250,0.2);
        }
        else if (y > stagefloor)
        {
            y = lerp(y,round(stagefloor),0.2);
        }
        if (x < stage_x)
        {
            x = lerp(x,round(stage_x),0.2);
        }
        if (x > room_width - stage_x) 
        {
            x = lerp(x,round((room_width - stage_x)),0.2);
        }
    ignores_walls = false;
    art_time= art_time + 2; //Opengunner: Timer was sped up to be twice as fast.
    hsp = ease_quartOut( 1, 3, art_time, 20)*spr_dir; 
    vsp = ease_quartOut( 4, -2, art_time, 40);
    

    if (stt >= 20) // Opengunner: Changed from 40 to 20 
    {
        st = 1;
        stt = 0;
        hsp = 0;
        vsp = 0.5
    }
}
    
if (st == 1)//idle state 
{

    switch (vsp)
    {
        case 0.5: timer_idle++;break;
        case -0.5: timer_idle--;break;
    }
    switch (timer_idle)
    {
        case 10: vsp = -0.5;break;
        case 0: vsp = 0.5;break;
    }
    
    if player_id.killarticles == true
    {
        player_id.killarticles = false;
        st = 2;
        stt = 0;
    }

}
if (st == 2) //ball movement
{

    if (spd >= 20) 
    {
        if hit_exists == false
        {
            if hitstop == 0
            {
                var dustfx = spawn_hit_fx( x, y, speedcloud_fx);
                dustfx.draw_angle = angle;
                dustfx.spr_dir = 1;
                hit_exists = true;
                if life > 0
                {
                    ballhitbox = create_hitbox(AT_USPECIAL,6,x,y);
                }
                donotdraw = false;
            }

        }
    }   
    else if (spd <= 4)
    {
        hit_exists = false;
        hit_by_opponent = false;
    }
    if hit_exists == true
    {
        if first_hit = 0
        {
            first_hit = 1;
        }        
        ballhitbox.player = hit_by_opponent;
        if (spd >= 4) && (spd <= 39)
        {
            ballhitbox.damage = 10;
        }
        else if spd >= 50
        {
            ballhitbox.damage = 20;
        }
        ballhitbox.x = round(x+hsp);
        ballhitbox.y = round(y+vsp);
    }
    else
    {
        if first_hit > 0
        {
            instance_destroy(ballhitbox) //<<<--- fuck this 
        }
    }

    can_be_grounded = false;
    ignores_walls = true;
    if hitstop == 0
    {
        image_index = 0;
        if (y < +250)
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            wall3a = 1.2;
             y = 250;
            vsp*=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_cei = true;
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            angle*=-1;
        }
        else if (y > stagefloor)
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            y = round(stagefloor);
            vsp*=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_cei = true;
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            angle*=-1;            
        }
        if (x < stage_x)
        {
            spr_dir*=-1;
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            wall1a = 1.2;
            x = round(stage_x);
            angle*=-1;
            hsp *=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_wall = true
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
        }
        if (x > room_width - stage_x) 
        {
            spr_dir*=-1;
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_wall = true;
            wall2a = 1.2;
            x = (room_width - round(stage_x));
            angle*=-1;
            hsp *=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_wall = true
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
        }
    }
}
if (st = 4)
{
    can_be_grounded = false;
    ignores_walls = true;
    if hit_exists == true
    {
        instance_destroy(ballhitbox);
        hit_exists = false;
    }
    if stt == 0
    {
        hitpause = true;
        hitstop = 30;
        nvsp = -9;
        if hsp <= 0
        {
            nhsp=-5;
        }
        else if hsp > 0
        {
            nhsp=5;
        }
    }

    hsp=nhsp;
    vsp = 0;
    vsp+=nvsp
    nvsp+= grav;

}

if (st = 5)
{
    grav = 0.14;
    can_be_grounded = false;
    ignores_walls = true;
    if hit_exists == true
    {
        instance_destroy(ballhitbox);
    }
    sprite_index = sprite_get("ball_dead");
    smoketimer++;
    if smoketimer >= 5
    {
        var smoke = spawn_hit_fx( x, y, smoke_fx);
        smoketimer = 0;
    }
    if stt == 0
    {
        sound_play(sound_get("kill"));
        hitpause = true;
        hitstop = 30;
        nvsp = -9;
        if hsp <= 0
        {
            nhsp=-5;
        }
        else if hsp > 0
        {
            nhsp=5;
        }
    }
    hsp=nhsp;
    vsp = 0;
    vsp+=nvsp
    nvsp+= grav;
	// Opengunner: Added to prevent cooldown on death
    if(death_script_cooldown_flag == true){
        with player_id
        {
            ball_cooldown = 1;
            //ball_exists = false;
        }
    }
    if stt >= 160
    {
    	var temp_death_script_cooldown_flag = death_script_cooldown_flag;
        with player_id
        {
            if(temp_death_script_cooldown_flag == false){ball_cooldown = 240;} // Prevent cooldown reset on death
            ball_exists = false;
        }
		death_script_cooldown_flag = false;
        instance_destroy();
        exit;
    }
}

if (st = 6)//destroy ball
{
    if hit_exists == true
    {
        instance_destroy(ballhitbox);
    }

    instance_destroy();
    exit;
}

if (st = 7)//bunt
{
    can_be_grounded = false;
    ignores_walls = true;
    
    if hit_exists == true
    {
        instance_destroy(ballhitbox);
        hit_exists = false;
    }
    if stt == 5
    {
        grav = 0.24;
        if !((player_id.left_down || playerurl.left_down) || (player_id.right_down || playerurl.right_down))
        {
            nhsp = 0;
        }
        else
        {
            if (!player_id.down_down || !playerurl.down_down)
            {
                if player_id.left_down  || playerurl.left_down
                {  
                    nhsp = -3.5
                }
                else if player_id.right_down || playerurl.right_down
                {
                    nhsp = 3.5
                }    
            }
        }
        if player_id.down_down || playerurl.down_down
        {
            nhsp = 0;
            nvsp = 8;
            grav = 0;
        }
        else
        {
            nvsp = -10.55;
        }
    }

    hsp=nhsp;
    vsp = 0;
    vsp+=nvsp
    nvsp+= grav;
    if hitstop == 0
    {
        image_index = 0;
        if (y < +250)
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            wall3a = 1.2;
             y = 250;
            vsp*=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_cei = true;
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            angle*=-1;
            stt = 0;
            st = 2
            nhsp = 0;
            nvsp = 0;
        }
        else if (y > stagefloor)
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            y = round(stagefloor);
            vsp*=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_cei = true;
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            angle*=-1; 
            stt = 0;
            st = 2
            nhsp = 0;
            nvsp = 0;
        }
        if (x < stage_x)
        {
            spr_dir*=-1;
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            wall1a = 1.2;
            x = round(stage_x);
            angle*=-1;
            hsp *=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_wall = true
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            stt = 0;
            st = 2
            nhsp = 0;
            nvsp = 0;         
        }
        if (x > room_width - stage_x) 
        {
            spr_dir*=-1;
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_wall = true;
            wall2a = 1.2;
            x = (room_width - round(stage_x));
            angle*=-1;
            hsp *=-1;
            sound_play(sound_get("wall_bounce_fast"));
            i_hit_wall = true
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            stt = 0;
            st = 2
            nhsp = 0;
            nvsp = 0;
        }
    }
}

if st == 8
{
    image_speed = 0;
    image_alpha = 0;
    donotdraw = true;
    x = player_id.x+40*player_id.spr_dir;
    y = player_id.y-40;
}

#endregion

stt++;

#define cool_hitboxstuff()
{
    if other.donotdraw = false
    {
        other.playsound=true;
        other.hitpause = true;
        other.hitstop = 10; 
        other.hitlockout = player;
        other.hitlockout2 = 20;
    }
    other.hsp = round(lengthdir_x(other.spd/2, get_hitbox_angle(id)));
    other.vsp = round(lengthdir_y(other.spd/2, get_hitbox_angle(id)));
    other.angle = get_hitbox_angle(id);
    other.angle2 = get_hitbox_angle(id);
    other.old_vsp = other.vsp;
    other.old_hsp = other.hsp;
}
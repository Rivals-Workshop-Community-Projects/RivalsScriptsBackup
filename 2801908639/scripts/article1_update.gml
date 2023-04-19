//article1_update
print(string(x))
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

subimg+=0.2;

if subimg >= 5{
	subimg = 0;
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
        sound_play(asset_get("sfx_clairen_tip_med"));
    }
    if spd > 0 && spd <= 20
    {
        sound_play(asset_get("sfx_clairen_hit_strong"));
    }
    if spd >= 21 && spd <= 39
    {
        sound_play(asset_get("sfx_clairen_hit_strong")); 
    }
    if spd >= 40 && spd <= 59
    {
       sound_play(asset_get("sfx_clairen_hit_strong"));
    }
    if spd >= 60
    { 
        sound_play(asset_get("sfx_clairen_hit_strong"));
    }
    playsound = false;
    if life != 0
    {
        var cool_effect = spawn_hit_fx( x, y, ball_hitfx);
    }
    else
    {

        var cool_effect = spawn_hit_fx(x,y,hitball_fx);
        cool_effect.draw_angle = angle3;
        cool_effect.spr_dir = 1;
        cool_effect.pause = 8;
        cool_effect.depth = depth-10;
    }
    shake_camera( 4, 4 )
}
#endregion

#region getting hit
if st != 5
{
    with (asset_get("pHitBox")) //if you are reading this and you actually know how to code, i'm sorry.
    {
        if place_meeting(x,y,other) && other.hitstop == 0 && other.fuckingrockid != id
        && (length != 99999999) && type != 2
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
                if (attack == AT_NSPECIAL || attack == AT_FSPECIAL) && (player_id == other.player_id 
                || player_id.url == other.original_url 
                || player_id.url == other.candyman_url)
                {

					if player_id.url == other.original_url
					{
					other.playerurl = player_id
					}
					else
					{
					other.playerurl = player_id
					}
	                		
                    if attack == AT_NSPECIAL
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
                    if attack == AT_FSPECIAL /// BALL GRAB CODE
                    {
                    	//edited this code block in order to get it to work; Krankees
                        if hbox_num == 1
                        {
                            other.stt = 0;
                            player_id.fspec_ball = 1;
                            with player_id
                            {
								hsp = 0;
                                old_vsp = vsp;
                                hitpause = true;
                                hitstop = 5;
                                has_hit = true;
                                destroy_hitboxes();
                            }
                        }
                        if hbox_num == 2
                        {
                        	player_id.fspec_ball = false;
                        	player_id.lock_movement = 0;
                        	other.spd = 60;
                            other.st = 2;
                            other.stt = 0;
                            cool_hitboxstuff();    
                        }
                    }
                }
                else 
                {
                    if (other.hitlockout != player || other.hitlockout2 == 0) && (other.hitstop == 0)
                    {
                        /*if player_id != other.player_id
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
                        switch(attack)
                        {
                        	case AT_JAB:
                        	case AT_FTILT:
                    			other.hsp = round(lengthdir_x(other.spd/2, 0 + 90 * (player_id.spr_dir - 1)));
    							other.vsp = round(lengthdir_y(other.spd/2, 0));
    							other.angle3 = get_hitbox_angle(id);
    							other.angle = 0 + 90 * (player_id.spr_dir - 1);
    							other.movement_lock = 1;
                        		break;
                        	case AT_DAIR: 
                        		if !(player_id == other.player_id || player_id.url == other.candyman_url)
                        		{
                        			other.hsp = round(lengthdir_x(other.spd/2, 270));
    								other.vsp = round(lengthdir_y(other.spd/2, 270));
    								other.angle3 = get_hitbox_angle(id);
    								other.angle = 270;
    								other.movement_lock = 1;
                        		} 
                        		break;
                            case AT_FAIR: 
                        		if (player_id == other.player_id)
                        		{
                        			other.hsp = round(lengthdir_x(other.spd/2, -45 + 45 * (player_id.spr_dir - 1)));
    								other.vsp = round(lengthdir_y(other.spd/2, -45));
    								other.angle3 = get_hitbox_angle(id);
    								other.angle = -45 + 45 * (player_id.spr_dir - 1);
    								other.movement_lock = 1;
                        		} 
                            	break;
                            case AT_BAIR: 
                        		if (player_id == other.player_id)
                        		{
                        			other.hsp = round(lengthdir_x(other.spd/2, 180 - 90 * (player_id.spr_dir - 1)));
    								other.vsp = round(lengthdir_y(other.spd/2, 0));
    								other.angle3 = get_hitbox_angle(id);
     								other.angle = 180 - 90 * (player_id.spr_dir - 1);
    								other.movement_lock = 1;
                        		}
                            	break;
                            case AT_UAIR: 
                        		if (player_id == other.player_id)
                        		{
                        			other.hsp = round(lengthdir_x(other.spd/2, 90));
    								other.vsp = round(lengthdir_y(other.spd/2, 90));
    								other.angle3 = get_hitbox_angle(id);
    								other.angle = 90;
    								other.movement_lock = 1;
                        		} 
	                            break;
                            case AT_FSTRONG: 
                        		if (player_id == other.player_id)
                        		{
                        			other.angle3 = get_hitbox_angle(id);
                        			if (other.angle3 > 0 and other.angle3 < 90)
                        			{
										other.hsp = round(lengthdir_x(other.spd/2, 0));
										other.angle3 = 45;
										other.angle = 0;
                        			}
                        			else if (other.angle3 > 90 and other.angle3 < 180)
                        			{
                        				other.hsp = round(lengthdir_x(other.spd/2, 180));
										other.angle3 = 135;
										other.angle = 180;
                        			}
    								other.vsp = round(lengthdir_y(other.spd/2, 0));
    								other.movement_lock = 1;
                        		} 
                            	break;
                            case AT_DATTACK: 
                        		if (player_id == other.player_id)
                        		{
									other.hsp = round(lengthdir_x(other.spd/2, 0 + 90 * (player_id.spr_dir - 1)));
    								other.vsp = round(lengthdir_y(other.spd/2, 0));
    								other.spd += 5;
		                        	other.angle3 = get_hitbox_angle(id);
    								other.angle = 0 + 90 * (player_id.spr_dir - 1);
    								other.movement_lock = 1;
                        		} 
                        		break;
                            case AT_UTILT: 
                            	other.spd-= 15;
                            	break;
                        }
                        cool_hitboxstuff();
                        hit_priority = 10;
                        if type == 1
                        {
                        	if (other.movement_lock < 1)
                        	other.angle3 = get_hitbox_angle(id);
                        	if (other.angle3 < 0)
                        	other.angle3 += 360;
                        	other.spr_dir = 1;
                            with player_id 
                            {
                                old_hsp = hsp;
                                old_vsp = vsp;                      
                                hitpause = true;
                                hitstop = 10;
                                if invincible = false
                                {
                                   /// invincible = true;
                                  ///  invince_time = 10;
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
//spawn state
if (st == 0)
{
        if (y < (stagefloor-250))
        {
             y = lerp(y,stagefloor-250,0.2);
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
    art_time++
    hsp = ease_quartOut( 1, 3, art_time, 20)*spr_dir; 
    vsp = ease_quartOut( 4, -2, art_time, 40);
    

    if (stt >= 40)
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
	movement_lock = 0;
    if (spd >= 20) 
    {
        if hit_exists == false
        {
            if hitstop == 0
            {
                // var dustfx = spawn_hit_fx( x, y, speedcloud_fx);
                // dustfx.draw_angle = angle;
                // dustfx.spr_dir = 1;
                hit_exists = true;
                if life > 0
                {
                    ballhitbox = create_hitbox(AT_USPECIAL,6,0,0); //changed the values to 0; hopefully this doesn't break anything
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
        ballhitbox.kb_angle = angle3;
        if (spd >= 4) && (spd <= 39)
        {
            ballhitbox.damage = 6;
        }
        else if spd >= 50
        {
            ballhitbox.damage = 8;
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
        if (y < (stagefloor-250) and player_id.fspec_ball == false and vsp < 0)
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            wall3a = 1.2;
             y = round(stagefloor-250);
            vsp*=-1;
            sound_play(asset_get("sfx_clairen_tip_strong"));
            i_hit_cei = true;
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            angle*=-1;
        }
        else if (y > (stagefloor-15) and player_id.fspec_ball == false and vsp > 0)
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            y = round(stagefloor-16);
            vsp*=-1;
            sound_play(asset_get("sfx_clairen_tip_strong"));
            i_hit_cei = true;
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
            angle*=-1;            
        }
        if (x < stage_x and player_id.fspec_ball == false and hsp < 0)
        {
        	spr_dir *= -1;
        	if ((angle3 > 0 and angle3 < 90) or (angle3 > 180 and angle3 < 270))
        	angle3 -= (90 * spr_dir);
        	else if ((angle3 > 90 and angle3 < 180) or (angle3 > 270 and angle3 < 360))
        	angle3 += (90 * spr_dir);
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
            sound_play(asset_get("sfx_clairen_tip_strong"));
            i_hit_wall = true
            if spd >= 1
            {
                hitpause = true
                hitstop = 2;
            }
        }
        if (x > (room_width - stage_x) and player_id.fspec_ball == false and hsp > 0) 
        {
        	spr_dir *= -1; 
        	if ((angle3 > 0 and angle3 < 90) or (angle3 > 180 and angle3 < 270))
        	angle3 -= (90 * spr_dir);
        	else if ((angle3 > 90 and angle3 < 180) or (angle3 > 270 and angle3 < 360))
        	angle3 += (90 * spr_dir);
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
            sound_play(asset_get("sfx_clairen_tip_strong"));
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
    image_alpha = 0;
    if stt == 0
    {
        sound_play(asset_get("sfx_ori_energyhit_heavy"));
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
    if stt >= 30
    {
        with player_id
        {
            ball_cooldown = 240;
            ball_exists = false;
        }

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
    if stt == 0
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
        if (y < (stagefloor-250))
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            wall3a = 1.2;
             y = round(stagefloor-250);
            vsp*=-1;
            sound_play(asset_get("sfx_clairen_tip_strong"));
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
        else if (y > (stagefloor-15))
        {
            if hit_exists == true
            {
                ballhitbox.x = round(x);
                ballhitbox.y = round(y);
            }
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_cei = true;
            y = round(stagefloor-16);
            vsp*=-1;
            sound_play(asset_get("sfx_clairen_tip_strong"));
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
        	spr_dir *= -1;
        	if ((angle3 > 0 and angle3 < 90) or (angle3 > 180 and angle3 < 270))
        	angle3 -= (90 * spr_dir);
        	else if ((angle3 > 90 and angle3 < 180) or (angle3 > 270 and angle3 < 360))
        	angle3 += (90 * spr_dir);
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
            sound_play(asset_get("sfx_clairen_tip_strong"));
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
        	spr_dir *= -1;
        	if ((angle3 > 0 and angle3 < 90) or (angle3 > 180 and angle3 < 270))
        	angle3 -= (90 * spr_dir);
        	else if ((angle3 > 90 and angle3 < 180) or (angle3 > 270 and angle3 < 360))
        	angle3 += (90 * spr_dir);        	
            var wallfx = spawn_hit_fx( x, y, wall_fx);
            i_hit_wall = true;
            wall2a = 1.2;
            x = (room_width - round(stage_x));
            angle*=-1;
            hsp *=-1;
            sound_play(asset_get("sfx_clairen_tip_strong"));
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
    player_id.ball_exists = false
    instance_destroy();
    exit;
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
    if (other.movement_lock = 0) //Krankees
    {
    	other.hsp = round(lengthdir_x(other.spd/2, get_hitbox_angle(id)));
    	other.vsp = round(lengthdir_y(other.spd/2, get_hitbox_angle(id)));
    	other.angle = get_hitbox_angle(id);
    }
    other.angle2 = get_hitbox_angle(id);
    other.old_vsp = other.vsp;
    other.old_hsp = other.hsp;
}
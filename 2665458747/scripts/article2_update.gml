//poison related


if (!instance_exists(attachedhitbox) || place_meeting(x,y, asset_get("plasma_field_obj"))) && state == 0
{
	if (player_id.state_cat != SC_HITSTUN) || (player_id.was_parried) || (attachedhitbox.was_parried)
	{
    	state = 1;
	}
	else if place_meeting(x,y, asset_get("plasma_field_obj")) || (player_id.state_cat == SC_HITSTUN) || (player_id.was_parried)
	{
		precautionarytimer-=200;
	}
}
else if instance_exists(attachedhitbox)
{
    x = round(attachedhitbox.x);
    y = round(attachedhitbox.y);
    
    if (attachedhitbox.was_parried)
    {
    	precautionarytimer-=200;
    }
}

if (state >= 1 && state <= 5)
{
    image_index = get_gameplay_time()/6;
    
    if sludgehp <= 0 || place_meeting(x,y, asset_get("plasma_field_obj")) || (player_id.was_parried)
    {
        state = 6;
        state_timer = 0;
    }
}

switch (state)
{
    case 1:
    {
        with player_id
        {
            spawn_hit_fx( other.x, other.y, bombset )
        }
        
        switch (sludgelevel)
        {
            case 0:
            {
                state = 2;
            }break;
            
            case 1:
            {
                state = 3;
            }break;
            
            case 2:
            {
                state = 4;
            }break;
            
            case 3:
            {
                state = 5;
            }break;
        }
    }break;
    
    case 2:
    {
        if sludgeswitch
        {
            sprite_index = sprite_get("placeholder");
            image_index = 0;
            sound_play(sound_get("sm-poisonsplatter"));
            sludgeswitch = false;
        }
        sludgehboxdetectsize = 48;
    }break;
    
    case 3:
    {
        if sludgeswitch
        {
            sprite_index = sprite_get("bombsmall");
            image_index = 1;
            sound_play(sound_get("sm-poisonsplatter"));
            sludgehp = 5;
            sludgeswitch = false;
        }
        sludgehboxdetectsize = 30;
        sludgebelchedpop()
    }break;
    
    case 4:
    {
        if sludgeswitch
        {
            sprite_index = sprite_get("bombmed");
            image_index = 2;
            sound_play(sound_get("sm-poisonsplatter"));
            sludgehp = 10;
            sludgeswitch = false;
        }
        sludgehboxdetectsize = 36;
        sludgebelchedpop()
    }break;
    
    case 5:
    {
        if sludgeswitch
        {
            sprite_index = sprite_get("bombbig");
            image_index = 3;
            sound_play(sound_get("sm-poisonsplatter"));
            sludgehp = 20;
            sludgeswitch = false;
        }
        sludgehboxdetectsize = 48;
        sludgebelchedpop()
    }break;
    
    case 6:
    {
        state_timer++;
        if state_timer == 1
        {
            var poisonous = collision_circle(x,y, 52,oPlayer,true,true)
            
            with poisonous
            {
                if id != other.player_id && ("croagpoison" in self)
                && (state != PS_SPAWN && state != PS_DEAD && state != PS_RESPAWN && state != PS_ROLL_BACKWARD 
				&& state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_TECH_GROUND 
				&& state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD 
				&& state != PS_WALL_TECH) && !hitpause && !invincible && !super_armor
                {
                    croagpoison += 25;
                    croagpoison = clamp(croagpoison, 0, 100);
                }
            }
            
            switch (sludgelevel)
            {
                case 0:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, dissipate )
                    }
                    sound_play(sound_get("sm-dissipate"));
                    sprite_index = sprite_get("empty");
                }break;
                
                case 1:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, dissipate )
                    }
                    sound_play(sound_get("sm-dissipate"));
                    sprite_index = sprite_get("empty");
                }break;
                
                case 2:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, dissipate )
                    }
                    sound_play(sound_get("sm-dissipate"));
                    sprite_index = sprite_get("empty");
                }break;
                
                case 3:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, dissipate )
                    }
                    sound_play(sound_get("sm-dissipate"));
                    sprite_index = sprite_get("empty");
                }break;
            }
        }
        
        if state_timer >= 10 && instance_exists(self)
        {
            instance_destroy();
        }
    }break;
    
    case 7:
    {
        state_timer++;
        if state_timer == 1
        {
            switch (sludgelevel)
            {
                case 0:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, sludgebombsmall )
                        create_hitbox( AT_NSPECIAL_2, 2, other.x, other.y )
                    }
                    sprite_index = sprite_get("empty");
                }break;
                
                case 1:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, sludgebombsmall )
                        create_hitbox( AT_NSPECIAL_2, 2, other.x, other.y )
                    }
                    sprite_index = sprite_get("empty");
                }break;
                
                case 2:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, sludgebombmed )
                        create_hitbox( AT_NSPECIAL_2, 3, other.x, other.y )
                    }
                    sprite_index = sprite_get("empty");
                }break;
                
                case 3:
                {
                    with player_id
                    {
                        spawn_hit_fx( other.x, other.y, sludgebombbig )
                        create_hitbox( AT_NSPECIAL_2, 4, other.x, other.y )
                    }
                    sprite_index = sprite_get("empty");
                }break;
            }
        }
        
        if state_timer >= 10 && instance_exists(self)
        {
            instance_destroy();
        }
    }break;
}

if instance_exists(self) &&  (state >= 1 && state <= 6)
{
    
    var hitboxDetection = collision_circle(x,y,sludgehboxdetectsize,pHitBox,true,true)
    
    with hitboxDetection    
    {
		if (other.hit_delay <= 1)
		{
            if ((!(other.past_hitbox == hbox_num && other.past_attack == attack)) &&
            ((other.past_group == hbox_group && other.past_attack != attack)
            || other.past_group != hbox_group || -1 = hbox_group))
            && !(player_id == other.player_id && attack == AT_NSPECIAL_2 && hbox_num == 1)
            {
	   			other.past_hitbox = hbox_num;
	   			other.past_attack = attack;
	   			other.past_group = hbox_group;	   			//are set so two hitboxes that aren't supposed to both hit a player also don't hit the article 
	   			other.hsp = 0;
	   			other.vsp = 0;
			
    			other.sludgedamage = damage;
    			
    			//for hitpause
    			other.hit_delay = 5 + hitpause + extra_hitpause;
    			
    			//for jklnocback
    			other.kb_scaling = kb_scale;
    			other.bkb = kb_value;
    			with (other) {kb_angle = get_hitbox_angle(other.id)}

    			//hitpause
    			other.hitpause = true;
    			other.hitstop = hitpause + extra_hitpause;
    			
    			//defines who will own the hitbox that the article spawns
    			other.owner = player;
			
    			//says that the box got hit and then tells the player to decrease the health of the article by 1
    			other.health_check = true;
    			
    			
    			
    			if player_id == other.player_id
    			{
    				if attack == AT_USPECIAL
    				{
    					if hbox_num == 2
    					{
    						other.sludgedamage = 0;
    					}
    					
    					if hbox_num == 1
    					{
    						player_id.bounce_hit = true;
    						other.state = 6;
    						other.state_timer = 0;
    					}
    				}
    				
    				if (attack == AT_NSPECIAL && hbox_num == 1) ||
    				(attack == AT_DAIR && (hbox_num >= 5)) || 
    				(attack == AT_UAIR && (hbox_num >= 3)) ||
    				(attack == AT_DATTACK && (hbox_num >= 3)) ||
    				(attack == AT_FSTRONG && (hbox_num == 2)) ||
    				(attack == AT_DSTRONG && (hbox_num == 3)) ||
    				(attack == AT_USTRONG && (hbox_num == 3)) ||
    				(attack == AT_FAIR && (hbox_num == 3))
    				{
    					
    					other.state = 7;
    					other.state_timer = 0;
    				}
    				
    				if (attack == AT_FSPECIAL_2)
    				{
    					other.sludgedamage = 0;
    					other.sludgebelched = true;
    					other.sludgedir = spr_dir;
    					other.hit_delay = 25;
    					other.hitstop = 8;
    					other.belchtimer = 20;
    					hit_effect = 0;
    				}
    			}
    			
    			sound_play(pHitBox.sound_effect);	
    			spawn_hit_fx(other.x, other.y, hit_effect);
			    
			    if enemies == 0 && type == 2
			    {
			        destroyed = true;
			    }
			    
			    if type == 1
			    {
    			    pHitBox.player_id.has_hit = true;
    			    pHitBox.player_id.hitpause = true;
			        pHitBox.player_id.hitstop = hitpause*0.5;

	    		    pHitBox.player_id.old_hsp = pHitBox.player_id.hsp;
	    		    pHitBox.player_id.old_vsp = pHitBox.player_id.vsp;
			    }
	    	}
	    }
    }
    
    if (hit_delay > -10)
    {
	    hit_delay--;

	    if sludgebelched && belchtimer >= 2
		{
			hsp = 15*sludgedir;
			belchtimer--;
		}
		else if belchtimer == 1
		{
			hsp = 0;
			sludgebelched = false;
			belchtimer--;
		}
    }
	   
    if hit_delay <= -10
    {
        past_hitbox = 0;
        past_attack = 0;
        past_group = 0;
    }
    
    if health_check
    {
        sludgehp -= sludgedamage;
        health_check = false;
    }
}

if instance_exists(self)
{
    if precautionarytimer >= 1 && state == 0
    {
        precautionarytimer--;
    }
    else if precautionarytimer <= 1
    {
        instance_destroy();
    }
}

#define sludgebelchedpop()
if sludgebelched
{
	var player = collision_circle(x,y,sludgehboxdetectsize,oPlayer,true,true)
	
	if player != noone && player.id != player_id.id
	{
		state = 7;
		state_timer = 0;
	}
}
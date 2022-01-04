//Update

if subst_timer >= 1
{
    subst_timer--;
}

if taunt_timer >= 1
{
    taunt_timer--;
}

if !free
{
    nair_stall = true;
    bair_stall = true;
    bounce_limit = 2;
    croagfspecused = false;
    dspec_stall = true;
    nspec_stall = true;
}

if free
{
    if bounce_limit == 0
    {
        move_cooldown[AT_USPECIAL] = 10;
    }
    
    if croagfspecused
    {
    	move_cooldown[AT_FSPECIAL] = 10;
    }
}

if state == PS_RESPAWN
{
	if state_timer == 1
	{
    	croagrespawntxtbox = random_func(0, 5, true);
	}
	
	if !visible
	{
		ballcapsuleeffect = true;
	}
	else
	{
		if ballcapsuleeffect
		{
			spawn_hit_fx( x, y, ballcapsule )
		}
		
		ballcapsuleeffect = false;
	}
}

if state == PS_AIR_DODGE
{
    if state_timer == 3
    {
        if sprite_index == sprite_get("airdodge_up")
        {
            dodgepuff(0,0,20)
        }
        
        if sprite_index == sprite_get("airdodge_down")
        {
            dodgepuff(180,0,-68)
        }
        
        switch (spr_dir)
        {
            case 1:
            {
                if sprite_index == sprite_get("airdodge_forward")
                {
                    dodgepuff(270,-68,-28)
                }
                
                if sprite_index == sprite_get("airdodge_upforward")
                {
                    dodgepuff(315,-48,20)
                }
                
                if sprite_index == sprite_get("airdodge_upback")
                {
                    dodgepuff(45,48,20)
                }
                
                if sprite_index == sprite_get("airdodge_downforward")
                {
                    dodgepuff(225,-40,-68)
                }
                
                if sprite_index == sprite_get("airdodge_downback")
                {
                    dodgepuff(135,40,-68)
                }
                
                if sprite_index == sprite_get("airdodge_back")
                {
                    dodgepuff(90,68,-28)
                }
            }break;
            
            case -1:
            {
                if sprite_index == sprite_get("airdodge_forward")
                {
                    dodgepuff(90,68,-28)
                }
                
                if sprite_index == sprite_get("airdodge_upforward")
                {
                    dodgepuff(45,48,20)
                }
                
                if sprite_index == sprite_get("airdodge_downback")
                {
                    dodgepuff(225,-40,-68)
                }
                
                if sprite_index == sprite_get("airdodge_downforward")
                {
                    dodgepuff(135,40,-68)
                }
                
                if sprite_index == sprite_get("airdodge_back")
                {
                    dodgepuff(270,-68,-28)
                }
                
                if sprite_index == sprite_get("airdodge_upback")
                {
                    dodgepuff(315,-48,20)
                }
            }break;
        }
    }
}

if stance_indicator_timer >= 0.01
{
    stance_indicator_timer-= 0.05;
    
    switch (croagstance)
    {
        case 1:
        {
            toxicstance_indic_timer += 0.5;
        }break;
        
        case 2:
        {
            punishstance_indic_timer += 0.25;
        }break;
    }
}

if ((state == PS_PARRY || state == PS_LAND || state == PS_DOUBLE_JUMP || state == PS_DASH
|| state == PS_WAVELAND || state == PS_CROUCH || state == PS_LANDING_LAG || state == PS_JUMPSQUAT )) && (state_timer <= 10)
{
    stance_indicator_timer = 1.5;
    if state_timer <= 1
    {
        toxicstance_indic_timer = 0;
        toxicstance_indic_side = spr_dir;
    }
}
else if (state == PS_AIR_DODGE) || (state_cat == SC_HITSTUN) || 
((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) &&
!(attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_TAUNT))
{
    stance_indicator_timer-= 1.2;
}

switch (croagstance)
{
    case 1://Toxic Stance
    {
    	sprite_change_offset("parry", 22, 46);
        hitstun_grav = .525;
        air_dodge_speed = 10;
        
        knockback_adj = 1.2;
        rivalsdevsarestupid_idlevar += .1;
        rivalsdevsarestupid_walkvar += .18;
        rivalsdevsarestupid_dashvar += .2;
        
        if rivalsdevsarestupid_idlevar >= 9 || (state != PS_IDLE 
        && rivalsdevsarestupid_idlevar != 0 && state != PS_SPAWN) 
        {
        	rivalsdevsarestupid_idlevar = 0;
        }
        
        if rivalsdevsarestupid_walkvar >= 7 || (state != PS_WALK 
        && rivalsdevsarestupid_walkvar != 0) 
        {
        	rivalsdevsarestupid_walkvar = 0;
        }
        
        if rivalsdevsarestupid_dashvar >= 6 || (state != PS_DASH 
        && rivalsdevsarestupid_dashvar != 0) 
        {
        	rivalsdevsarestupid_dashvar = 0;
        }
    }break;
    
    case 2://Punish Stance
    {
    	sprite_change_offset("parry", 24, 46);
        hitstun_grav = .5;
        air_dodge_speed = 8;
        
        knockback_adj = 1.1;
        walk_anim_speed = .18;
    }break;
}

with oPlayer
{
    if state == PS_DEAD || state == PS_RESPAWN
    {
        if ("croagpoison" in self)
        {
            croagpoison = 0;
        }
    }
    
    if state_cat != SC_HITSTUN
    {
    	if ("pseudograb" in self && pseudograb)
    	{
    		pseudograb = false;
    	}
    }
}

if has_rune("M")
{
	with oPlayer 
	{
		if ("croagpoisonovertimedamage" in self && croagpoisonovertimedamage && "croagpoison" in self && croagpoison >= 25)
		{
			if croagpoisonovertimedamagetimer<=59
			{
				croagpoisonovertimedamagetimer++;
			}
			else if croagpoisonovertimedamagetimer>=59
			{
				croagpoisonovertimedamagetimer = 0;
				take_damage(self.player,-1, 5);
			}
			
			var croagthing_x = x;
			var croagthing_y = y;
			var croagthing_spr_dir = spr_dir;
			switch (croagpoisonovertimedamagetimer)
			{
				case 54:
				{
					with other
					{
					spawn_hit_fx(croagthing_x+32*croagthing_spr_dir, croagthing_y-48, poison_fx )
					}
				}break;
				
				case 58:
				{
					with other
					{
					spawn_hit_fx(croagthing_x-32*croagthing_spr_dir, croagthing_y-64, poison_fx )
					}
				}break;
				
				case 2:
				{
					with other
					{
					spawn_hit_fx(croagthing_x-48*croagthing_spr_dir, croagthing_y-24, poison_fx )
					}
				}break;
				
				case 6:
				{
					with other
					{
					spawn_hit_fx(croagthing_x+48*croagthing_spr_dir, croagthing_y-32, poison_fx )
					}
				}break;
			}
		}
	}
}

if knockoffvisualcooldown >= 1 {knockoffvisualcooldown--;}

if (introTimer2 < 1) 
{
    introTimer2++;
} 
else 
{
    introTimer2 = 0;
    introTimer+= 0.4;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 13)  && state == PS_SPAWN
{
    draw_indicator = false;
    if (introTimer <= 5) 
    {
    	if (special_down || strong_down || shield_down){croagstance = 2;}
    }
    if (introTimer >= 6 && introTimer <= 7) && introPoof
    {
    	spawn_base_dust(x, y, "jump")
    	introPoof = false;
    	sound_play(sound_get("sm-poof"));
    	sound_play(sound_get("453Cry"));
    }
} 
else 
{
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

hitfxDepth(stinghit, -5)
hitfxDepth(fighthit, -4)
hitfxDepth(fightinghit, -4)
hitfxDepth(poisonjabhit, -5)
hitfxDepth(bombset, -5)
hitfxDepth(sludgebombsmall, -5)
hitfxDepth(sludgebombmed, -5)
hitfxDepth(sludgebombbig, -5)
hitfxDepth(dissipate, -5)
hitfxDepth(mudhit, -5)
hitfxDepth(suckpunchhit, -5)
hitfxDepth(bounce_start, -6)

#define hitfxDepth(hitfxname, depf)

with (hit_fx_obj) if (hitfxname == hit_fx && player_id = other.id && depth != depf) depth = depf;

#define dodgepuff(angle, xoffset, yoffset)
{
	var puff = spawn_hit_fx( x+xoffset, y+yoffset, airdodge_poof )
	puff.draw_angle = angle;
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
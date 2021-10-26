//update

if (init_delay > 0) //give player the chance to init...!?
{ init_delay--; exit; }
//====================================================================
// hyu crowdcode with tweaks
#macro DETECT_START       0
#macro DETECT_STRONG_HIT  1
#macro DETECT_WAITING     2
#macro DETECT_SAVEGASP    3
#macro DETECT_PARRYING    4
#macro DETECT_PARRYWAIT   5
#macro DETECT_TAUNTING    6
#macro DETECT_TAUNTWAIT   7

//keep those in sync with article1_update
#macro AUDIENCE_GASPING   2
#macro AUDIENCE_CHEERING  3
#macro AUDIENCE_JUMPING   4
#macro AUDIENCE_JUMPTWIRL 5

if (!initialized)
{
    audience_article = instance_create(20, 580, "obj_stage_article", 1);
    crowd_detect_phase = 0;
    crowd_tracked_player = noone;
	    
	//change those to change the way crows reacts to events
	parry_reaction = AUDIENCE_GASPING;
	strong_reaction = AUDIENCE_CHEERING;
	knockout_reaction = AUDIENCE_JUMPING;
	taunt_reaction = AUDIENCE_JUMPTWIRL;

    initialized = true; exit;
}
// else

if (crowd_detect_phase == DETECT_START)
{
    with (asset_get("oPlayer"))
    {
    	if (state == PS_ATTACK_GROUND && (attack == AT_TAUNT||attack == AT_TAUNT_2))
    	{
    	    //someone taunted
    		other.crowd_tracked_player = self;
    		other.crowd_detect_phase = DETECT_TAUNTING;
    	}
    	else if (was_parried)
    	{
    		other.crowd_tracked_player = self;
    		other.crowd_detect_phase = DETECT_PARRYING;
    	}
    	else if (("should_make_shockwave" in self)
    	&& (should_make_shockwave && state == PS_HITSTUN))
    	or (("orig_knock" in self) 
    	&& (orig_knock > 11 && state == PS_HITSTUN))
    	{
    	    //someone got hit pretty badly
    		other.crowd_tracked_player = self;
    		other.crowd_detect_phase = DETECT_STRONG_HIT;
    	}
    }
}

if !instance_exists(crowd_tracked_player)
{
	crowd_detect_phase = DETECT_START;
}

//shockwave or stronghit
if (crowd_detect_phase == DETECT_STRONG_HIT)
{
    //Cheer
	audience_react(strong_reaction);
	sound_play(sound_get("cheer_2"), false, noone, 0.6);
	crowd_detect_phase = DETECT_WAITING; //wait for recovery
}

//save
if (crowd_detect_phase == DETECT_SAVEGASP)
{
	//audience_react(AUDIENCE_GASPING);
	//sound_play(sound_get("gasp"), false, noone, 0.8);
	crowd_detect_phase = DETECT_START;
}

//waiting for result of strong hit
if (crowd_detect_phase == DETECT_WAITING)
{
    if(crowd_tracked_player.last_player_hit_me == 0)
    { 
	    //what a save
		crowd_detect_phase = DETECT_SAVEGASP;
	}
	//else: check player_death.gml for other possible outcome
}

//parried
if (crowd_detect_phase == DETECT_PARRYING)
{
	audience_react(parry_reaction);
	sound_play(sound_get("gasp"), false, noone, 0.8);
	crowd_detect_phase = DETECT_PARRYWAIT;
}

//wait for end of parry status
if (crowd_detect_phase == DETECT_PARRYWAIT)
{
	if (!crowd_tracked_player.was_parried 
	  && crowd_tracked_player.state != PS_PRATLAND 
	  && crowd_tracked_player.state != PS_PRATFALL)
	{
	    //Parrylag ended
		crowd_detect_phase = DETECT_START;
	}
}

//taunted
if (crowd_detect_phase == DETECT_TAUNTING)
{
	audience_react(taunt_reaction);
	sound_play(sound_get("cheer_1"), false, noone, 0.6);
	crowd_detect_phase = DETECT_TAUNTWAIT;
}

//waiting for end of taunt
if (crowd_detect_phase == DETECT_TAUNTWAIT)
{
	if (crowd_tracked_player.state != PS_ATTACK_GROUND)
	{
		crowd_detect_phase = DETECT_START;
	}
}

//===================================================================
#define audience_react(type)
{
	//hype levels can only go "up" (in value order)
	if (audience_article.react_type > type) return;
	//else
	audience_article.react_type = type;
	audience_article.react_timer = 15 + random_func(3, 30, true);
}
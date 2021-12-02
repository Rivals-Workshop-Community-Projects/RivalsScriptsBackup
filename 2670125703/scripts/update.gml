// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

doing_goku_beam = (phone_attacking && attack == AT_NSPECIAL && window == clamp(window, 4, 6));

//	GONNA FLY NOW~!
if phone_cheats[CHEAT_FLY] && !shield_down vsp = -2;

//	Max Jumps
max_djumps = phone_cheats[CHEAT_DJUMPS];

//	Stretching the sprite WIDE
if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[CHEAT_WIDE] * sign(spr_dir);

//	This pain will only make him stronger
if phone_cheats[CHEAT_RECOIL] with pHitBox if player_id == other can_hit_self = 1;

//-------------------------------------------------------------------------

//	Intro Stuff

if (state == PS_SPAWN && instance_number(oPlayer) == 2)
{
	//	Roger
    if (string(oPlayer.url) == "2304745302")
	{
		if (get_gameplay_time() == 1)
		{
			sound_play(asset_get("sfx_abyss_explosion_big"), false, noone, 0.60);
			sound_play(sound_get("sfx_regortoroger"));
		}	
    }
    
	else
	{
		if (get_gameplay_time() == 1)
		{
			sound_play(asset_get("sfx_abyss_explosion_big"), false, noone, 0.60);
			sound_play(sound_get("sfx_regorintro"), false, noone, 2);
		}	
    }
}

if (state == PS_SPAWN && instance_number(oPlayer) == 3 || instance_number(oPlayer) == 4)
{
	if (get_gameplay_time() == 1)
	{
		sound_play(asset_get("sfx_abyss_explosion_big"), false, noone, 0.60);
		sound_play(sound_get("sfx_regorintro"), false, noone, 2);
	}	
}

//-------------------------------------------------------------------------

//	General

//	FSPECIAL cooldown restriction
if (!free)
{
	move_cooldown[AT_FSPECIAL] = 0;
}	

//	Crouch Sound Effect
if (state == PS_CROUCH && state_timer == 1) 
{
	sound_play(sfx_dbfz_crouch);
}

if (state == PS_WAVELAND && state_timer == 1) 
{
	sound_stop(sound_get("sfx_dbz_jump"));
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
	if (was_parried == true)
	{
		hsp = 0;
		destroy_hitboxes();
	}
}

//-------------------------------------------------------------------------

//	Dialogue Buddy

if (variable_instance_exists(id,"diag"))
{
	//--------------Change their name whenever
    diag_name = "Roger the Hedgehog"
	
	//	ADDING REGULAR DIALOGUE
    //	Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
	"You're not Roger.",
	"Die.",
	"Scum.",
	"You are not worthy as my opponent. Only Roger.",
	"Roger isn't here, so I guess I got time...",
	"Bring it...",
	"Now I'm motivated...",
	"Begone.",
	"What's wrong?",
	"Did Roger send you?",
	"You're going down.",
	"Rest in Pieces.",
	"You will not forget this demon's power!",
	"Don't get so cocky.",
	"This is the power of Hell!",
	"Ridiculous.",
	"C'mon.",
	"You shall die.",
	"How boring.",
	"Too easy.",
	"Where's your motivation?",
	"Only Roger can handle this demon's power!",
	"You are not worthy as my opponent.",
	"You're going down.",
	"How repulsive.",
	"Power... I need more power...",
	"You're trash.",
	"This is the end.",	
	"Nice shoes.",
	"You should feel honoured dying by my hands...",
	"This is the best that the Aether can offer? Pathetic.",	
	"Sonic? What the hell is a Sonic?",
	"You think this is funny? After this fight, you'll die."]

	//--------------Specific Character Interactions
	//  Regular dialogue
	
	
	
	//--------------NRS/3-Part dialogue
	
	//	Rivals of the Crib
	//	Himself
	if(otherUrl == 2670125703) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "You're weak.",
                "I'm you.",
                "So be it."]
            }
        }
    }
	
	//	Roger
    if(otherUrl == 2304745302) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "I only respect you, Roger.",
                "I should have killed you instead of showing you mercy.",
                "Either way, it's time to end this."]
            }
        }
    }
	
	//	G.B.A
    if(otherUrl == 2184682009) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Who are you?",
                "Bloody hell, not this again.",
                "..."]
            }
        }
    }
	
	//	Gyoshi
    if(otherUrl == 2229329794) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "For whatever reason, you have my gratitude.",
                "Umm... Thanks?",
                "That doesn't mean I respect you."]
            }
        }
    }
	
	//	Marcus
    if(otherUrl == 2396918792) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Do you know Roger?",
                "Umm, aren't you Roger? Man, what weird Anime arc are you on?",
                "...I don't have time for this."]
            }
        }
    }
	
	//	Kodiak
    if(otherUrl == 2396919125) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "What are you trying to hide?",
                "Me? Nothing. I should be asking you that.",
                "I only respect one person. You're not him."]
            }
        }
    }
	
	//	Saki
	if(otherUrl == 2611020513) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Got a light for my cigarette?",
                "Wow, look at this guy. Don't you know smoking sucks.",
                "The taste and pain only strengthens me more."]
            }
        }
    }
	
	//	TrudiS
	if(otherUrl == 2611094959) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Out of my way.",
                "Wow, what happened to you, Roger?",
                "...You know, Roger?"]
            }
        }
    }
	
	//	FrediS
	if(otherUrl == 2611097458) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Power...",
                "Power? What does a fool like you know about Power?",
                "To defeat my rival and save this Aether."]
            }
        }
    }	
	
	//	DSmuggler
	if(otherUrl == 2611101267) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Back off.",
                "The amount of money I could get from this silly demon...",
                "You had your chance to run."]
            }
        }
    }	
}
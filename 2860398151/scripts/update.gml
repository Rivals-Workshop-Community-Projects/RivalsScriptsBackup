// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//	Cheats Section

//	Auto Meter
if phone_cheats[CHEAT_METER] energy_meter += 1;

//	Fly me to the moon, pls
if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

//	Max Jumps
max_djumps = phone_cheats[CHEAT_DJUMPS];

//	Stretching the sprite WIDE
if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[CHEAT_WIDE] * sign(spr_dir);

//	This pain will only make him stronger
if phone_cheats[CHEAT_RECOIL] with pHitBox if player_id == other can_hit_self = 1;

//===============================================================================================
//  Mute city

//	CSS Button Toggle Control
if (get_synced_var(player) == 1)
{
	muted = true;
}

if (get_synced_var(player) == 0)
{
	muted = false;
}

//===============================================================================================
//  General Stuff

if (state == PS_SPAWN)
{
	energy_meter = 100;
}

//	Ensure meter never goes above 100
if (energy_meter > 100) 
{ 
	energy_meter = 100;
}

//	Ensure it never goes below 0
if (0 > energy_meter) 
{ 
	energy_meter = 0;
}

if (state == PS_WALL_JUMP)
{
	if (energy_meter > 20) 
	{ 
		move_cooldown[AT_USPECIAL] 	= 0;
	}
}

if (!free)
{
	move_cooldown[AT_NSPECIAL_AIR] 	= 0;
	
	if (energy_meter > 24) 
	{ 
		move_cooldown[AT_USPECIAL] 	= 0;
	}	
}

if (energy_meter < 24) 
{ 
	move_cooldown[AT_DSPECIAL] 	= 9999;
}	

else if (energy_meter > 24) 
{ 
	move_cooldown[AT_DSPECIAL] 	= 0;
}

//	Grab Reset Zone
if (state_cat == SC_HITSTUN || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND))
{
    grabbed_player_obj 	= noone;
}

//===============================================================================================
//------------------------Dialogue Buddy-------------------------------------

if(variable_instance_exists(id,"diag"))
{
    diag_name = "Kodiak N. Route"
	
	//	ADDING REGULAR DIALOGUE
    //	Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
	"I am the Cardinal Storm... Kodiak N. Route!",
	"I've got this one!",
	"Run, if you like. I'll give you five seconds!",
	"Time is at a halt. There's no escape!",
	"As long as we're alive, we can try again!",
	"I'm not doing this for fun, okay? ",
	"Come on! I don't have all day!",
	"You're not walking away from this.",
	"If french bread is pain, then I must be a bakery."]

	//--------------Specific Character Interactions
	//  Regular dialogue
	
	// 	Nothing for now
	
	//--------------NRS/3-Part dialogue
	
	//	Rivals of the Crib
	//	Himself 
	if(otherUrl == 2860398151) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "I will never get used to this.",
                "You have fought other Kodiaks?",
                "Yeah, and I beat them too."]
            }
        }
    }
	
	//	Legacy Kodiak
	if(otherUrl == 2396919125) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "You're basically shorter than the boss now mini me.",
                "My Boss is almost 7 feet tall.",
                "Can we trade bosses?"]
            }
        }
    }
	
	//	G.B.A
    if(otherUrl == 2184682009)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "We gotta stop meeting like this",
                "Afraid that I'll get your job or something? ",
                "I'm worried someone is going to find out about your blue hat..."]
            }
        }
    }
	
	//	Gyoshi
    if(otherUrl == 2229329794)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "I heard you've met Zanzibar.",
                "Yeah he's pretty based.",
                "Honestly surprised you guys didn't fight."]
            }
        }
    }
	
	//	Marcus
    if(otherUrl == 2396918792)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "So you went back in time to eat your pancakes before it got soggy by the syrup?",
                "Yes.",
                "I'm going to need a raise."]
            }
        }
    }
	
	//	Saki
	if(otherUrl == 2611020513)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "You don't combust in the sun?",
                "I get wicked sunburns though.",
                "If I meet a vampire with a tanline I'll send them your way."]
            }
        }
    }	
	
	//	TrudiS
	if(otherUrl == 2611094959)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "It's time to chimp out?",
                "Huh?",
                "You know going ape, going hee hoo haa haa, absolutely unhinged, BIG MONK- oh wait I've completely mistook you for a friend."]
            }
        }
    }	
	
	//	FrediS
	if(otherUrl == 2611097458)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "You're not getting away with this.",
                "I don't care I've already won.",
                "Not while I'm around."]
            }
        }
    }	
	
	//	DSmuggler	
	if(otherUrl == 2611101267)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Here for spare change?",
                "I'm here for your time machine!",
                "If you can find it, it's yours."]
            }
        }
    }

	//	Card	
	if(otherUrl == 2802365520)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Ladies must love playing strip poker with you friend.",
                "Sir! I am a professional.",
                "Oh, my bad. I guess I don't need any tips."]
            }
        }
    }
	
	//	Dewi	
	if(otherUrl == 2845614848)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Whoa, whoa! What's a kid doing here?",
                "Fanservice!",
                "...You what?!"]
            }
        }
    }

	//	Dreadbeak 
    if(otherUrl == 2860024078)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "If you don't ask for help you won't get any, it's just that simple.",
                "I'LL HELP YOU TO YOUR GRAVE!",
                "That ain't gonna be simple."]
            }
        }
    }	

    //	Shantae 
    if(otherUrl == 2890757258)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "If I wish for a pizza do you want a slice?",
                "Of course!  I could always go for some pizza.",
                "Sexcellent!"]
            }
        }
    }	

    //	Disco 
    if(otherUrl == 2941534514)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Left Left right right spin and turn and great big smile!",
                "Okaaay... Here I go! Bom-para-para... Bom-pah-pah... Raise the cave... Respect the beat!",
                "Walk without rhythm, it won't attract the worm."]
            }
        }
    }	

    //	Masky 
    if(otherUrl == 2987065763)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Is that your real voice or did you swallow a gravel truck for breakfast?",
                "Speak for yourself, you grease loving gremlin.",
                "..."]
            }
        }
    }	

    //	Spark 
    if(otherUrl == 3040171673)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Sorry, we're not hiring clowns.",
                "I'm not a clown. I'm a street performer!",
                "There's a difference?"]
            }
        }
    }	

    //	Bowsette 
    if(otherUrl == 3122481848)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Sorry, but your princess is in another workshop.",
                "What does that even mean?",
                "The Suits are watching."]
            }
        }
    }	

    //	RyeGuy & Beaky 
    if(otherUrl == 3203302945)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "A Sword, a Bird, an Egg, birdhouses and even a slingshot. But you're missing one thing...",
                "Beaky: We have pizza and we're not sharing!",
                "#&$@?!"]
            }
        }
    }	

    //	Brella
    if(otherUrl == 3244606859)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "You got quite the attitude, little miss.",
                "Little?! Like you're the one to talk, shorty!",
                "Oi! I may be small but I'm an adult!"]
            }
        }
    }	

    //	Rayman
    if(otherUrl == 3320958468)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Whoa whoa! Did someone steal your body parts or something?!",
                "What? No, that's crazy. I was born like this.",
                "Ooh... Oh, I'm sorry for your loss."]
            }
        }
    }	

    //	Camic
    if(otherUrl == 3350776556)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Stop right, clown girl! I've seen the damage you caused!",
                "...",
                "Talk dammit! I know you can! Don't play with me!"]
            }
        }
    }	

    //	Randalf Rhino
    if(otherUrl == 3388038739)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Did I step into a cartoon or something?",
                "I tried being a cartoonist once, I didn't have a license at the time though.",
                "Wait, you need a license for that?!"]
            }
        }
    }	

    //	Geebs
    if(otherUrl == 3432458008)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Wait... That's not the time hat. What happened to you, G.B.A?!",
                "G.B.A? My good tiny small bitsized toy-I mean friend... I AM THE GREAT GEEBS~!",
                "I got a bad feeling about this..."]
            }
        }
    }	
	
	//	Roger 
    if(otherUrl == 2304745302)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "A Manifestation?",
                "R̶o̵g̷e̶r̴",
                "Yep, gotta put you down boy. "]
            }
        }
    }
	
	//	Regor 
    if(otherUrl == 2670125703)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Picking on me when I'm all tuckered out.",
                "As if you're going to stand still for me.",
                "Aw, I did play my hand too soon?"]
            }
        }
    }

    //	Cindy Appeal
    if(otherUrl == 3376849067)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Great... Another weird manifestation.",
                "Like, submit to the holiness that is, like, Roger~!",
                "I... might have to purge this whole timeline because of that."]
            }
        }
    }	
}

//===============================================================================================

if (state == PS_SPAWN)
{
	if (get_gameplay_time() == 22)
	{
		sound_play(asset_get("sfx_ice_shatter_big"), false, noone, 2);
	}	
}

if (!muted)
{
    if (state == PS_RESPAWN && state_timer == 2)
    {
        if (get_player_stocks( player ) == 1) 
        {
            sound_play(sound_get("Kodiak final stock"));
        }
    }	

    //	Anime
    if (attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG)
    {
        if (instance_exists(hit_player_obj))
        {
            if (hit_player_obj.activated_kill_effect && get_gameplay_time() mod 80 == 0)
            {
                sound_play(sound_get("Kodiak This is it"), false, noone, 2);	
            }
        }
    }

    if (attack == AT_DSPECIAL)
    {
        if (instance_exists(hit_player_obj))
        {
            if (hit_player_obj.activated_kill_effect && get_gameplay_time() mod 80 == 0)
            {
                sound_play(sound_get("Kodiak Down Special final connect"), false, noone, 2);	
            }
        }
    }

    if (attack == AT_DSPECIAL_2)
    {
        if (instance_exists(hit_player_obj))
        {
            if (hit_player_obj.activated_kill_effect && get_gameplay_time() mod 80 == 0)
            {
                sound_play(sound_get("Kodiak Bear Down Special final connect"), false, noone, 2);	
            }
        }
    }
}
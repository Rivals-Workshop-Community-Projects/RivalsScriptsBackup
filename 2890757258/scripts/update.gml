// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//===============================================================================================
//	Cheats Section

//	Auto Meter
if phone_cheats[CHEAT_METER] magic_meter += 1;

//	Fly me to the moon~
if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

//	Max Jumps
max_djumps = phone_cheats[CHEAT_DJUMPS];

//	Stretching the sprite WIDE
if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[CHEAT_WIDE] * sign(spr_dir);

//	This pain will only make her sassier
if phone_cheats[CHEAT_RECOIL] with pHitBox if player_id == other can_hit_self = 1;

//===============================================================================================
//	Magic Meter Stuff

if (state == PS_SPAWN)
{
	magic_meter = 100;
}

//	Ensure meter never goes above 100
if (magic_meter > 100) 
{ 
	magic_meter = 100;
}

//	Ensure it never goes below 0
if (0 > magic_meter) 
{ 
	magic_meter = 0;
}

//===============================================================================================
//  General stuff

//	SFX thingy
if (state == PS_CROUCH && state_timer == 1)
{
	sound_play(sound_get("sfx_shantae_crouch"));
}

//	Commence the funny Genie crawl
if (state == PS_CROUCH)
{
	can_move = true;	
		
	if (joy_pad_idle)
	{
        hsp = 0;
        is_crawling = false;
    }      

	if (right_down)
	{
		spr_dir 	= 1;
		hsp 		= 1.8;
		is_crawling = true; 

		if (get_gameplay_time() mod 26 == 0)
		{
			sound_play(sfx_crawl, false, noone, 0.20);	
		}		
	}
		
	if (left_down)
	{
		spr_dir 	= -1;
		hsp 		= -1.8;
		is_crawling = true; 

		if (get_gameplay_time() mod 26 == 0)
		{
			sound_play(sfx_crawl, false, noone, 0.20);	
		}			
	}
}

//	Genie crawl is no more
if (state != PS_CROUCH)
{
	is_crawling = false;
}

//	Reset Monkey Climb Counter
if (!free)
{
	monke_count = 0;
}

//	Wait Idle Swap
if (state == PS_IDLE)
{
	if (state_timer == 392)
	{
		var genie_idle = random_func(0, 2, true);
		switch(genie_idle) 
		{
			case 0:
			wait_length = 210;
			wait_sprite = sprite_get("wait_idle1");
			break;
			
			case 1:
			wait_length = 204;
			wait_sprite = sprite_get("wait_idle2");
			break;
		}
	}
}

//===============================================================================================

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

if (attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND && state_timer == 2))
{
	var monke1 = random_func(0, 6, true);
	switch(monke1) 
	{
		case 0:
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
		break;
		
		case 1:
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialALT"));
		break;
	}
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR && state_timer == 2))
{
	var monke2 = random_func(0, 6, true);
	switch(monke2) 
	{
		case 0:
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
		break;
		
		case 1:
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_airALT"));
		break;
	}
}

//===============================================================================================

//	le runes

if has_rune("A") 
{
	set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 80);
	set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 361);
}

if has_rune("B")
{
	set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, -1.5);	
	set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.75);
}

if has_rune("G")
{
	set_num_hitboxes(AT_FSTRONG, 4);
	
	set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
	set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 2);
	set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 1);
	set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 148);
	set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 40);
	set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 28);
	set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
	set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 13);
	set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 361);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.05);
	set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.05);
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 15);
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 10);
	set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 305);
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_may_whip2"));
	set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 2);
	set_hitbox_value(AT_FSTRONG, 4, HG_HIT_LOCKOUT, 10);
}

//===============================================================================================
//  Dialogue Buddy

if(variable_instance_exists(id,"diag"))
{
    diag_name = "Shantae"
	
	//	ADDING REGULAR DIALOGUE
    //	Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
	"Yee!",
    "Ready!",
    "No Way!",
    "Hello...?",
    "Ret-2-Go!",
	"I'm ready!",
    "Aw geez...",
	"Get ready!",
    "What a grump!",
	"I'm Ret-2-Go!",
	"Are you ready?!",
    "This is dumb...",
    "That's far enough!",
    "I need a vacation...",
    "Hold it right there!",
    "You can't be serious!",
    "This must be the place.",
	"Ready or not, here I go!",
    "What's up? You wanna fight?",
    "Thanks for the free ride, Sky!",
	"Shantae here! Half Genie Hero!",
    "Yeah! I've still got the moves!",
    "I bet Risky Boots is behind this.",
	"You're not walking away from this!",
    "Come on already! I don't have all day!",
	"Whew! Life as a Half Genie is hard work!"
	"Urgh... What did you get me into this time, Rottytops?",
	"I better hurry this up before Bolo gets into trouble... Again."]

	//--------------Specific Character Interactions
	//  Regular dialogue
	
	//	Aperson's Lilac
    if(otherUrl == "2697174282" && diag != "2697174282") //Change the url into a specific character's
    {
        diag = "Oh wow, you can use your hair like a whip too?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	
	//	Aperson's Carol
    if(otherUrl == "2782300518" && diag != "2782300518") //Change the url into a specific character's
    {
        diag = "You remind me a certain mischievous zombie back home.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	
	//	ROA Shovel Knight
    if(otherUrl == CH_SHOVEL_KNIGHT && diag != "") //Change the url into a specific character's
    {
        diag = "I wasn't expecting to see you here. Happy treasure hunting?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	
	//--------------NRS/3-Part dialogue
	
	//	Rivals of the Crib
	//	Herself 
	if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Another me?!",
                "Another me?!",
                "Hey! Don't repeat after me, other me!"]
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
                "You have got to be the weirdest clown I've seen in a long time.",
                "Look who's talking! What are you some sort Purple Wigged Space Elf?",
                "HEY! You got some nerve with that wild take!"]
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
                "I'm sensing all sorts of wrong with you.",
                "Ohohohoho... Is it because of my wicked beauty~?",
                "...Yeah, sure. Let's go with that."]
            }
        }
    }

    //  Rayman
    if(otherUrl == 3320958468)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Wow, a limbless... thingamajig? That's some impressive magic!",
                "Hey! These fists took down pirates, robots, and worse.",
                "Heh, then let's see how they handle a half-genie beatdown!"]
            }
        }
    }

    //  Wapeach
    if(otherUrl == 3489846072)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Okay... So, you're like imposter of someone but... Angrier. And louder.",
                "AN IMPOSTER?! I'M BETTER IN EVERY WAY, YA HEAR?!",
                "Yikes. Someone needs a nap..."]
            }
        }
    }

    //  Raichu
    if(otherUrl == 3630880116)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Aww, you're sooo cute! Are you lost?",
                "Rai! Raichu-raii! Chu chu!",
                "...Right. I have no idea what you just said, but I'm guessing it was a challenge."]
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
                "Get ready, 'cause I'm not gonna hold back!",
                "Well then, neither am I! Let's jam!!",
                "Hehe, this might actually be fun."]
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
                "Umm... Are you okay over there?",
                "Oh my god! You're so frickin cute!",
                "Aw geez..."]
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
                "For the last time, no! I'm not that kind of genie!",
                "A half genie and you can't grant half of my wishes? I'm suing.",
                "Ugghh...."]
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
                "Just who do you think you are, anyway?",
                "Not a genie, that's for sure.",
                "Hey! You got a problem with me?!"]
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
                "Whoa! Where did you learn magic like that?",
                "Magic? Or no, all of this is technique~!",
                "T-Technique?"]
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
                "So, you're the one who's causing trouble around here?",
                "Heheh... Looks like I have another challenger.",
                "A challenger? I'm the one who's going to send you packing!"]
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
                "Hey! Thieves, Pirates and Looters are not wanted here!",
                "Oi! It's a honest living, toots!",
                "Toots?! Now you've done it!"]
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
                "A stickman?",
                "Says the talking genie girl.",
                "Alright, I see your point."]
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
                "Aww, are you lost young man?",
                "My name's Dewi, not Lost.",
                "That's... That's not what I meant."]
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
                "Are you zombie like my friend?",
                "A ZOMBIE?! THOU FEEL MY WRATH!",
                "Oh dear..."]
            }
        }
    }
	
	//	Disco
	if(otherUrl == 2941534514) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "A dinosaur... With an afro?",
                "You know it, baby! Can you feel the rhythm?",
                "...Now that you mention it, I kinda do!"]
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
                "Why do I sense such an... Angry vibe for you?",
                "I didn't come here for a chat. Put up your dukes.",
                "If that's how you wanna play. Let's go!"]
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
                "If that sword of yours cuts any piece of my hair off...",
                "RyeGuy: W-What?! I would never do that!",
                "We'll see about that, little knight wonder!"]
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
                "H-Hey! Watch where you're tossing those water balls!",
                "Nuuh! You're not the boss of me, Miss Genie-Beanie~!",
                "Great... The last thing I need is a bad hair day."]
            }
        }
    }

    //  Camic
    if(otherUrl == 3350776556)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Oh! I didn't know the circus was in town! I could really use a good laugh!",
                "...",
                "...On second thought, I should get going."]
            }
        }
    }

    //  Geebs
    if(otherUrl == 3432458008)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "What's... What's the creepy grin?",
                "Come on, missy, won't you shake a poor adventurer's hand~?",
                "Something weird is going on here and I'm gonna find out what it is!"]
            }
        }
    }

    //  Randalf Rhino
    if(otherUrl == 3388038739)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Hey! You can't park... Whatever that thing is here!",
                "Whaa...? Where else am I going to park my other self? That's just plain rude.",
                "Well, for starters... Why are you using a copy of yourself as a vehicle in the first place?"]
            }
        }
    }

    //  Gordon
    if(otherUrl == 3577828040)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "So you're the one who ate all the pies meant for Scuttle Town's contest!",
                "Hehe, maybe I am, maybe I'm not. What's it to you, shrimp?",
                "Then I'll make you pay it back, one bruise at a time!"]
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
                "What a strange looking hedgehog.",
                "Roger Roger!",
                "And now it's getting closer..."]
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
                "Another strange looking hedgehog.",
                "Beat it. You're in my way in finding Roger.",
                "Wait... That was his name?!"]
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
                "Oh, great. Another one of those weird... hedgehog things.",
                "Liek, OMG! You look, like, a total barbie doll, dollface. Liek, who's your stylish~?",
                "...I'm sorry, but, what the heck was even any of that?"]
            }
        }
    }

    //	Kodiak DE
	if(otherUrl == 2860398151) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "The way you use your magic is pretty reckless.",
                "And yet, it gets me the results I need.",
                "We'll see about that."]
            }
        }
    }
}
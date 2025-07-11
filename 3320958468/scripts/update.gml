// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//---------------------------------------------------------------------------------------------------------------
//	Cheats Section

//	Fly me to the moon~
if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

//	Max Jumps
max_djumps = phone_cheats[CHEAT_DJUMPS];

//	Stretching the sprite WIDE
if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[CHEAT_WIDE] * sign(spr_dir);

//	Sorry Rayman ;-;
if phone_cheats[CHEAT_RECOIL] with pHitBox if player_id == other can_hit_self = 1;

//---------------------------------------------------------------------------------------------------------------
//	General Stuff

//	Glide Mechanic
HeliHairTime();

//	Commence the funny Eggplant crawl
if (state == PS_CROUCH)
{
	can_move = true;	
		
	if (joy_pad_idle)
	{
        hsp 		= 0;
        is_crawling = false;
    }      

	if (right_down)
	{
		spr_dir 	= 1;
		hsp 		= 1.8;
		is_crawling = true; 	
	}
		
	if (left_down)
	{
		spr_dir 	= -1;
		hsp 		= -1.8;
		is_crawling = true; 		
	}
}

//	Alright, no more
if (state != PS_CROUCH)
{
	is_crawling = false;
}

//	Grabby reset
if (state_cat == SC_HITSTUN || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND))
{
    grapple_grab = noone;
}

if (state == PS_HITSTUN || state == PS_HITSTUN_LAND)
{
	//	Grappling Fist Reset if interrupted
	if (instance_exists(grapple_fist))
	{
		spawn_hit_fx(grapple_fist.x, grapple_fist.y, 310);
		sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
		
		instance_destroy(grapple_fist);
	}

	//	No more detection...
	if (instance_exists(plunger_guard))
	{
		if (plunger_guard.free == false && plunger_guard.vsp == 0) && 
		(plunger_guard.state == 0 || plunger_guard.state == 1 
		|| plunger_guard.state == 2 || plunger_guard.state == 6)
		{
			plunger_guard.state 		= 6;
			plunger_guard.state_timer 	= 0;
		}
	}
}

//	Projectile Colouring Fun
if (get_player_color( player ) == 0) 
{
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_REAL"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("dspec_pguard_proj_REAL"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("dspec_pguard_proj_REAL"));
}

if (get_player_color( player ) != 0) 
{
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("dspec_pguard_proj"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("dspec_pguard_proj"));
}

//------------------------------------------------------------------------------------
//	CSS Button Toggle Control

if (get_synced_var(player) == 1)
{
	muted = true;
}

if (get_synced_var(player) == 0)
{
	muted = false;
}

//---------------------------------------------------------------------------------------------------------------
//	Dialogue Buddy

if(variable_instance_exists(id,"diag"))
{
    diag_name = "Rayman"
	
	//	ADDING REGULAR DIALOGUE
    //	Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Hey!",
	"Hey, you!",
	"I'm waiting!",
	"YEAH!",
	"No problem!",
	"Let's do it! Where do I start?",
    "Hey, what's the matter?",
	"Hey Globox, are you there?",
	"What do I do? What do I do?!",
	"Oh No!!! What happened to my best pal?!",
	"Alright, Ladies and Gents! Let's roll!",
	"Hey, have you seen my friend Globox around?",
    "I'm sorry! I-I-I didn't-I didn't mean to!",
	"Leave my friend alone!",
    "What's the matter? Are you afraid?",
	"Umm... no.",
	"Nice moves! But can you keep up with this?",
	"I'm all about the fun, but I'm not going easy on you!",
	"You know, I've faced a lot of baddies, but you've got style!",
	"Watch out! I've got more tricks up my sleeve-if I had sleeves!",
    "No arms, no legs, no problem! Let's see what you've got!",
	"Ready to see what I can do here? Let's do it!"]
	
	//--------------Specific Character Interactions
	//  Regular dialogue
	
	//	Aperson's Yooka Laylee
    if(otherUrl == "2961053646" && diag != "2961053646") //Change the url into a specific character's
    {
        diag = "Two against one, huh? This'll be a blast from the past!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	
	//--------------NRS/3-Part dialogue
	
	//	Rivals of the Crib
	//	Himself 
	if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Whoa, this is weird. Am I seeing double, or did I just look in a magic mirror?",
                "Guess the fairies really outdid themselves this time! But hey, more Rayman, more fun, right?",
                "Double the punches, double the kicks. Let's see who's the real hero here!"]
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
                "Whoa, you've got some serious firepower there! Think you can keep up with these fists?",
                "I don't know, can you? Let's jam!",
                "Alright, hotshot! Let's see if your flames can handle my whirlwind punches!"]
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
                "Whoa, you're fully armed! This just got interesting!",
                "Prepare to be extinct, buddy! I've got the firepower to back it up.",
                "Let's see if you can keep up with a hero who's got no arms or legs!"]
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
                "You're like a one-creature weather system! Fire, shock, and frost? That's some wild stuff!",
                "You better believe it! I'm so ready to bring the chaos!",
                "Sounds like a storm's brewing! Let's roll!"]
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
                "You certainly bring a whole new meaning to 'cutting-edge'!",
                "Oh yeah? Let's see if your skills are as sharp as your wit.",
                "I may not have a sword, but I've got plenty of tricks up my sleeve... If I had sleeves! Let's dance!"]
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
                "Whoa... That's impressive! Where did you learn magic like that?",
                "Oh, just a lot of practice and trials. That kind of stuff~.",
                "Well then, show me what else you got!"]
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
                "Umm... Time out?",
                "Time out?! No! Lemme see what you got, Big Nose!",
                "...Well then. No way I'm getting out of this."]
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
                "Hey! I think I've seen that blaster before...",
                "Is that right? Well, your blaster looks really impressive. Be a shame if I... took it.",
                "What? Back off, pal!"]
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
                "A stickman with card tricks? Got any aces up your sleeve?",
                "I've got a whole deck of them, Rayman. Care to see if luck's on your side~?",
                "Luck? Who needs luck when you've got moves like mine? Let's go!"]
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
                "Oof, you kinda remind of those Rabbids...",
                "But I'm not a wabbit! I'm the SUPER DUPER DEWI EXTRAORDINAIRE!!",
                "Oh yeah? We'll see about that after this!"]
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
                "Well... I'm sure you're a friendly sort of person...",
                "Thou mocking me eggplant?",
                "N-No! I was only just... Nevermind."]
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
                "A time patroller, huh? You must've seen some wild stuff on your journeys!",
                "I've been through all kinds of timelines, Rayman. Ready to see how you measure up across the ages?",
                "Bring it on! Whether it's past, present, or future, I'm ready to show you that some heroes are timeless!"]
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
                "You and Globox would probably get along very well.",
                "Oh? Why you say that my good sir?",
                "He too loves the 'nice' music."]
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
                "You've got that dark and angry vibe going on. Wait... Haven't we fought before?",
                "You have no idea what you're walking into here.",
                "I've faced my share of shadows before. This shouldn't be any different!"]
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
                "Is that a bird in your backpack...?",
                "RyeGuy: Yep, this is Beaky! We're a team and we're ready for anything!",
                "A kid with a sword and his bird... Now this is going to be fun!"]
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
                "Nice umbrella, pretty stylish! Got any tricks to share, kid?",
                "Ooh, I got plenty! Let's see if you can keep up!",
                "Hehe, let's see if your umbrella can keep up with a hero who's been hopping around for years!"]
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
                "I didn't know the circus was in town. What's your act?",
                "...",
                "I get the feeling I'm in for a treat..."]
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
                "Whoa, whoa! Easy there big fella!",
                "Who? Me? I'm on a diet, I swear!",
                "...Right. I was not expecting that."]
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
                "What's got you in such a good mood?",
                "Me? Weelll... Let's just say I'm about to ROCK THIS JOINT!!!",
                "W-Wha? With what exactly?!"]
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
                "Hey Shantae, think you could grant me a wish?",
                "Sorry, Rayman! I'm not that kind of Genie.",
                "Awww... Can I atleast get something magical?"]
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
                "Nice jester hat! I bet you've got a few tricks up your sleeves.",
                "More than a few! And with this electric power, I'm no joke in battle.",
                "Well then, allow me to deliver the Punchline!"]
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
                "Whoa, whoa! You've got some serious attitude problems...",
                "You better believe it, freak! I'm more than just a pretty face~!",
                "Whatever your deal is, I'm not one to back down from a challenge!"]
            }
        }
    }

    //	Wapeach
	if(otherUrl == 3489846072)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "Did someone order a royal pain in the neck?",
                "Only if you're ready to be served, you limbless meh.",
                "Let's see if you're all crown, or just clown!"]
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
                "There's something... Off about this guy.",
                "Roger Roger!",
                "The same kind of nonsense from them Rabbids!"]
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
                "Oh, great. Another one. Let me guess, 'Roger Roger?'",
                "Don't you dare mock him. I only respect him. No one else.",
                "Oh, so you can talk. Interesting..."]
            }
        }
    }

    //	Cindy Appeal 
    if(otherUrl == 2670125703)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                
				diag_nrs_diag = [
                "So, what's your story? Another one of those, Roger rogers?",
                "Like, I'm gonna turn you into a Hichuli for my Roger~!",
                "I'm sorry... What?"]
            }
        }
    }
}

//---------------------------------------------------------------------------------------------------------------

#define HeliHairTime()
{
	var air = (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_IDLE_AIR);

	if (air || state == PS_ATTACK_AIR)
	{
		jumpTimer++;
	}

	if ((state == PS_IDLE_AIR || (air && vsp > 0)) && jump_down && floating == 0 || 
	(state == PS_IDLE_AIR || (air && jumpTimer > jumpMax)) && (jump_down && down_down) && floating == 0)
	{
		floating 	= 1;
		floatTimer 	= floatMax;
	}
	
	if ((attack == AT_USPECIAL || attack == AT_FSPECIAL) && state == PS_ATTACK_AIR && floating)
    {
        floating = -1;
    }

	if (floating)
	{
		if (get_gameplay_time() mod 8 == 0)
		{
			sound_play(sound_get("sfx_rayman_hover"), false, noone, 0.50);
		}
		
		if (gravSet != -1)
		{
			grav = gravSet;
		}
		
		if (vspSet != -1)
		{
			vsp = vspSet;
		}
		
		if (hspSet != -1)
		{
			hsp = hspSet * spr_dir;
		}
		
		if (!((jump_down || up_down) && (state == PS_ATTACK_AIR || air)))
		{
			floating = -1;
		}
		
		if (floatTimer > 0)
		{
			floatTimer--;
		}
		
		else
		{
			floating = -1;
		}
	}
	
	if (!floating)
	{	
		sound_stop(sound_get("sfx_rayman_hover"));
	}

	if (state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH)
	{
		floating 	= 0;
		jumpTimer 	= 0;
	}
}
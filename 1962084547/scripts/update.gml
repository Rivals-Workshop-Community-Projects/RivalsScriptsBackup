if !free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN{
	has_daired = false;
}



statboost_time -= statboost_time > 0;

if !free && (attack != AT_FSPECIAL or (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) glide_used = 0;


if state == PS_FIRST_JUMP && vsp <= 0 && did_crouchjump {
	air_accel = crouch_jump_accel;
	if state_timer == 1 sound_play(crouch_jump_sound)
} else {did_crouchjump = 0; air_accel = stand_jump_accel;}

if state == PS_JUMPSQUAT { if prev_state == PS_CROUCH {
jump_speed = crouch_jump_speed;
max_jump_hsp = crouch_jump_hsp;
did_crouchjump = 1;
} else {
jump_speed = stand_jump_speed;
max_jump_hsp = stand_jump_hsp;
}
}

//double jump decay
djump_speed = djump_speeds[djumps];

if nspecial_active {
	nspecial_image = max(nspecial_image+nspecial_anim_speed, 0)
	
		if !instance_exists(nspecial_current) {nspecial_active = 0;}
} else {
	if nspecial_image >= 0 {
		var hfx = hit_fx_create(sprite_get("ancientpower_pop"), 5/nspecial_anim_speed);
		var newfx;
		if instance_exists(nspecial_current) with (nspecial_current) {
				newfx = spawn_hit_fx(x, y, hfx);
				newfx.depth = depth+1;

		}
		
		nspecial_image = -1;
	}
}



if dspecial_drainrate > 0 with (oPlayer) {
	
	//if id == other.id continue;
	if state == PS_DEAD or state == PS_RESPAWN archen_dspecial_damage = 0;
	if archen_dspecial_damage > 0 {
		if archen_dspecial_cooldown <= 0 {
			if ceil(archen_dspecial_damage - other.dspecial_drainrate) != ceil(archen_dspecial_damage) {
				take_damage(player, other.player, -1)

			}
			archen_dspecial_damage -= other.dspecial_drainrate;
		} else {
			archen_dspecial_cooldown--;
		}
	}
}



if(variable_instance_exists(id,"diag"))
{ 
 
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "You may know your rights, but do you know who owns them?",
    "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	"I'm going to teach you what it's like to be beaten by someone who is generally.",
	"Are you on the list...",
	"This match I own YOU.",
	"I'm the Bird Guy.",
	"Get egged on.",
	"I'm gonna need AAA",
	"Butty",
	"I'm thinking of getting a new DAir.",
	"You have entered MY (public) DOMAIN!",
	"Bird Boy, icecream's gonna have to wait. How dare you make Bird Boy wait for icecream.",
	"Get ready for a sneak beak at your loss!",
	"You could use the Yugdrib.",
	"OUR Percent.",
	"Hoo-AH!.",
	"Gourami dodging compatability like",
	"I hope you like protien. AND CHOLESTEROL!",
	"Even if you defeat me, I am not alone.",
	"Gourami if I lose buff my FTilt.",
	"Larceny is good.",
	"...",
	"Of all the characters you could pick, this is what you chose?",
	"I know who's pulling your strings.",
	"I am going to hit you with my car.",
	"Want some choccy milk?",
	"Hi i'm Bird Guy",
	"Next game go Bird Guy.",



]

 if(otherUrl == "2201608216" && diag != "") //Change the url into a specific character's
    {
        diag = "What is a Bird Guy without his car?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
 if(otherUrl == "1926836320" && diag != "") //Change the url into a specific character's
    {
        diag = "You.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
 if(otherUrl == "2502590772" && diag != "") //Change the url into a specific character's
    {
        diag = "Two for the price of one.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2546990424" && diag != "") //Change the url into a specific character's
    {
        diag = "Now that's a respectable fellow.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1968068304" && diag != "") //Change the url into a specific character's
    {
        diag = "You stand on floating rocks... Are you...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1913517643" && diag != "") //Change the url into a specific character's
    {
        diag = "That's not bad, but THIS is how you SING! AAAAAAAAAA";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2504113755" && diag != "") //Change the url into a specific character's
    {
        diag = "Why stop at two?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1866016173" && diag != "") //Change the url into a specific character's
    {
        diag = "You prove nothing, player.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2396061657" && diag != "") //Change the url into a specific character's
    {
        diag = "Hi Date Girl meet Bird Guy.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2396053263" && diag != "") //Change the url into a specific character's
    {
        diag = "There is more than love. There is Bird Guy.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2396961482" && diag != "") //Change the url into a specific character's
    {
        diag = "Hello Fish Girl I am Bird Guy.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2482681616" && diag != "") //Change the url into a specific character's
    {
        diag = "Why";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2453146011" && diag != "") //Change the url into a specific character's
    {
        diag = "Those portals won't take you to the places I know about.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1871989159" && diag != "") //Change the url into a specific character's
    {
        diag = "Can I have a grenade? Some guy at the stoplight down the street gave me the stink eye on the way over here.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2282173822" && diag != "") //Change the url into a specific character's
    {
        diag = "Snail Guy...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2283018206" && diag != "") //Change the url into a specific character's
    {
        diag = "Nice look.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2217843818" && diag != "") //Change the url into a specific character's
    {
        diag = "You're on my list crewmate. But so is the imposter.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2478102112" && diag != "") //Change the url into a specific character's
    {
        diag = "After the fight let's go egg peoples houses.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2497580275" && diag != "") //Change the url into a specific character's
    {
        diag = "Finally a croissant for my car.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1962084547" && diag != "") //Change the url into a specific character's
    {
        diag = "We are curated.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2222467652" && diag != "") //Change the url into a specific character's
    {
        diag = "Hi friend. Let's fight.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1870688282" && diag != "") //Change the url into a specific character's
    {
        diag = "Mr.President give me access to the private domain.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1891309722" && diag != "") //Change the url into a specific character's
    {
        diag = "Yo";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1890617624" && diag != "") //Change the url into a specific character's
    {
        diag = "Still playing Ronald eh?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2109083580" && diag != "") //Change the url into a specific character's
    {
        diag = "Hey Scoob there's this cool workshop character that's a big wolf guy... Oh you knew?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "1890285023" && diag != "") //Change the url into a specific character's
    {
        diag = "You don't belong here.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2164231403" && diag != "") //Change the url into a specific character's
    {
        diag = "I will smash you to pieces.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

 if(otherUrl == "2396735388" && diag != "") //Change the url into a specific character's
    {
        diag = "My name is Zeph";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

}





/*
if glide_cooldown {
	move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL], 2)
	if !free or state == PS_WALL_JUMP {
		glide_cooldown = 0;
	}
}





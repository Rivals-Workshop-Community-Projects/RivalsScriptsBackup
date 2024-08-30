//update

//Check if a Blueytank is out (thanks muno for the help!!!!!!!!!)
var ATankThereIs = false;

with(asset_get("obj_article1")){
    if(player_id == other.id){
        ATankThereIs = true;
    }
}
if ATankThereIs{
   	minionOut = true;
} else { minionOut = false; }


var AnHThereIs = false;

with (asset_get("pHitBox")) {
	if (player_id == other.id && attack == AT_FSPECIAL && hbox_num == 1) {
        AnHThereIs = true;
    }
}
if AnHThereIs{
   	HOut = true;
} else { HOut = false; }



if prev_state == PS_RESPAWN && state_timer == 0 && dennis == 0 {
	spawn_hit_fx( x, y, DennisHeadOut);
	dennis = 1;
}

if !(attack == AT_TAUNT) && (taunt_pressed) {
	if state == PS_ATTACK_AIR && bofa = false {
		sound_play(sound_get("discordping"));
		bofa = true;
	}
	if state == PS_ATTACK_GROUND && chungus = false {
		sound_play(sound_get("steamalert"));
		chungus = true;
	}
}

if funnyfish > 0 {
	funnyfish--;
}

if (state == PS_SPAWN) {
	if taunt_pressed && funnySound {
		sound_play(sound_get("steamalert"));
		funnySound = 0;
	}
}

//Up special fuel things
if !free && burnerFuel < 100 {
    burnerFuel += 4;
	move_cooldown[AT_USPECIAL] = 0;
	}

if state == PS_WALL_JUMP && state_timer == 1 && burnerFuel < 100 {
    burnerFuel = 100;
	move_cooldown[AT_USPECIAL] = 0;
	}
	
if state == PS_HITSTUN && burnerFuel < 100 {
    burnerFuel += 10;
	move_cooldown[AT_USPECIAL] = 0;
	}
	
if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "BlueyBot"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "> what",
	"> bruh",
    "> lmao",
	"> bruh",
    "> ok",
    "> wtf",
    "> h",
	"> e",
	"> mid",
	"> whatever floats your boat",
	"> hmmm okay cool!",
	"> sounds great. where do we begin",
	"> i cannot feel my lungs",
	"> what did you say. it's too dark, i cant hear you",
	"> okay you can shut up now",
	"> okay. Okay!",
	"> that's incredibly sad",
	"> wow! it's fricking nothing!",
	"> bofa deez nuts",
	"> disagree",
	"> is this bait",
	"> you talk too much",
	"> what EVEN does that mean",
	"> you will make a fine addition to my cringe compilation",
	"> i'm a bot and even i think that is incredibly stupid by sapient being standards",
	"> i do not care",
	"> you like compost? cause i will compost your face if you keep up with your antics",
	"> do your parents know what do you do in the internet",
	"> stop bothering me",
	"> do you think what you're about to say twice before saying it",
	"> go cry to mom about it then you controller face",
	"> at least i'm not an egg",
	"> what are you even saying",
	"> i'm tired of this chat",
	"> if you continue to reply to me i'm going to",
	"> i like this talk. we can continue in dms if you wish",
	"> intellectual statement you got there buddy",
	"> notice of meme acquisition",
	"> wow",
	"> holy crap",
	"> bite my shiny metal...NOSE",
	"> ah. i see. i understand. very well.",
	"> here's a schematic for ya: PINCH",
	"> have you even brushed your teeth this week dude",
	"> oi get the heck back here i can see you hanging on the ceiling",
	"> touch the electric fence...that's all I ask",
	"> shut up",
	"> mhm. continue then",
	"> you will make a fine addition to my cringe compilation",
	"> please don't pry in my personal matters",
	"> that is actually pretty stupid"]

//  Specific Character Interactions

//  Regular dialogue
 if(otherUrl == "1882960192" && diag != "") 
    {
        diag = "> oh okay";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2014106219" && diag != "") 
    {
        diag = "> please don't call me that ever again";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
}
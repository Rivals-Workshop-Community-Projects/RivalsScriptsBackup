/*
 
/////////////////////////////////
//  Palutena's Guidance Codec  //
/////////////////////////////////
 
-----------------------------------
 
//// EXPRESSIONS ////
 
 * 0: Pit
 *    -  0: normal
 *    -  1: sus
 *    -  2: hurt
 *    -  3: happy
 *    -  4: shocked
 *    -  5: pensive
 *    -  6: think
 *    -  7: squint
 *    -  8: angry
 *    -  9: worry
 *    -  10: sulk
 * 1: Palu
 *    -  0: normal
 *    -  1: judge
 *    -  2: happy
 *    -  3: surprised
 *    -  4: think 
 *    -  5: think 2
 *    -  6: relieved
 * 2: Viridi
 *    -  0: gesture
 *    -  1: smirk
 *    -  2: surprised
 *    -  3: command (hand palm)
 *    -  4: command (hand point)
 *    -  5: laugh
 *    -  6: proud
 * 3: Dark Pit
 *    -  0: smirk
 *    -  1: anger
 *    -  2: anger 2
 
-----------------------------------
 
//// SFX ////
 
 * 0: Pit
 *    -  0: chuckle
 *    -  1: gah
 *    -  2: grr
 *    -  3: hurt
 *    -  4: ow
 *    -  5: pensive
 *    -  6: question
 *    -  7: think
 *    -  8: uhh
 *    -  9: woah
 *    -  10: exhale
 * 1: Palu
 *    -  0: err
 *    -  1: hmm
 *    -  2: hmm 2
 *    -  3: oh
 *    -  4: umm
 *    -  5: chuckle
 *    -  6: gasp
 *    -  7: uh oh
 * 2: Viridi
 *    -  0: augh
 *    -  1: chuckle
 *    -  2: frustrated
 *    -  3: hey
 *    -  4: hrm
 *    -  5: huh
 *    -  6: laugh
 *    -  7: question
 *    -  8: ugh
 *    -  9: urgh
 * 3: Dark Pit
 *    -  0: chuckle
 *    -  1: grah
 *    -  2: hurt
 
-----------------------------------
*/
 
initCodec();
 
var SPK_PIT = 0     //Pit
var SPK_PALU = 1    //Palutena  
var SPK_VIR = 2     //Viridi
var SPK_DPIT = 3    //Dark Pit
 
/*
//////////////////////
//// INSTRUCTIONS ////
//////////////////////
 
----------------------------------------------------
 
//// HOW TO ACTIVATE ////
 
Activate the codec by holding down and tapping taunt as Pit against another character.
 
----------------------------------------------------
 
//// INIT.GML ////
 
Add the following to the bottom of your init.gml file:
 
user_event(7);
 
(can change user event number to a different number as long as you change this file name number as well)
 
----------------------------------------------------
 
//// THIS FILE ////
Copy the entirety of this file into user_event7.gml and put it in your character's scripts folder.
 
Use the following function to add a new page to the codec:
 
initCodecPage(speaker, expression, sfx, text);
 
- speaker: one of the SPK_ vars.
- expression: see above 'EXPRESSIONS' list for each speaker's expression sprite.
- sfx: see above 'SFX' list for each speaker's sfx sound, plays at the start of each page. Set to a negative value to prevent any sfx from playing for that page.
- text: type what you want the speaker to say.
 
**EXAMPLE CODEC**
 
initCodecPage(SPK_PIT,  3,  10, "Floor ice-cream gives you health!");
initCodecPage(SPK_PALU, 1,  1,  "Hmm, is there anything you WONT eat?");
initCodecPage(SPK_PIT,  0,  8,  "Being an angel requires eating a lot of food.");
initCodecPage(SPK_VIR,  1,  6,  "Yeah, but eating off the floor is just gross.");
 
----------------------------------------------------
*/
 
///////////////////////////////////////////
//// Insert codec functions below here ////
///////////////////////////////////////////

// okay actual text here
initCodecPage(SPK_PIT,	4,	9,	"Woah! This turtle can stand up, walk and jump! It's... kinda weird, seeing that.");
initCodecPage(SPK_PALU,	2,	5,	"Silly Pit, that's a Koopa Troopa. They're second only to Goombas as the ones Mario jumps every adventure or two.");

// costume-specific dialogue
if (curr_alt_costume == 0){
	// text for default
	initCodecPage(SPK_PALU,	0,	1,	"Koopa Troopas are a species found in the Mushroom Kingdom - some are peaceful while others are loyal to Bowser.");
	initCodecPage(SPK_VIR,	2,	3,	"You think this one might the the former? They give off happy vibes.. I can just imagine them swinging their arms, dancing to a beat.");
	initCodecPage(SPK_PIT,	6,	7,	"Mario must really be a swell guy if he invites some of them to participate in go-karting or parties...");
} else if (curr_alt_costume == 1){
	// text for roving racers
	initCodecPage(SPK_VIR,	4,	1,	"Hey, wait, isn't this one of those Roving Racer guys from around the world? You think they're related to Koopa the Quick?");
	initCodecPage(SPK_PIT,	6,	7,	"Ummm... well, maybe.. it could be Koopa the Quick? Or not? ...Lady Palutena?");
	initCodecPage(SPK_PALU,	1,	0,	"...I don't think we'll ever know the answer to that. There's... not a whole lot I know about em, other than they like to race... a lot.");
} else if (curr_alt_costume == 2){
	// text for kooper
	initCodecPage(SPK_PALU,	2,	5,	"This one's actually Kooper. He's one of Mario's friends who helped him save Peach when Bowser kidnapped her whole castle in the sky.");
	initCodecPage(SPK_VIR,	1,	6,	"He looks kinda basic, scarf and wristbands aside. Wasn't another Koopa helping out with them as well?");
	initCodecPage(SPK_PALU,	5,	0,	"That's Parakarry, the Mushroom Kingdom's mailman. But... he's another Koopa for another Mario Story.");
} else if (curr_alt_costume == 3){
	// text for koops
	initCodecPage(SPK_VIR,	2,	7,	"Hey, isn't this that one introverted Koopa from Petalburg? Their name... what was it again?");
	initCodecPage(SPK_PALU,	1,	0,	"That's Koops. He helped out Mario once to rescue Peach in Rogueport, and also defeated a dragon to save his own father with Mario.");
	initCodecPage(SPK_PALU,	6,	5,	"He's quite a shy little Koopa, but he tries his best. He's also got a good girlfriend to keep him busy.");
}

initCodecPage(SPK_PALU,	4,	0,	"...anyway, this Koopa is quite strong up close - they have very fast moves, but lack a lot on range and disjoint.");
initCodecPage(SPK_PIT,  3,	10,	"Alrighty then! I've got the range advantage with my Bow - they don't seem to have a lot of projectile options as well.");
initCodecPage(SPK_VIR,	2,	5,	"Actually, these guys can throw out... shells? Don't they wear those? That's kinda weird to think about...");
initCodecPage(SPK_PALU,	1,	0,	"...yeah. Anyway, these shells can be hit back at them. But they too can also hit it, and regrab it once it rebounds.");
initCodecPage(SPK_PIT,	4,	9,	"Ah.. ok then! I think I should be fine. My Guardian Orbitars should do the trick on this little guy!");
initCodecPage(SPK_VIR,	3,	6,	"And, hey, Pit! If you're feeling a bit cocky... give 'em a jump while they're flying with wings offstage!");

///////////////////////////////////////////
//// Insert codec functions above here ////
///////////////////////////////////////////
 
return;
 
#define initCodec()
 
with oPlayer if "ruber_pit" in self {
    load_codecs = true;
}
 
pit_codecs = [];
 
var new_cdc = {
    pages: []
};
 
array_push(pit_codecs, new_cdc);
 
#define initCodecPage(cd_speaker, cd_expression, cd_sfx, cd_text)
var new_page = {
    speaker: cd_speaker,
    expression: cd_expression,
    sfx: cd_sfx,
    text: cd_text
};
array_push(pit_codecs[array_length(pit_codecs) - 1].pages, new_page);
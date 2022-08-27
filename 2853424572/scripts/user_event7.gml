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

var SPK_PIT = 0		//Pit
var SPK_PALU = 1	//Palutena	
var SPK_VIR = 2		//Viridi
var SPK_DPIT = 3	//Dark Pit

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

user_event(7)

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

initCodecPage(SPK_PIT,	3,	10,	"Floor ice-cream gives you health!");
initCodecPage(SPK_PALU,	1,	1,	"Hmm, is there anything you WONT eat?");
initCodecPage(SPK_PIT,	0,	8,	"Being an angel requires eating a lot of food.");
initCodecPage(SPK_VIR,	1,	6,	"Yeah, but eating off the floor is just gross.");

----------------------------------------------------
*/

///////////////////////////////////////////
//// Insert codec functions below here ////
///////////////////////////////////////////

initCodecPage(SPK_DPIT,	0,	0,	"Kickin'...");
initCodecPage(SPK_VIR,	4,	1,	"Stompin'...");
initCodecPage(SPK_PIT,	3,	1,	"And KICKIN'!");
initCodecPage(SPK_PALU,	3,	2,	"I feel like I'm being left out of something here.");
initCodecPage(SPK_PIT,	3,	0,	"Come on, Lady Palutena! This is Arizona, the Champ'een of the Prairie!");
initCodecPage(SPK_VIR,	1,	6,  "EVERYONE knows who Arizona is!");
initCodecPage(SPK_PALU,	0,	1,	"...is that so?");
initCodecPage(SPK_PALU,	5,	0,	"Well, if you know so much about her, I'm sure you won't be needing my guidance here.");
initCodecPage(SPK_DPIT,	1,	1,	"Not like it would be much help.");
initCodecPage(SPK_PIT,	6,	7,	"For once, I agree with Pittoo!");
initCodecPage(SPK_PALU,	1,	-1,	"...Good luck then, Pit.");


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
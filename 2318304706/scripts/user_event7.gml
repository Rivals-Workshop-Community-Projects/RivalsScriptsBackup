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

-----------------------------------
*/
 
initStuff();

var SPK_PIT = 0		//Pit
var SPK_PALU = 1	//Palutena	
var SPK_VIR = 2		//Viridi

/*
//////////////////////
//// INSTRUCTIONS ////
//////////////////////

----------------------------------------------------

//// HOW TO ACTIVATE ////

Activate the codec by holding down and tapping taunt as Pit against another character.
In practice mode you can skip through textboxes and activate the codec several times. The delay before the codec is activated is also reduced.
In a versus match, skipping textboxes will be disabled, and the codec can only be activated once per match.

----------------------------------------------------

//// INIT.GML ////

Add the following to the bottom of your init.gml file:

user_event(7)

(can change user event number to a different number as long as you change this file name number as well)

----------------------------------------------------

//// THIS FILE ////

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

initCodecPage(SPK_PIT,	3, 0, "Oh hey, I've heard of this guy! It's Geno!");
initCodecPage(SPK_PIT,	6, 5, "I always wondered when we'd get to duke it out... I just figured it would have been on the big screen.");
initCodecPage(SPK_PALU,	0, 1, "Yes, this is Geno... Or more accurately, the body belongs to Geno.");
initCodecPage(SPK_PALU,	2, 2, "This body is that of a children's toy, but it was possessed by a diety, as a way for them to interact with the material plane.");
initCodecPage(SPK_PIT,	6, 6, "But why this doll? Couldn't they have chosen a stronger vessel?");
initCodecPage(SPK_PALU,	6, 5, "Actually, this doll was already very powerful, able to knock out Mario with a single attack.");
initCodecPage(SPK_PALU,	5, 3, "And note, that happened before the doll was even possessed, so now they're significantly stronger!");
initCodecPage(SPK_PIT,	7, 1, "Just who's in charge of toy production in the Mushroom Kingdom?");
initCodecPage(SPK_PIT,	1, 2, "Well, regardless, this isn't the first diety I've fought. Bring it on!");

///////////////////////////////////////////
//// Insert codec functions above here ////
///////////////////////////////////////////

return;

#define initStuff()

with oPlayer if "ruber_pit" in self {
	load_codecs = true;
}

pit_codecs = [];

initCodec();

#define initCodec()

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
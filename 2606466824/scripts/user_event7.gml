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

initCodecPage(SPK_PIT,	9, 1, "O-oh! Hey there big guy! Long time no see!");
initCodecPage(SPK_PALU, 1, 1, "Ah, yes, you two did already meet once before.");
initCodecPage(SPK_PIT,	3, 0, "Yeah, so I already know how to win! Just gotta keep my distance, take advantage of their low speed and keep them from coming back to the stage!");]
initCodecPage(SPK_PALU, 1, 1, "Be careful, though, as Incineroar has some new tricks here in Rivals.");
initCodecPage(SPK_PALU, 4, 2, "Now, they can set up their wrestling ropes as a sort of pinball bumper. Anyone who gets launched into them gets bounced right back!");
initCodecPage(SPK_PALU, 5, 1, "Also, Incineroar can bounce off their own ropes to bound around the stage.");
initCodecPage(SPK_PIT, 8, 1, "Wait, a deployable stage control they can bounce off of? Incineroar copied my orbitars!");
initCodecPage(SPK_VIR, 1, 6, "Actually, they had that idea first.");
initCodecPage(SPK_PALU, 2, 5, "Indeed. Where do you think we got the idea to let you do that?");
initCodecPage(SPK_PIT, 2, 3, "Gah, I can't believe this!");

----------------------------------------------------
*/

///////////////////////////////////////////
//// Insert codec functions below here ////
///////////////////////////////////////////

initCodecPage(SPK_PIT,	9, 3, "O-oh! Hey there big guy! Long time no see!");
initCodecPage(SPK_PALU, 6, 3, "Ah, yes, you two did already meet once before.");
initCodecPage(SPK_PIT,	3, 0, "Yeah, so I already know how to win!");
initCodecPage(SPK_PIT,	1, 2, "Just gotta keep my distance, take advantage of their low speed and keep them from coming back to the stage!");
initCodecPage(SPK_PALU, 1, 1, "Be careful, though, as Incineroar has some new tricks here in Rivals.");
initCodecPage(SPK_PALU, 4, 2, "Now, they can set up their wrestling ropes as a sort of bumper. Anyone who's launched into them gets bounced right back!");
initCodecPage(SPK_PALU, 5, 1, "Also, Incineroar can bounce off their own ropes to bound around the stage.");
initCodecPage(SPK_PIT, 8, 1, "Wait, a deployable stage control they can bounce off of? Incineroar copied my orbitars!");
initCodecPage(SPK_VIR, 1, 6, "Actually, they had that idea first.");
initCodecPage(SPK_PALU, 2, 5, "Indeed. Where do you think we got the idea to let you do that?");
initCodecPage(SPK_PIT, 2, 1, "Gah, I can't believe this!");

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
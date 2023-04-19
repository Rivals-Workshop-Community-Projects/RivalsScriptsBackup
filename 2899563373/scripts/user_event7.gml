//// THIS FILE ////
/*Copy the entirety of this file into user_event7.gml and put it in your character's scripts folder.

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
initCodec();

var SPK_PIT = 0     //Pit
var SPK_PALU = 1    //Palutena  
var SPK_VIR = 2     //Viridi
var SPK_DPIT = 3    //Dark Pit
///////////////////////////////////////////
//// Insert codec functions below here ////
///////////////////////////////////////////

initCodecPage(SPK_PIT,  4,  9, "Wait a minute! Lady Palutena, you're fighting me?");
initCodecPage(SPK_PALU, 2,  5, "Don't sound so dismayed! Think of it more as a sporting event and less as...a massacre.");
initCodecPage(SPK_PIT,  9,  8, "I really don't want to hurt you...");
initCodecPage(SPK_VIR,  1,  1, "That's awfully presumptuous of you, Pit!");
initCodecPage(SPK_PIT,  8,  1, "Please! I know better than anyone else what Lady Palutena's capable of.");
initCodecPage(SPK_PIT,  6,  7, "After all, I fought her once before.");
initCodecPage(SPK_PALU, 6,  1, "Good luck, Pit. You're gonna need it. Of course, I won't be giving you any hints during this battle.");
initCodecPage(SPK_PALU, 1,  2, "And no powers or centurions, either!");

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
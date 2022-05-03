initCodec();
 
var SPK_PIT = 0     //Pit
var SPK_PALU = 1    //Palutena  
var SPK_VIR = 2     //Viridi
var SPK_DPIT = 3    //Dark Pit

///////////////////////////////////////////
//// Insert codec functions below here ////
///////////////////////////////////////////

initCodecPage(SPK_PIT,	3,	5,	"Awww its a cute kitty cat");
initCodecPage(SPK_PALU,	0,	0,	"Focus Pit, looks can be deceiving.");
initCodecPage(SPK_PALU,	0,	3,	"That's Carol the Wildcat. She is a former member of the Red Scarves, a notorious band of thieves");
initCodecPage(SPK_PIT,	6,	6,	"Really? Wasn't that her identical twin sister?");
initCodecPage(SPK_PALU,	0,	3,	"Carol left the Red Scarves after their leader, Spade, killed someone, which she deemed to have crossed the line");
initCodecPage(SPK_PALU,	0,	1,	"She's an extremely capable fighter, but perhaps a bit reluctant to actually do the whole saving the world thing");
initCodecPage(SPK_PALU, 0,  3,  "Carol has a bunch of claw attacks, she can mix them up a bit to increase the length of her combos");
initCodecPage(SPK_PALU, 0,  2,  "She can also unleash a flurry of 16 kicks in a row, wall jump multiple times and pounce from long range");
initCodecPage(SPK_PIT,  4,  9,  "Wall jump... multiple times? Isn't that overpowered? I can only wall jump once");
initCodecPage(SPK_VIR,  1,  6,  "Yeah well, she can't double jump and her Jump Disc limits her ability to wall jump");
initCodecPage(SPK_PIT,  3,  0,  "Well, I guess that balances it out now.");
initCodecPage(SPK_PALU, 1,  7,  "Watch out Pit, if Carol hits you too many times then she has access to a motorcycle.");
initCodecPage(SPK_PALU, 0,  1,  "This motorcycle makes her stronger, faster and allows her to ride up walls, she can even use it as a weapon");
initCodecPage(SPK_PIT,  3,  0,  "WOW! SHE MUST BE AMAZINGLY STRONG!");
initCodecPage(SPK_PALU,  6,  2,  "Keep your distance from her when she's on the bike");
initCodecPage(SPK_PIT,  5,  5, "Why? I'm not scared of getting cooties.");
initCodecPage(SPK_VIR,  4,  9,  "Really? Cooties? Oh please. Who even writes this garbage? Cut that line out of the Guidance please!");

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
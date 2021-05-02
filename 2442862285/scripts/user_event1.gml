/*
 * initCodec(enemy character url, gimmick)
 * initCodecPage(speaker, expression, gimmick, text)
 */

/*
 * Codec speaker nums:
 * 0: Trum
 *    -  0: normal
 *    -  1: tired
 *    -  2: angry
 *    -  3: closed eyes
 *    -  4: squished closed eyes
 *    -  5: wink
 *    -  6: happy
 *    -  7: in shell
 * 1: Alto
 *    -  0: normal
 *    -  1: happy
 *    -  2: curious
 *    -  3: wink
 *    -  4: angry
 *    -  5: surprised
 *    -  6: pretentious
 *    -  7: sad
 *    -  8: sad eyes closed
 *    -  9: hmm
 *    - 10: anime pissed off
 *    - 11: nair
 * 2: Otto
 *    -  0: normal
 *    -  1: wide mouth
 *    -  2: eyes closed
 *    -  3: wink
 *    -  4: ouch
 *    -  5: srs
 *    -  6: happy
 *    -  7: sad
 *    -  8: shocked
 *    -  9: thinking
 * 3: Coda
 * 4: Tempo
 *    -  0: normal
 *    -  1: wide mouth
 *    -  2: smile
 *    -  3: eyes closed
 *    -  4: angry
 *    -  5: wink / glasses off
 *    -  6: surprised
 *    -  7: srs
 *    -  8: happy
 * 5: Steve
 *	  -  0: normal
 */



initStuff();



with codec_handler{

	GIM_CHOMP			= 2;
	GIM_CLONE 			= 3;
	GIM_LAUGH_TRACK		= 5;
	GIM_SKIP   			= 7;
	GIM_DIE    			= 11;
	GIM_SHUT_UP			= 13;
	GIM_HOWL   			= 17;
	GIM_SHADER 			= 19;
	GIM_TEXTBOX			= 23;
	GIM_COLOR  			= 29;
	GIM_     			= 31;
	GIM_     			= 37;
	GIM_     			= 41;
	GIM_     			= 43;
	GIM_     			= 47;
	GIM_     			= 53;
	GIM_     			= 59;
	GIM_     			= 61;
	GIM_     			= 67;
	GIM_     			= 71;
	GIM_     			= 73;
	GIM_     			= 79;
	GIM_     			= 83;
	GIM_     			= 89;
	GIM_     			= 97;
	
}



var h = 0;

// No Codec Found; MUST be 0th entry

with codec_handler{
	
	initCodec(noone, 0);
	initCodecPage(SPK_ALTO,  5,  0, "Who is THAT?");
	initCodecPage(SPK_CODA,  6,  0, "I have no data on this fighter. I can't believe it!");
	initCodecPage(SPK_ECHO,  6,  0, "It must be an intruder from another dimension!");
	initCodecPage(SPK_ALTO,  4,  0, "Whatever it is, the goal remains the same: to fight and win!");
	initCodecPage(SPK_TRUM,  0,  0, "ok palutena");
	
}



// Base Cast

with codec_handler{
 
	initCodec(CH_ZETTERBURN, 0);
	initCodecPage(SPK_ALTO,  0,  0, "So Zetterburn finally decided to put on some clothes? Good for him.");
	initCodecPage(SPK_TRUM,  0,  0, "we'll miss u, No Loincloth");
	initCodecPage(SPK_ALTO,  9,  0, "Wait... he's ALWAYS had one outside of battle, right? Why would he take it off specifically during the fight?");
	initCodecPage(SPK_OTTO,  9,  0, "Maybe as an intimidation tactic?");
	initCodecPage(SPK_ALTO,  0,  0, "Does he really need to intimidate you AFTER setting you on fire?? Like, I'm already scared, dude. Chill.");
	initCodecPage(SPK_CODA,  5,  0, "Staying doused is the key to this matchup, guys. Without that status effect, he can't kill as early!");
	initCodecPage(SPK_ECHO,  0,  0, "Yeah, just don't get hit! Great advice Coda. Real helpful.");
	initCodecPage(SPK_TRUM,  7,  0, "but what if he takes his clothes off again");
	initCodecPage(SPK_ALTO,  6,  0, "If that happens, I'm just gonna light MYSELF on fire to avoid seeing it.");
	 
	initCodec(CH_ORCANE, 0);
	initCodecPage(SPK_ALTO,  9,  0, "So like, guys.");
	initCodecPage(SPK_OTTO,  0,  0, "Yeah?");
	initCodecPage(SPK_ALTO,  9,  0, "If we rain on the ground... 
	can he like... 
	
	uspecial to it???");
	initCodecPage(SPK_CODA,  0,  0, "No, that's ridiculous. He can only warp to his own puddle article.");
	initCodecPage(SPK_TRUM,  0,  0, "wait didnt he come out of that dude's sink tho");
	initCodecPage(SPK_ECHO,  2,  0, "Trummel has a point. In fact... who's to say he can't come out of OUR sinks?!");
	initCodecPage(SPK_ECHO,  2,  0, "While you're sleeping, he appears inside your house, opens your bedroom door, and...");
	h = GIM_CHOMP;
	initCodecPage(SPK_ECHO,  2,  h, "*chomp*");
	initCodecPage(SPK_TRUM,  7,  0, "AAAAAAAAAAAAAAA");
	initCodecPage(SPK_ALTO,  0,  0, "You're paying for his therapy, Tempo.");
	 
	initCodec(CH_WRASTOR, 0);
	initCodecPage(SPK_CODA,  0,  0, "Who's this guy?");
	initCodecPage(SPK_OTTO,  0,  0, "That's Wrastor, top flier of the Air Armada. Out of all the Rivals, he's the most graceful in the air.");
	initCodecPage(SPK_ECHO,  0,  0, "Yeah, until a certain workshop dev decided to give a snail and cloud first-place in every single air stat...");
	initCodecPage(SPK_ALTO, 10,  0, "Hey!... We're better about that nowadays!");
	initCodecPage(SPK_ALTO,  6,  0, "I'm a changed man.");
	initCodecPage(SPK_TRUM,  1,  0, "rip multi jumps");
	initCodecPage(SPK_CODA,  3,  0, "This matchup might be more of an uphill battle than before. Just like all of your matchups...");
	initCodecPage(SPK_OTTO,  0,  0, "Make sure to stuff out his slipstream projectile when you get a chance.");
	initCodecPage(SPK_ALTO,  0,  0, "Thanks. I'll try and remember that in between getting air wobbled.");
	 
	initCodec(CH_KRAGG, 0);
	initCodecPage(SPK_TRUM,  0,  0, "kragg resprite");
	initCodecPage(SPK_ECHO,  0,  0, "trummel resprite");
	initCodecPage(SPK_TRUM,  0,  0, "i feel attacked");
	initCodecPage(SPK_OTTO,  3,  0, "Wow, looking good Kragg!");
	initCodecPage(SPK_ALTO,  2,  0, "No kidding... they really outdid themselves with DE.");
	initCodecPage(SPK_ALTO,  3,  0, "He didn't get changed at all gameplay-wise, so luckily we can just use our strategy from last time!");
	initCodecPage(SPK_TRUM,  0,  0, "yeah
	
	
	uhh what did we do last time");
	initCodecPage(SPK_ALTO,  1,  0, "Easy! Just use our infinite-range gun to--");
	initCodecPage(SPK_ALTO,  9,  0, "wait");
	initCodecPage(SPK_ECHO,  8,  0, "Ha, now you guys have to learn what it's like to be a reasonably-designed character.");
	initCodecPage(SPK_TRUM,  0,  0, "this is so sad
	
	
	joe biden play despacito");
	 
	initCodec(CH_FORSBURN, 0);
	initCodecPage(SPK_ECHO,  0,  0, "Hey guys, check out Edgy the Hedgy over here.");
	initCodecPage(SPK_CODA,  0,  0, "Go easy on him, Tempo... his father died, and he got framed for the murder.");
	initCodecPage(SPK_ALTO,  2,  0, "Really?? Poor guy...");
	initCodecPage(SPK_TRUM,  0,  0, "f");
	initCodecPage(SPK_CODA,  3,  0, "Doesn't excuse the smoke, though. It's getting harder and harder to breathe...");
	initCodecPage(SPK_ALTO,  1,  0, "Yeah. Luckily we have some good space-covering projectiles to help clear it out!");
	initCodecPage(SPK_OTTO,  9,  0, "You guys can't soak him anymore, so you'll need to find a new way to keep track of his clone.");
	initCodecPage(SPK_CODA,  9,  0, "Maybe you could try-- uh, Trummel, you okay?");
	h = GIM_CLONE;
	initCodecPage(SPK_TRUM,  0,  h, "yea whats up");
	initCodecPage(SPK_ALTO,  5,  0, "OH FRICK THERES TWO OF THEM OTTO HELP");
	initCodecPage(SPK_OTTO,  0,  0, "You're on your own dude.");
	 
	initCodec(CH_MAYPUL, 0);
	initCodecPage(SPK_TRUM,  0,  0, "when ur maypul
	
	
	
	''i am speed''");
	initCodecPage(SPK_ALTO,  0,  0, "No kidding... fastest dash speed in the game. Hope we can keep up.");
	initCodecPage(SPK_ECHO,  0,  0, "Just revert a patch or two and you'll be running laps around her, yea?");
	initCodecPage(SPK_TRUM,  0,  0, "or we could steal bird guys car");
	initCodecPage(SPK_ALTO,  0,  0, "I'm not bailing you out for grand theft auto again, Trum.");
	initCodecPage(SPK_TRUM,  1,  0, "damg");
	initCodecPage(SPK_OTTO,  9,  0, "What if you just spammed FSpecial?");
	initCodecPage(SPK_ALTO,  3,  0, "NOW you're speaking my language! Let's DO this!");
	h = GIM_SKIP;
	initCodecPage(SPK_TRUM,  3,  h, "no wait i dont think--  ");
	 
	initCodec(CH_ABSA, 0);
	initCodecPage(SPK_ALTO,  2,  0, "Goodness... look at that. Hey Trum, remember when we used to be that fast in the air?");
	initCodecPage(SPK_TRUM,  7,  0, "if by remember u mean have nightmares
	
	
	then yea");
	initCodecPage(SPK_OTTO,  4,  0, "I get motion sick just thinking about it...");
	initCodecPage(SPK_CODA,  0,  0, "Absa's cloud works very differently from yours, guys. It's a remote trap that she can activate whenever she wants!");
	initCodecPage(SPK_ECHO,  3,  0, "Yeah... AND she can place it on you from across the stage! Talk about overkill...");
	initCodecPage(SPK_ALTO,  5,  0, "She doesn't even have to work for her lightning charge... what gives?");
	initCodecPage(SPK_ALTO,  8,  0, "I guess some people just have it easy in life...");
	initCodecPage(SPK_TRUM,  0,  0, "alas");
	initCodecPage(SPK_CODA,  0,  0, "You might be able to take advantage of her floaty nature by juggling her... cover her landings with Molotov and UAir!");
	initCodecPage(SPK_ALTO,  0,  0, "Got it. Not looking forward to being on the RECEIVING end of a juggle in this matchup...");
	 
	initCodec(CH_ETALUS, 0);
	initCodecPage(SPK_TRUM,  0,  0, "OH MY GOD");
	initCodecPage(SPK_OTTO,  0,  0, "What?");
	initCodecPage(SPK_TRUM,  0,  0, "THEY ADDED");
	initCodecPage(SPK_TRUM,  0,  0, "THEY CHANGED THE DOGS IN MINECRAFT");
	h = GIM_DIE;
	initCodecPage(SPK_TRUM,  7,  h, "Trummel was slain by Polar Bear");
	initCodecPage(SPK_ALTO, 10,  0, "HEY!!! That hurt!!");
	initCodecPage(SPK_OTTO,  9,  0, "It was pretty funny tho");
	initCodecPage(SPK_ALTO, 10,  0, "No, it was not.");
	initCodecPage(SPK_ECHO,  2,  0, "Gee Alto, think you could use all that salt to clear away Etalus's ice?");
	initCodecPage(SPK_CODA,  0,  0, other.phone_practice ? "Try not to do that during the actual fight, Trummel..." : "Not during the fight, Trum. Stay focused.");
	 
	initCodec(CH_RANNO, 0);
	initCodecPage(SPK_CODA,  6,  0, "It's Ranno! Good luck guys... he's got poison on his side.");
	initCodecPage(SPK_CODA,  0,  0, "If you fall victim to it, you'll take damage every time you attack.");
	initCodecPage(SPK_ALTO,  0,  0, "And he can stack up to four coats... such a pain.");
	initCodecPage(SPK_OTTO,  0,  0, "Yeah. I guess you could try keeping your distance... but your projectiles aren't what they used to be.");
	initCodecPage(SPK_ECHO,  0,  0, "Good riddance!");
	initCodecPage(SPK_TRUM,  0,  0, "shut your up
	
	
	molotov is Fair and Balanced");
	initCodecPage(SPK_ALTO,  0,  0, "Sure, keep thinking that.");
	
	initCodec(CH_CLAIREN, 0);
	initCodecPage(SPK_CODA,  0,  0, "So, Clairen is supposed to be from the future, right? ...How come I don't recognise her?");
	initCodecPage(SPK_ALTO,  6,  0, "There are two options. Either her story about coming from the future is true, and she LEFT your timeline...");
	initCodecPage(SPK_ECHO,  2,  0, "...or it's all a hoax and we should laugh at her for trying to pass that off as true.");
	initCodecPage(SPK_OTTO,  0,  0, "I dunno, the laser sword seems like a dead giveaway.");
	initCodecPage(SPK_ALTO,  0,  0, "Also, Tempo... aren't you guys from the future too?");
	initCodecPage(SPK_ECHO,  0,  0, "Yeah, but at least WE don't make a big deal of it! Coda and I don't even time travel in our lore.");
	initCodecPage(SPK_TRUM,  0,  0, "she has a point");
	initCodecPage(SPK_ALTO,  9,  0, "I guess it doesn't count if it's only for gameplay purposes...");
	h = GIM_SKIP;
	initCodecPage(SPK_ALTO,  2,  h, "In any event, it's in our best interest to respect that technology. Her plasma field can get rid of our clouds, and plus--");
	initCodecPage(SPK_TRUM,  0,  0, "u mean
	
	「NO FUN ZONE」");
	initCodecPage(SPK_ALTO,  0,  0, "...Sure.");
	 
	initCodec(CH_SYLVANOS, 0);
	initCodecPage(SPK_ALTO,  0,  0, "That's Sylvanos, apparently he's the Heart of the Forest. Good for him.");
	initCodecPage(SPK_OTTO,  0,  0, "Is all this grass his? I mean, I appreciate the carpeting and all, but this seems dangerous.");
	initCodecPage(SPK_CODA,  0,  0, "Yep - he spreads it wherever he walks. Try getting him airborne to get rid of it.");
	initCodecPage(SPK_ECHO,  1,  0, "He must be a great house guest.");
	initCodecPage(SPK_ALTO,  2,  0, "Trum, wanna try and stay airborne during this fight? That grass can hit us, y'know.");
	initCodecPage(SPK_TRUM,  0,  0, "sure
	
	
	wait doesnt he do that by howling");
	initCodecPage(SPK_ALTO,  9,  0, "...Yeah, why?");
	initCodecPage(SPK_TRUM,  0,  0, "ok watch this
	
	im gonna make him howl");
	var h = GIM_HOWL;
	initCodecPage(SPK_TRUM,  0,  h, "*awoooo*   ");
	initCodecPage(SPK_ALTO,  0,  0, "cool");
	 
	initCodec(CH_ELLIANA, 0);
	initCodecPage(SPK_TRUM,  0,  0, "snek");
	initCodecPage(SPK_ALTO,  0,  0, "Astute observation, Trummel.");
	initCodecPage(SPK_TRUM,  0,  0, "thanks
	
	
	ive been working on that all morning");
	initCodecPage(SPK_ECHO,  2,  0, "Ohhhh, so THIS is the character you guys ripped off for those Lightning Strongs!");
	initCodecPage(SPK_ALTO,  4,  0, "...Hey!! At least OUR moveset has a unique set of normals, Echo Fighter.");
	initCodecPage(SPK_ALTO,  6,  0, "Our Lightning Strongs qualify as a transformative work under fair use, thank you very much.");
	initCodecPage(SPK_OTTO,  0,  0, "Good luck finding someone who actually wants to deal with them, though.");
	initCodecPage(SPK_TRUM,  0,  0, "haha flying strongs go brrrrrrrr");
	initCodecPage(SPK_CODA,  0,  0, "...To give some actual advice, the pace of the game will be ever-changing thanks to overheat.");
	initCodecPage(SPK_CODA,  0,  0, "You guys need to recognise these changes in pace, and try to push them into your favor.");
	 
	initCodec(CH_ORI, 0);
	initCodecPage(SPK_TRUM,  0,  0, "hey guys im gonna do a play by play");
	initCodecPage(SPK_TRUM,  0,  0, "upair");
	initCodecPage(SPK_TRUM,  0,  0, "upair");
	initCodecPage(SPK_TRUM,  0,  0, "upair");
	initCodecPage(SPK_TRUM,  0,  0, "upair");
	initCodecPage(SPK_TRUM,  0,  0, "upair");
	initCodecPage(SPK_TRUM,  0,  0, "upair");
	initCodecPage(SPK_TRUM,  0,  0, "forwardair");
	initCodecPage(SPK_TRUM,  0,  0, "upair");
	initCodecPage(SPK_TRUM,  0,  0, "u die");
	 
	initCodec(CH_SHOVEL_KNIGHT, 0);
	initCodecPage(SPK_TRUM,  0,  0, "i got hit and my wallet is now empty.");
	initCodecPage(SPK_ALTO,  8,  0, "this is so sad");
	 
	initCodec(1865940669, 0); // Sandbert
	initCodecPage(SPK_TRUM,  0,  0, "down air");
	 
	initCodec(1866016173, 0); // Guadua
	initCodecPage(SPK_TRUM,  0,  0, "healing");

}



// Muno - probably won't use, instead just doing it FROM those chars.

with codec_handler{
 
	// initCodec(-0, 0); // Sandbert with a Phone
	// initCodecPage(SPK_TRUM,  0,  0, "woag");
	 
	// initCodec(-1, 0); // Trummel & Alto
	// initCodecPage(SPK_TRUM,  0,  0, "woag");
	 
	// initCodec(-2, 0); // Otto
	// initCodecPage(SPK_TRUM,  0,  0, "woag");
	 
	// initCodec(-3, 0); // Coda
	// initCodecPage(SPK_TRUM,  0,  0, "woag");
	 
	// initCodec(-4, 0); // Tempo
	// initCodecPage(SPK_TRUM,  0,  0, "woag");
	 
	// initCodec(-5, 0); // Steve
	// initCodecPage(SPK_TRUM,  0,  0, "woag");

}



// Curated

with codec_handler{

	initCodec(1894194148, 0); // Acid Rainbows
	initCodecPage(SPK_TRUM,  0,  0, "french fry");
	
	initCodec(1904437331, 0); // Astra
	initCodecPage(SPK_TRUM,  0,  0, "no u");
	
	initCodec(1962084547, 0); // Bird Guy
	h = GIM_LAUGH_TRACK;
	initCodecPage(SPK_TRUM,  0,  h, "bird up");
	
	initCodec(1882960192, 0); // Bluey
	initCodecPage(SPK_TRUM,  0,  0, "H");
	initCodecPage(SPK_ALTO,  0,  0, "Wrong SB character, Trum.");
	initCodecPage(SPK_TRUM,  0,  0, "no");
	initCodecPage(SPK_TRUM,  0,  0, "H");
	
	initCodec(2110996330, 0); // Chef
	initCodecPage(SPK_TRUM,  0,  0, "grill hitbox");
	
	initCodec(1968068304, 0); // Epinel
	initCodecPage(SPK_TRUM,  0,  0, "epipen");
	
	initCodec(1905208125, 0); // Hime
	initCodecPage(SPK_TRUM,  0,  0, "borgar");
	
	initCodec(1917856427, 0); // Liz
	initCodecPage(SPK_TRUM,  0,  0, "dab");
	
	initCodec(2006251771, 0); // Falco
	h = GIM_SKIP;
	initCodecPage(SPK_TRUM,  0,  h, "hands off my c  ");
	
	initCodec(1941825892, 0); // Fox
	initCodecPage(SPK_TRUM,  0,  0, "blip blip toriyah");
	
	initCodec(1868756032, 0); // Kirby
	initCodecPage(SPK_TRUM,  0,  0, "swallowed = 0;");
	
	initCodec(1867608473, 0); // Kris
	initCodecPage(SPK_TRUM,  0,  0, "what does down special do");
	
	initCodec(2108895293, 0); // Lumina
	initCodecPage(SPK_TRUM,  0,  0, "kirby");
	
	initCodec(1871989159, 0); // Mollo
	initCodecPage(SPK_TRUM,  0,  0, "im giik");
	
	initCodec(1995944345, 0); // Mycolich
	initCodecPage(SPK_TRUM,  0,  0, "mu;srhom..... . .");
	initCodecPage(SPK_CODA,  0,  0, "murhso,m");
	initCodecPage(SPK_OTTO,  0,  0, "msuhor;..mo");
	initCodecPage(SPK_ECHO,  0,  0, "muromsho......");
	initCodecPage(SPK_ALTO, 11,  0, "muhsrm");
	
	initCodec(1943759600, 0); // Olympia
	initCodecPage(SPK_TRUM,  0,  0, "hey sprite star
	
	
	love the character");
	
	initCodec(1888974873, 0); // Paddler
	initCodecPage(SPK_TRUM,  0,  0, "air rally 3ds is better than air rally wii dont @ me");
	initCodecPage(SPK_ALTO,  9,  0, "No. That opinion is not allowed.");
	initCodecPage(SPK_TRUM,  0,  0, "i love watching the world burn");
	
	initCodec(1913517643, 0); // Pomme
	initCodecPage(SPK_TRUM,  0,  0, "alto u should get her autograph");
	initCodecPage(SPK_ALTO,  6,  0, "I've moved past that phase, Trum.");
	
	initCodec(1868240517, 0); // R-00
	initCodecPage(SPK_TRUM,  0,  0, "someday humanity will be able to comprehend how to play as roo");
	
	initCodec(2167624888, 0); // Lyca
	initCodecPage(SPK_TRUM,  0,  0, "poor wisps
	
	
	
	theyre dead :(");

}



#define initStuff

codec_handler = {
	active: false,
	codecs: [],
	active_codecs: [],
	speakers: [],
	player_id: self,
	inited: false,		// Whether or not enemy codecs have been loaded
	state: 0,			// 0 closed, 1 opening, 2 open, 3 scrolling, 4 closing
	state_timer: 0,		// hm i wonder what this is
	scale: 1,
	file: 0,			// current codec being read
	page: 0,			// page of codec
	stored_text: "",	// text that has already scrolled onscreen
	room_height: room_height, // why is this not accessible from here? no clue.
	room_width: room_width
};



// Assets init

codec_handler.spr_cdc_textbox = sprite_get("_cdc_textbox");
codec_handler.spr_cdc_cover = sprite_get("_cdc_cover");
codec_handler.spr_cdc_char_alto = sprite_get("_cdc_char_alto");
codec_handler.spr_cdc_char_trum = sprite_get("_cdc_char_trum");
codec_handler.spr_cdc_char_otto = sprite_get("_cdc_char_otto");
codec_handler.spr_cdc_char_coda = sprite_get("_cdc_char_coda");
codec_handler.spr_cdc_char_tempo = sprite_get("_cdc_char_tempo");
codec_handler.spr_cdc_char_steve = sprite_get("_cdc_char_steve");
codec_handler.spr_cdc_char_sonic = sprite_get("_cdc_char_sonic");

sprite_change_offset("_cdc_textbox", 106, 48);

sfx_cdc_chatter = [
	sound_get("_cdc_chatter0"),
	sound_get("_cdc_chatter1"),
	sound_get("_cdc_chatter2"),
	];
sfx_cdc_chatter_skip = sound_get("_cdc_chatter_skip");
sfx_cdc_laugh_track = sound_get("_cdc_laugh_track");



// Speakers init

with codec_handler{
	
	/*
	 * initSpeaker(<index>, <name>, <sprite>)
	 */
	
	// Note to self - recolor with own alts! Also, a page gimmick(?) to recolor speaker with enemy alt.
	
	SPK_TRUM = 0;
	SPK_TRUM = initSpeaker(0, "Trummel",	spr_cdc_char_trum);
	SPK_ALTO = initSpeaker(1, "Alto",		spr_cdc_char_alto);
	SPK_OTTO = initSpeaker(2, "Otto",		spr_cdc_char_otto);
	SPK_CODA = initSpeaker(3, "Coda",		spr_cdc_char_coda);
	SPK_ECHO = initSpeaker(4, "Tempo", 		spr_cdc_char_tempo);
	SPK_MINE = initSpeaker(5, "Steve", 		spr_cdc_char_steve);
	SPK_SEGA = initSpeaker(6, "Sonic",		spr_cdc_char_sonic);
	
}



#define initCodec(cd_url, cd_gimmick)

var new_cdc = {
	url: cd_url,
	gimmick: cd_gimmick,
	pages: []
};

array_push(codecs, new_cdc);



#define initCodecPage(cd_speaker, cd_expression, cd_gimmick, cd_text)

var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	gimmick: cd_gimmick,
	text: cd_text
};

array_push(codecs[array_length(codecs) - 1].pages, new_page);



#define initSpeaker(idx, speak_name, speak_sprite)

speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx;
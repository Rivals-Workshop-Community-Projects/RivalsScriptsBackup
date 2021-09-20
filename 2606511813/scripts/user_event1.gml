//codec init


/*
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

initStuff();

// No Codec Found; MUST be 0th entry

with pit_codec_handler{
	initCodec(noone);
	initCodecPage(SPK_PIT,	4,	6,	"Who is THAT?");
	initCodecPage(SPK_PALU,	3,	0,	"I have no data on this fighter. I can't believe it!");
	initCodecPage(SPK_VIR,	2,	5,	"It must be an intruder from another dimension!");
	initCodecPage(SPK_PIT,	1,	2,	"Whatever it is, the goal remains the same: to fight and win!");
	
	//initCodecPage(SPK_PIT,	7,	6,	"Wait, there are OTHER devs revealing Smash characters too?!");
	//initCodecPage(SPK_VIR,	0,	4,	"Yeah, seems like it.");
	//initCodecPage(SPK_PALU,	2,	5,	"Yep! 2 more Smash characters by well known devs are going to be revealed during 2prints.");
	//initCodecPage(SPK_PIT,	3,	0,	"Wow, it sure will be nice to see some familiar faces again!");
	//initCodecPage(SPK_VIR,	1,	6,	"Can't wait for them to be more anime swordfighters.");
}

// Base Cast

with pit_codec_handler{
	initCodec(CH_ZETTERBURN);
	initCodecPage(SPK_PIT,	4,	9,	"Woah! This guy is on fire!");
	initCodecPage(SPK_PALU,	0,	2,	"That's Zetterburn. He's an experienced warrior who has fought many battles for the Fire Capitol.");
	initCodecPage(SPK_PIT,	6,	6,	"You seem to have a lot of knowledge about this universe, Lady Palutena.");
	initCodecPage(SPK_PALU,	2,	5,	"Oh I do my research. It is my duty to assist you after all.");
	initCodecPage(SPK_PIT,	3,	0,	"Wow, thanks Lady Palutena!");
	initCodecPage(SPK_PALU,	4,	1,	"Many of Zetterburn's attacks can set you on fire.");
	initCodecPage(SPK_PALU,	4,	-1,	"You'll take damage over time, and his Strong attacks will become more powerful if they hit you!");
	initCodecPage(SPK_PIT,	1,	8,	"Err, don't you mean 'Smash' attacks?");
	initCodecPage(SPK_PALU,	1,	0,	"Wrong game, Pit. I'd thought you'd have realised by now.");
	initCodecPage(SPK_VIR,	1,	6,	"Yeah, look at yourself. You've turned back into a sprite again.");
	initCodecPage(SPK_PIT,	2,	3,	"Wha- AAAAAAAAGH! 
	TURN ME BACK!");
	
	initCodec(CH_FORSBURN);
	initCodecPage(SPK_PIT,	1,	6,	"Forsburn? Is he related to Zetterburn?");
	initCodecPage(SPK_PALU,	2,	5,	"Correct! Forsburn is Zetterburn's brother, but was framed for the murder of their own father and exiled.");
	initCodecPage(SPK_VIR,	0,	5,	"Forsburn is now a member of the Smoke Clan, a group of rebels who master the way of smoke and deception.");
	initCodecPage(SPK_PALU,	0,	1,	"Keep close eye when he covers the stage in smoke, it can be difficult to pinpoint his exact location.");
	//initCodecPage(SPK_PALU,	0,	0,	"Forsburn is also able to create a clone of himself, identical in appearance.");
	//initCodecPage(SPK_PIT,	0,	0,	"Like me and Pittoo?");
	//initCodecPage(SPK_DPIT,	0,	0,	"Don't be ridculous, we look NOTHING alike.");
	//initCodecPage(SPK_VIR,	0,	0,	"Well look who decided to show up.");
	
	initCodec(CH_CLAIREN);
	initCodecPage(SPK_PIT,	9,	5,	"That sword looks like it would hurt...");
	initCodecPage(SPK_PALU,	5,	1,	"Clairen's a formidable foe. Her plasma sword extends her reach signifcantly, even more than your blades.");
	initCodecPage(SPK_PALU,	3,	-1,	"Additionally, the tip of her sword will stun you if you get hit!");
	initCodecPage(SPK_PIT,	6,	7,	"Huh, kinda reminds me of Marth.");
	initCodecPage(SPK_VIR,	5,	1,	"And also Lucina. Seriously, time traveling to the past, wields a sword, wears a mask... Lucina.");
	initCodecPage(SPK_PIT,	3,	0,	"Can't have too many anime sword fighters, I guess.");
	
	initCodec(CH_ORCANE);
	initCodecPage(SPK_PIT,	7,	6,	"I can't tell if this creature is a dog or a dolphin.");
	initCodecPage(SPK_PALU,	2,	5,	"Both, actually. Orcane may look like a playful puppy, but don't let his looks decieve you.");
	initCodecPage(SPK_PALU,	0,	-1,	"Orcane is notorious for his trickery, using his water abilities to teleport anywhere where a body of water exists.");
	initCodecPage(SPK_PIT,	9,	5,	"Teleportation? That's nuts! How am I supposed to catch up with him");
	initCodecPage(SPK_PALU,	0,	1,	"Without his puddles, Orcane is extremely vulnerable offstage. Try use that opportunity to attack.");
	initCodecPage(SPK_PIT,	6,	7,	"Does that mean Orcane can just, teleport to a hot spring whenever he wants? I'd love to have that ability!");
	initCodecPage(SPK_PALU,	4,	2,	"Hmmm, I'm not too sure. Dissolving into water in the process may not be the most pleasant of experiences.");
	initCodecPage(SPK_PIT,	3,	0,	"Nothing a hot spring can't fix!");
	
	initCodec(CH_ETALUS);
	initCodecPage(SPK_PIT,	4,	9,	"Who let the polar bear in?");
	initCodecPage(SPK_PALU,	3,	3,	"Etalus may look large and slow, but his control over ice allows him to move at blinding speeds.");
	initCodecPage(SPK_VIR,	2,	8,	"When standing on ice, Etalus becomes MUCH more slippery.");
	initCodecPage(SPK_PIT,	3,	10,	"At least his big body will make him easier to combo.");
	initCodecPage(SPK_PALU,	1,	0,	"Just make sure he doesn't have a chance to get his armour up. Good luck KO-ing him in that state.");
	
	initCodec(CH_RANNO);
	initCodecPage(SPK_PIT,	6,	6,	"'" + "Poisonous Pacifist" + "'" + ", what is that supposed to mean?");
	initCodecPage(SPK_PALU,	4,	2,	"Some of Ranno's moves inflict a poison stasus effect. While poisoned, you'll take damage every time you input an attack!");
	initCodecPage(SPK_VIR,	1,	1,	"Or he can trap you in a poison bubble and hit you until it pops.");
	initCodecPage(SPK_PIT,	7,	8,	"Doesn't sound very pacifist to me...");
	
	initCodec(CH_KRAGG);
	initCodecPage(SPK_PIT,	1,	6,	"This guy looks awfully similar to Cragalanche.");
	initCodecPage(SPK_PALU,	1,	1,	"They even share the same part of their name. Talk about coincidences.");
	initCodecPage(SPK_VIR,	0,	9,	"For the record, our game came out waaaay before this game, so if anything they copied from me.");
	initCodecPage(SPK_PALU,	0,	2,	"Kragg has a number of attacks to be wary of. His side special has super armour, hitting him will be of little use.");
	initCodecPage(SPK_PALU,	4,	-1,	"Kragg also can manipulate the earth to pull rocks from the ground. He can throw them at you, so be careful.");
	initCodecPage(SPK_VIR,	2,	2,	"Rolling attack, throwing rocks, ugh they even copied Cragalanche's fighting style!");
	initCodecPage(SPK_VIR,	4,	8,	"I'm totally sueing for copyright infringement, I can't let them get away with this!");
	
	initCodec(CH_MAYPUL);
	initCodecPage(SPK_PALU,	1,	0,	"Got any info about Maypul, Viridi?");
	initCodecPage(SPK_VIR,	6,	5,	"Maypul patrols the forest floor of Aether, protecting her fellow tree-dwellers and seeking out threats to her home.");
	initCodecPage(SPK_PIT,	3,	0,	"That's awfully nice of her.");
	initCodecPage(SPK_VIR,	4,	8,	"Watch out for Maypul's ability: Watcher's Mark. When marked, Maypul can wrap you using her Strong attacks!");
	
	initCodec(CH_SYLVANOS);
	initCodecPage(SPK_VIR,	4,	3,	"Look! It's Sylvanos!");
	initCodecPage(SPK_PIT,	0,	6,	"Wait, you know him?");
	initCodecPage(SPK_VIR,	6,	4,	"Sylvanos is the only other being I've seen who understands nature quite like I do.");
	initCodecPage(SPK_VIR,	0,	-1,	"With his affinity towards nature, I'd make him an officer in the Forces of Nature if I could!");
	initCodecPage(SPK_PALU,	4,	1,	"Although Sylvanos doesn't seem to be the type to make alliances easily.");
	initCodecPage(SPK_PIT,	3,	0,	"Couldn't you just, throw him some dog treats or something?");
	initCodecPage(SPK_PALU,	6,	0,	"Maybe if you didn't mind getting hit with a tree to the face.");
	
	initCodec(CH_WRASTOR);
	initCodecPage(SPK_PIT,	7,	8,	"That ain't Falco...");
	initCodecPage(SPK_VIR,	0,	4,	"He does look awfully similar.");
	initCodecPage(SPK_PALU,	0,	1,	"Wrastor's gimmick is he can only perform Strong attacks in the air. He also has multiple jumps just like you Pit.");
	initCodecPage(SPK_VIR,	1,	6,	"A character with wings getting multiple jumps? How original.");
	
	initCodec(CH_ABSA);
	initCodecPage(SPK_PIT,	0,	6,	"So Absa has the power of lightning? Like Phosphora?");
	initCodecPage(SPK_VIR,	0,	4,	"Yeah, pretty much.");
	initCodecPage(SPK_PALU,	0,	1,	"Absa can use her powers to create clouds on the stage, and detonate them remotely at will.");
	initCodecPage(SPK_VIR,	2,	5,	"Absa can also detonate the cloud by hitting them with her sweetspot forwards, back and down air.");
	initCodecPage(SPK_PIT,	6,	6,	"Aren't those moves just Zelda's Lightning Kick?");
	initCodecPage(SPK_PALU,	1,	0,	"On a character that literally has the power of lightning?");
	initCodecPage(SPK_VIR,	5,	6,	"I guess the correlation was just too good to pass up.");
	
	initCodec(CH_ELLIANA);
	initCodecPage(SPK_PIT,	7,	8,	"How on earth does a snake pilot a mech?");
	initCodecPage(SPK_PALU,	5,	4,	"Beats me, but Elliana seems to manage just fine.");
	initCodecPage(SPK_PALU,	0,	-1,	"That mech of hers is capable of flight, and comes equipped with an wide arsenal of weapons.");
	initCodecPage(SPK_PIT,	3,	10,	"Just like me!
	
	
	...minus the flight part.");
	initCodecPage(SPK_VIR,	1,	1,	"Poor Pit complaining again about how he can't fly by himself, boo-hoo.");
	initCodecPage(SPK_PIT, 10,	5,	"Yeah yeah, rub it in Viridi.");
	initCodecPage(SPK_PALU,	1,	1,	"The similarities don't end just there. Elliana is able to freely control her missiles, just like your arrows!");
	initCodecPage(SPK_PIT,	10,	2,	"Talk about stealing my moves...")
	
	initCodec(CH_ORI);
	initCodecPage(SPK_PIT,	7,	6,	"Who's this? Doesn't seem to come from this place either.");
	initCodecPage(SPK_PALU,	2,	3,	"That creature is Ori, coming from the indie game, Ori and the Blind Forest.");
	initCodecPage(SPK_PALU,	0,	-1,	"The glowing orb following Ori is Sein. Sein acts as a sort of guide to Ori, and also helps them with attacks.");
	initCodecPage(SPK_PIT,	3,	0,	"Kinda like you, Lady Palutena!");
	initCodecPage(SPK_PALU,	2,	5,	"Just don't expect me to come down and help you with fighting anytime soon, Pit.");
	
	initCodec(CH_SHOVEL_KNIGHT);
	initCodecPage(SPK_PIT,	0,	9,	"Hey, I recognise this guy!");
	initCodecPage(SPK_VIR,	2,	4,	"Who wouldn't? Shovel Knight seems to be everywhere these days.");
	initCodecPage(SPK_PALU,	2,	5,	"While he may only be an assist trophy in Smash, Shovel Knight is a fully playable character here in Rivals.");
	initCodecPage(SPK_PIT,	3,	0,	"He must be glad to be represented well over here.");
	initCodecPage(SPK_VIR,	1,	9,	"I don't know about that, pretty sure all he wants is to steal your money.");
	
	
	 
	initCodec(1865940669); // Sandbert
	initCodecPage(SPK_PIT,	4,	6,	"Who's THIS guy?");
	initCodecPage(SPK_PALU,	4,	2,	"That's Sandbert. He's an... interesting character.");
	initCodecPage(SPK_PIT,	7,	8,	"Why is he so... rectangular?");
	initCodecPage(SPK_PALU,	1,	0,	"Whatever you do, just try not to get hit by his infamous down air. The entire hitbox is a super strong spike!");
	initCodecPage(SPK_PIT,	9,	5,	"Ouch, sounds pretty broken.");
	 
	initCodec(1866016173); // Guadua
	initCodecPage(SPK_PIT,	3,	0,	"Look its Guadua!");
	initCodecPage(SPK_VIR,	5,	6,	"The biggest baddest panda that the world of Rivals has ever seen!");
	initCodecPage(SPK_PIT,	6,	6,	"Did you just copy that from the steam page description?");
	initCodecPage(SPK_VIR,	0,	9,	"Look, sometimes I need to get my information from elsewhere... I'm not like know-it-all Palutena.");
	
}


//Workshop

with pit_codec_handler {
	//woag
	initCodec(2282173822);
	if other.codec_triggered == 'Pit' {
		initCodecPage(SPK_PIT,	6,	6,	"Now this is a curious pair...");
		initCodecPage(SPK_PALU,	4,	2,	"A snail and a cloud? Quite the duo indeed.");
		initCodecPage(SPK_PIT,	4,	9,	"Woah! Looks like we got company!");
		initCodecPage(SPK_PALU,	1,	1,	"And whose codecs would you have taken inspiration from, hmmm?");
		initCodecPage(SPK_VIR,	1,	1,	"Oh boy, this outta be good.");
		initCodecPage(SPK_PALU,	2,	3,	"Oh, I see you've done your research. Consider me impressed!");
		initCodecPage(SPK_PIT,	3,	7,	"I must say, you are quite a talkative figure, for a sentient cloud.");
		initCodecPage(SPK_PIT,	2,	5,	"Hey, thats not my fault! It's just...uh...a disability.");
	} else {
		initCodecPage(SPK_PIT,	3,	0,	"It gives you health!");
		initCodecPage(SPK_PALU,	2,	5,	"Well for a start, he will eat almost anything you throw at him.");
		initCodecPage(SPK_VIR,	0,	8,	"Come on, our universe is based off Greek mythology, not French.");
		initCodecPage(SPK_PIT,	1,	10,	"Bring it on!");
	}
	
	//dpit
	initCodec(2606512532);
	initCodecPage(SPK_PIT,	3,	10,	"Hey! It's Pittoo!");
	initCodecPage(SPK_DPIT,	2,	1,	"Will you quit calling me that?!");
	initCodecPage(SPK_PALU,	1,	2,	"Now where did you disappear to after the fight with Hades?");
	initCodecPage(SPK_VIR,	6,	4,	"Actually, Dark Pit works for me now. He's an officer in the Forces of Nature.");
	initCodecPage(SPK_PALU,	3,	6,	"What?!");
	initCodecPage(SPK_PIT,	4,	9,	"No way!");
	initCodecPage(SPK_VIR,	1,	3,	"Just because we fought together once doesn't mean we're all buddy-buddy now.");
	initCodecPage(SPK_VIR,	3,	9,	"In fact, the Lightning Chariot and Phosphora are also both under my command. The battle isn't over yet!");
	initCodecPage(SPK_DPIT,	1,	0,	"Viridi's interests and mine just happen to overlap, so for this fight, I'll be happy to launch you into the stratosphere!");
	initCodecPage(SPK_PALU,	4,	1,	"Your powers are perfectly matched here.");
	initCodecPage(SPK_VIR,	4,	8,	"It all comes down to skill!");
}

// Curated
/*
with pit_codec_handler{
	
	initCodec(1962084547, 0); // Bird Guy
	h = GIM_LAUGH_TRACK;
	initCodecPage(SPK_TRUM,  0,  h, "bird up");
	
	initCodec(1868756032, 0); // Kirby
	initCodecPage(SPK_TRUM,  0,  0, "swallowed = 0;");
	
	initCodec(1995944345, 0); // Mycolich
	initCodecPage(SPK_TRUM,  0,  0, "mu;srhom..... . .");
	initCodecPage(SPK_CODA,  0,  0, "murhso,m");
	initCodecPage(SPK_OTTO,  0,  0, "msuhor;..mo");
	initCodecPage(SPK_ECHO,  0,  0, "muromsho......");
	initCodecPage(SPK_ALTO, 11,  0, "muhsrm");
	
	initCodec(1943759600, 0); // Olympia
	initCodecPage(SPK_TRUM,  0,  0, "hey sprite star
	
	
	love the character");
	
	initCodec(1868240517, 0); // R-00
	initCodecPage(SPK_TRUM,  0,  0, "someday humanity will be able to comprehend how to play as roo");

}
*/



#define initStuff

pit_codec_handler = {
	active: false,
	pit_codecs: [],
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

pit_codec_handler.spr_cdc_textbox = sprite_get("_cdc_textbox");
pit_codec_handler.spr_cdc_cover = sprite_get("_cdc_cover");

pit_codec_handler.spr_cdc_char_pit = sprite_get("_cdc_char_pit");
pit_codec_handler.spr_cdc_char_palu = sprite_get("_cdc_char_palu");
pit_codec_handler.spr_cdc_char_vir = sprite_get("_cdc_char_vir");
pit_codec_handler.spr_cdc_char_dpit = sprite_get("_cdc_char_dpit");

pit_codec_handler.spr_cdc_sfx_pit = [
	sound_get("_cdc_sfx_pit_chuckle"),
	sound_get("_cdc_sfx_pit_gah"),
	sound_get("_cdc_sfx_pit_grr"),
	sound_get("_cdc_sfx_pit_hurt"),
	sound_get("_cdc_sfx_pit_ow"),
	sound_get("_cdc_sfx_pit_pensive"),
	sound_get("_cdc_sfx_pit_question"),
	sound_get("_cdc_sfx_pit_think"),
	sound_get("_cdc_sfx_pit_uhh"),
	sound_get("_cdc_sfx_pit_woah"),
	sound_get("_cdc_sfx_pit_exhale")
	];

pit_codec_handler.spr_cdc_sfx_palu = [
	sound_get("_cdc_sfx_palu_err"),
	sound_get("_cdc_sfx_palu_hmm"),
	sound_get("_cdc_sfx_palu_hmm2"),
	sound_get("_cdc_sfx_palu_oh"),
	sound_get("_cdc_sfx_palu_umm"),
	sound_get("_cdc_sfx_palu_chuckle"),
	sound_get("_cdc_sfx_palu_gasp"),
	sound_get("_cdc_sfx_palu_uhoh")
	];

pit_codec_handler.spr_cdc_sfx_vir = [
	sound_get("_cdc_sfx_vir_augh"),
	sound_get("_cdc_sfx_vir_chuckle"),
	sound_get("_cdc_sfx_vir_frustrated"),
	sound_get("_cdc_sfx_vir_hey"),
	sound_get("_cdc_sfx_vir_hrm"),
	sound_get("_cdc_sfx_vir_huh"),
	sound_get("_cdc_sfx_vir_laugh"),
	sound_get("_cdc_sfx_vir_question"),
	sound_get("_cdc_sfx_vir_ugh"),
	sound_get("_cdc_sfx_vir_urgh")
	];

pit_codec_handler.spr_cdc_sfx_dpit = [
	sound_get("_cdc_sfx_dpit_chuckle"),
	sound_get("_cdc_sfx_dpit_grah"),
	sound_get("_cdc_sfx_dpit_hurt"),
	];


sprite_change_offset("_cdc_textbox", 106, 48);

sfx_cdc_chatter = [
	sound_get("_cdc_chatter0"),
	sound_get("_cdc_chatter1"),
	sound_get("_cdc_chatter2"),
	];
sfx_cdc_chatter_skip = sound_get("_cdc_chatter_skip");
sfx_cdc_laugh_track = sound_get("_cdc_laugh_track");
sfx_pho_open1 = sound_get("_pho_open1")
sfx_pho_close2 = sound_get("_pho_close2")

// Speakers init

with pit_codec_handler{
	
	SPK_PIT = initSpeaker(0, "Pit",			spr_cdc_char_pit,	spr_cdc_sfx_pit);
	SPK_PALU = initSpeaker(1, "Palutena",	spr_cdc_char_palu,	spr_cdc_sfx_palu);
	SPK_VIR = initSpeaker(2, "Viridi",		spr_cdc_char_vir,	spr_cdc_sfx_vir);
	SPK_DPIT = initSpeaker(3, "Dark Pit",	spr_cdc_char_dpit,	spr_cdc_sfx_dpit);
	
	//SPK_WOAG1 = initSpeaker(4, "Trum",		spr_cdc_char_pit,	spr_cdc_sfx_pit);
	//SPK_WOAG2 = initSpeaker(5, "Trum",		spr_cdc_char_palu,	spr_cdc_sfx_palu);
	//SPK_WOAG3 = initSpeaker(6, "Trum",		spr_cdc_char_vir,	spr_cdc_sfx_vir);
}

load_codecs = false;



#define initCodec(cd_url)

var new_cdc = {
	url: cd_url,
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



#define initSpeaker(idx, speak_name, speak_sprite, speak_sfx)

speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite,	// Sprite of face
	sfx: speak_sfx	// Sfx that plays when textbox starts
};

return idx;
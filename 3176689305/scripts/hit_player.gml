//hitbox init, FOR PROJECTILES SPECIFICALLY

switch(my_hitboxID.attack){
	case AT_JAB:
		if (my_hitboxID.hbox_num == 1) {
			sound_play(asset_get("sfx_blow_weak1"), 0, noone, 0.75, 1)
		}
		else {
			sound_play(asset_get("sfx_blow_medium2"), 0, noone, 0.75, 1)
		}	
	break;
	case AT_FTILT:
	case AT_UAIR:
		sound_play(asset_get("sfx_blow_medium2"), 0, noone, 0.75, 1)
	break;
	
	case AT_DTILT:
	    sound_play(asset_get("sfx_blow_medium1"), 0, noone, 0.75, 1)
	break;
	
	case AT_UTILT:
		if (my_hitboxID.hbox_num == 1) {
			sound_play(asset_get("sfx_blow_weak1"), 0, noone, 0.75, 1)
		}
		else {
			sound_play(asset_get("sfx_blow_medium2"), 0, noone, 0.75, 1)
		}
	break;
	
	case AT_NAIR:
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 5) {
			sound_play(asset_get("sfx_blow_medium2"), 0, noone, 0.75, 1)
		}
	break;
	
	case AT_FAIR:
	if (my_hitboxID.hbox_num == 2) {
			sound_play(asset_get("sfx_blow_medium1"), 0, noone, 0.75, 1)
		}
	break;
	
	case AT_USTRONG:
	case AT_EXTRA_1:
	if my_hitboxID.hbox_num < 4 and !hit_player_obj.clone
		{
    		hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*1),0.5)
    		hit_player_obj.y = lerp(hit_player_obj.y,y-64+vsp,0.5)
		}
	break;
	
	case AT_USPECIAL_2:
	if (my_hitboxID.hbox_num == 2) {
			sound_play(asset_get("sfx_oly_crystal_cracking"), 0, noone, 0.75, 1)
		}
	break;
	
	case AT_NSPECIAL:
	if (my_hitboxID.hbox_num == 2) {
			sound_play(asset_get("sfx_blow_heavy2"), 0, noone, 0.8, 0.4)
		}
	break;
	
	
	case AT_DAIR:
		sound_play(asset_get("sfx_blow_medium2"), 0, noone, 0.75, 1)
	break;
	
	case AT_DSPECIAL:
	if (my_hitboxID.hbox_num == 10) {
		sound_play(asset_get("sfx_blow_heavy2"), 0, noone, 0.8, 0.4)
	}
	break;
	
	//dreamnail
	case AT_EXTRA_2:
	if (my_hitboxID.hbox_num == 1) {
		dreamreading = true;
		dreambox_timer = dreambox_timer_max
		if ("knight_compat_dream" in other)
			dreamread = other.knight_compat_dream;
		//===================================================[HOLLOW KNIGHT]
		//===HORNET
		else if ((other.url) == 2934718204 || (other.url) == 1873814192 ||
		(other.url) == 2613499247 ) {
			dreamread = 
			[ 
				"Too weak, little ghost...",
				"No shadow will haunt me...",
				"Only pity for your cursed kind."
			];
		}
		//===THE KNIGHT
		else if ((other.url) == 2105527362) {
			dreamread = 
			[ 
				"...",
				"...",
				"..."
			];
		}
		//===TROUPE MASTER GRIMM
		else if ((other.url) == 3165913873) {
			dreamread = 
			[ 
				"The Flame...",
				"The Ritual...",
				"The Troupe..."
			];
		}
		//===PRIMAL ASPID
		else if ((other.url) == 2955765677) {
			dreamread = 
			[ 
				"...Light...Danger...",
				"...Away. Away...",
				"...Pain..."
			];
		}
		//===================================================[BC FIRE]
		else if (other.url) == CH_ZETTERBURN {
			dreamread = 
			[ 
				"For the glory of Fire Capital!",
				"Begone from Aether, invader...",
				"...Oppose the kingdom and burn down..."
			];
		}
		else if (other.url) == CH_FORSBURN {
			dreamread = 
			[ 
				"...Zetterburn... Needs to know...",
				"Protect the Smoke Clan...",
				"...A blade... Like my own..."
			];
		}
		else if (other.url) == CH_CLAIREN {
			dreamread = 
			[ 
				"...Gotta keep my distance...",
				"For a new future!",
				"...Loxodont... will pay..."
			];
		}
		else if (other.url) == CH_MOLLO {
			dreamread = 
			[ 
				"...She left us... will it all end?...",
				"Is Loxodont employing this... bug?",
				"...The rage inside me keeps burning..."
			];
		}
		//===================================================[BC AIR]
		else if (other.url) == CH_WRASTOR {
			dreamread = 
			[ 
				"...Should I report... higher-ups... ",
				"...Wings... like mine?",
				"Bradshaw..."
			];
		}
		else if (other.url) == CH_ABSA {
			dreamread = 
			[ 
				"Should test... some new storms...",
				"Is this the abyss? This is troubling for Archai...",
				"What’s a bug doing here? A thousand volts should do."
			];
		}
		else if (other.url) == CH_ELLIANA {
			dreamread = 
			[ 
				"NOTHING STANDS BETWEEN ME AND THE ARMADA!",
				"REVENGE!! FULL STEAM AHEAD!!",
				"Ayala..."
			];
		}
		else if (other.url) == CH_POMME {
			dreamread = 
			[ 
				"Who let this disgusting worm anywhere near me?",
				"Vince should’ve been enough to handle this... thing.",
				"Loxodont will fix a situation like this for me... right?"
			];
		}
		//===================================================[BC WATER]
		else if (other.url) == CH_HODAN {
			dreamread = 
			[ 
				"I’m old enough to know these tricks ain’t abyss... Heehee!",
				"I could use a dip later!",
				"Hooh! You won’t find anything useful in this old brain, kiddo!"
			];
		}
		else if (other.url) == CH_ETALUS {
			dreamread = 
			[ 
				"Begone, creature from the black!",
				"The Hyperborean will finally know peace.",
				"No mercy for you... black ice..."
			];
		}
		else if (other.url) == CH_RANNO {
			dreamread = 
			[ 
				"Face my powerful pacifism!",
				"...Poison oughta trickle it away...",
				"Leave the estuary alone..."
			];
		}
		else if (other.url) == CH_ORCANE {
			dreamread = 
			[ 
				"Play... Protect!",
				"Save... Justice!",
				"Puddle... Sink!"
			];
		}
		//===================================================[BC EARTH]
		else if (other.url) == CH_KRAGG {
			dreamread = 
			[ 
				"...Bug like Kragg... Kinship...",
				"Sorry bug... Abyss bad...",
				"...Rock..."
			];
		}
		else if (other.url) == CH_MAYPUL {
			dreamread = 
			[ 
				"Begone... Beast from the floor...",
				"Mayreed... Grandma...",
				"This’ll make a good treat for Lily."
			];
		}
		else if (other.url) == CH_SYLVANOS {
			dreamread = 
			[ 
				"...EXPAND...",
				"...GROW... OVERGROW...",
				"...GERMINATE..."
			];
		}
		else if (other.url) == CH_OLYMPIA {
			dreamread = 
			[ 
				"Don’t forget training...",
				"...Focus...",
				"Keep it cool..."
			];
		}
		//===================================================[BC GUS]
		else if (other.url) == CH_ORI {
			dreamread = 
			[ 
				"...Ku...",
				"...Naru...",
				"...Gumo..."
			];
		}
		else if (other.url) == CH_SHOVEL_KNIGHT {
			dreamread = 
			[ 
				"For shovelry!",
				"Nail Knight? Is the Order of No Quarter hiring any odd fool now?!",
				"Oh, Shield Knight..."
			];
		}
		//===================================================[SABERD]
		//===SANDBERT
		else if ((other.url) == 1865940669) {
			dreamread = 
			[ 
				"The missus won’t like that I’ll be late...",
				"Don’t read my brain, copyright infringement!!",
				"BWAH!!!!"
			];
		}
		//===================================================[WORKSHOP ME]
		//===MAL
		else if ((other.url) == 2605377553) {
			dreamread = 
			[ 
				"What kind of ghost is this one? ",
				"A ghost with no emotions... Where did it come from?",
				"This thing messes with souls? Could it then..."
			];
		}
		//===SPAMTON
		else if ((other.url) == 2642265963) {
			dreamread = 
			[ 
				"[Flying Gadzooks!] IS THIS THE [suckers.] I WAS LOOKING FOR ??",
				"...[Pipis]...[hochi Mamaz]...",
				"Mike..."
			];
		}
		//===MIMIKYU
		else if ((other.url) == 2676027044) {
			dreamread = 
			[ 
				"Mimic... you...",
				"Hide...",
				"Popular... ?"
			];
		}
		//===YUUKO AIOI
		else if ((other.url) == 2996263079) {
			dreamread = 
			[ 
				"Come on, a giant cicada!?",
				"Stag beetle...",
				"Wait a minute... I didn’t do my homework!!"
			];
		}
		//===================================================[WORKSHOP FRIENDS]
		//===HEARTBRAKE
		else if ((other.url) == 2396053263) {
			dreamread = 
			[ 
				"...why, Callie...?",
				"Empty, like me...",
				"...It hurts..."
			];
		}
		//===SCARYAMI
		else if ((other.url) == 2097500977) {
			dreamread = 
			[ 
				"It sees something within me. For what is it searching?",
				"That was not an attack? Should I fight back?",
				"Does it seek my destruction? What is its function?"
			];
		}
		//===SCRATCH & BITE
		else if ((other.url) == 2895612943) {
			if (other.is_bite == 0) {
				dreamread = 
				[ 
					"It's like a dance.",
					"...Bite...I'll protect you...",
					"...Stay cool..."
				];
			}
			else {
				dreamread = 
				[ 
					"&$#@ the fire department!!",
					"Come on, Scratch! Together!",
					"I'll just keep throwing discs until it works..."
				];
			}
		}
		//===SPRINGO
		else if ((other.url) == 2920880979 || (other.url) == 1959579555) {
			dreamread = 
			[ 
				"...!",
				"...?",
				"...no thoughts, head empty..."
			];
		}
		//===MARTI
		else if ((other.url) == 2942375772) {
			dreamread = 
			[ 
				"Who’s this funky little bug?",
				"One two three four, two two three four...",
				"...Kinda hungry..."
			];
		}
		//===NEMESIS
		else if ((other.url) == 3042615374 ) {
			dreamread = 
			[ 
				"...",
				"...S.T.A.R.S...",
				"S.T.A.R.S...!"
			];
		}
		//===A.R.
		else if ((other.url) == 1894194148 ) {
			dreamread = 
			[ 
				"...How far have I walked...",
				"...How long have I walked...",
				"I hope they miss me."
			];
		}
		//===LUMINA
		else if ((other.url) == 2108895293 ) {
			dreamread = 
			[ 
				"Heart...Cold...",
				"...Only I can light the way for myself...",
				"...Hmm..."
			];
		}
		//===RECKS n CARRIE
		else if ((other.url) == 2226596831 || (other.url) == 2823335024) {
			dreamread = 
			[ 
				"Don’t try this at home!",
				"Vote Me for Smash Bros.!",
				"The TV...Gotta...Fix again..."
			];
		}
		//===N/A
		else if ((other.url) == 2229832619 ) {
			dreamread = 
			[ 
				"...Nothing is so much to be feared as fear...",
				"This shadow... What is its directive?",
				"We are immutable. Undying."
			];
		}
		//===NATSUMI
		else if ((other.url) == 2343479756 ) {
			dreamread = 
			[ 
				"Where am I now?",
				"Is this bug thingy one of them too?",
				"...There’s no such thing as forever..."
			];
		}
		//===AO
		else if ((other.url) == 2415092274 ) {
			dreamread = 
			[ 
				"Dance, and slash...",
				"The wind into my swing...!",
				"...Remember...Remember...Who was it..."
			];
		}
		//===EXPLORER
		else if ((other.url) == 2605462884 ) {
			dreamread = 
			[ 
				"...A double rainbow collapsed in itself...",
				"...Gravity disappeared from dark surfaces...",
				"...The stars flickered in the wrong rhythm..."
			];
		}
		//===JIRACHI
		else if ((other.url) == 2685923956 ) {
			dreamread = 
			[ 
				"Twinkle...Stars...",
				"...Sleepy...",
				"...Anyone..."
			];
		}
		//===MADOTSUKI
		else if ((other.url) == 2895650073 ) {
			dreamread = 
			[ 
				"...",
				"...",
				"...Sleepy..."
			];
		}
		//===DESPERADO
		else if ((other.url) == 3120902361 ) {
			dreamread = 
			[ 
				"...Judgement.",
				"...Judgement.",
				"...Judgement."
			];
		}
		//===AUR
		else if ((other.url) == 2867341866 ) {
			dreamread = 
			[ 
				"...Has it really been... This long?",
				"...I can’t... See...",
				"...Maybe I should... Rest..."
			];
		}
		//===UNT. GOOSE
		else if ((other.url) == 1894361290 ) {
			dreamread = 
			[ 
				"Honk...",
				"No peace...",
				"...Rake...Lake..."
			];
		}
		//===RHYOLIS
		else if ((other.url) == 3115440130 ) {
			dreamread = 
			[ 
				"...Must...Defend...",
				"Intruder...Begone...",
				"...Kin..."
			];
		}
		//===KRIS DREEMURR (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 1867608473 ) {
			dreamread = 
			[ 
				"...",
				"...Asriel...",
				"...Gain back... Control..."
			];
		}
		//===NOELLE HOLIDAY (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 2904134945 ) {
			dreamread = 
			[ 
				"If this is a dream, how did I come up with this little guy?",
				"...Dess would have loved it here...",
				"...Kin..."
			];
		}
		//===FRISK (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 2322322191 ) {
			dreamread = 
			[ 
				"...",
				"...",
				"..."
			];
		}
		//===FLOWEY (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 2964956057 ) {
			dreamread = 
			[ 
				"Is this a monster? No... it's empty, like me.",
				"They kind of remind me of...",
				"...Mom... ...Dad..."
			];
		}
		//===NAPSTABLOOK (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 3070186949 ) {
			dreamread = 
			[ 
				"oh... is that monster mad at me?...",
				"...mettaton... ...huh?...",
				"really not up for getting my mind read right now sorry"
			];
		}
		//===W.D. GASTER (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 2836730753 ) {
			dreamread = 
			[ 
				"EXCELLENT, TRULY EXCELLENT.",
				"THIS VESSEL YOU’VE CHOSEN... '"  + get_player_name( player )  + "', IT SUITS YOU. JUST AS THIS IMPARTIAL VESSEL SUITS ME TOO, FOR NOW.",
				"A CRADLE TO VOID. TO ANOTHER WORLD’S DEPTHS, DARKER THAN DARK. THIS WILL BE VERY INTERESTING."
			];
		}
		//===MADELINE (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 2917082599 ) {
			dreamread = 
			[ 
				"This is it, Madeline...",
				"Think of the feather...",
				"That part of me is stronger than I thought!"
			];
		}
		//===CROAGUNK (NOT WRITTEN BY MOD CREATOR)
		else if ((other.url) == 2665458747 ) {
			dreamread = 
			[ 
				"...Bleh...",
				"...Hungry...",
				"...Greg."
			];
		}
		else 
			dreamread = defaultdreams;
		
		other.dreamlog++
		dreamorder = (other.dreamlog % 3)
		
		if (shade_stock == 0 && shade_timer > 15)  {
			shade_timer = 15
		}
	}
	break;
}
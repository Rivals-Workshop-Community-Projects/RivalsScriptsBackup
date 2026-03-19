// user_event1.gml - codecs

var opp_url = codec_target.url;
// Speaker IDs: 0 = Azure, 1 = Cinna, 2 = BlueyBot, 3 = Mozza, 4 = Troops

var AZU = 0; var CIN = 1; var BOT = 2; var MOZ = 3; var TRO = 4;

// mirror match
if (opp_url == url) {
    codec_dialogue = [
			[AZU, 7, "What in the world... |Is that me?"],
			[CIN, 0, "Wow, he looks scarily |similar to you, Azu. |Maybe it's a hologram?"],
			[BOT, 0, "scanning...       |...no holograms detected. |this is"],
			[BOT, 0, "       azure 2|      |   electric bababooey"],
			[CIN, 4, "ANOTHER Azu???"],
			[AZU, 3, "Well... at least he actually |tries. Unlike you, BBot."],
			[CIN, 7, "Why don't I ever get |my own copycats? |So unfair..."],
			[BOT, 0, "i will be cinnabot if |you want."],
			[CIN, 1, "..."],
			[AZU, 8, "(...Oh no, she's actually |considering it...)"],
    ];
} else
    // Big switch for everyone else
switch (opp_url) {

    // base game characters
    case 2: // Zetterburn
        codec_dialogue = [
            [CIN, 4, "Oh no, that lion's mane is|on fire! Azu, you gotta help|him out!"],
            [AZU, 1, "...                  |He looks fine if you ask |me."],
            [AZU, 6, "Also, I don't have a Fire|Extinguisher Mode on my |Multi-Rod."],
            [CIN, 1, "Mm... Yeah, I guess he|looks alright.         |...What's his deal anyway?"],
            [BOT, 0, "zetterburn. |general of the fire empire. |with fire powers"],
            [BOT, 0, "his dad was the emperor |until someone unalived him"],
            [AZU, 1, "...Ouch. No wonder he looks |so...           |fire-headed."],
            [BOT, 0, "he attacks by igniting his |enemies on fire and then |launching them away"],
            [BOT, 2, "something about his claws|'consuming burn'.|i do not compute"],
            [AZU, 2, "So... don't catch fire.       |Noted."],
            [CIN, 1, "I just had a thought..."],
            [CIN, 3, "If we doused him in water,"],
            [CIN, 5, "would he become bald?"],
            [AZU, 8, "..."],
            [AZU, 9, "......."]
        ];
    break;
	
    case 3: // Orcane
        codec_dialogue = [
            [AZU, 0, "...Looks like a dolphin."],
            [CIN, 3, "Pfft. Silly Azu, dolphins |don't have paws. |That's a blue dog!"],
            [AZU, 3, "That definitely isn't a dog."],
            [BOT, 0, "orcane"],
            [AZU, 0, "Nor a cane. |                   |     ...what's a cane?"],
            [BOT, 0, "that's what it's called |orcane         |orca cane"],
            [BOT, 0, "he likes water |         bubbles         |         and unguarded sinks"],
            [CIN, 4, "Wow. Good thing our house's |sinks are all guarded. |Right, Azu?"],
            [AZU, 0, "...Uh. No?"]
        ];
    break;
	
    case 4: // Wrastor
        codec_dialogue = [
            [AZU, 0, "The bird man has a cool|scarf."],
            [CIN, 3, "True. |You should trade yours|with his, Azu."],
            [AZU, 3, "No."],
            [CIN, 7, "Fine."],
            [CIN, 1, "So what's this guy's story,|BBot?"],
            [BOT, 0, "he's wrastor. air armada's|most skilled pilot"],
            [BOT, 0, "he uses the wind to |zip and zoom and |spin and be annoying"],
            [BOT, 3, "i don't like him."],	
            [AZU, 0, "...Huh.|Any reason why?"],
            [BOT, 0, "no"],	
            [AZU, 0, "...Fair enough."]
        ];
    break;
	
    case 5: // Kragg
        codec_dialogue = [
            [BOT, 0, "kragg"],
            [AZU, 0, "That's a huge beetle."],
            [CIN, 4, "It's a beetle?!      |I thought it was a |sentient boulder..."],
            [BOT, 0, "kragg"],
            [AZU, 0, "What's the deal with |Craig, BBot?"],
            [BOT, 0, "kragg         |                   | he protects the rock wall"],
            [BOT, 0, "he picks up boulders |with relative ease"],
            [BOT, 0, "makes chucking rocks |seem such a breeze"],
            [CIN, 1, "...I didn't know you |were a poet, BBot."],
            [AZU, 3, "He isn't."],
            [BOT, 0, "kragg"],
        ];
    break;
	
    case 6: // Forsburn
        codec_dialogue = [
            [AZU, 7, "*cough* *hack* Blah, this |guy is ALL smoke! Can't see |or breathe a thing..."],
            [BOT, 0, " | the forsburn"],
            [CIN, 1, "Burn... Hey, isn't that |lion from before also |named Somethingburn?"],
            [BOT, 0, "they are brothers.|he served the firelands |until their dad died"],
            [BOT, 0, "fors got framed and |fled to the smoke clan.|he learned to smoke there"],
            [AZU, 0, "...Dang.|Can't say I blame him for|disappearing."],
            [AZU, 6, "...Hope he and Zetter get|themselves sorted out,|though."],			
            [CIN, 2, "Yeah! Siblings are stronger|when they're together!|Right, Azu?"],
            [AZU, 8 , "...Something like that, yeah."],
        ];
    break;
	
    case 7: // Maypul
        codec_dialogue = [
            [AZU, 1, "Is that a ferret?"],
            [CIN, 3, "No way, that's a raccoon |tail."],
            [AZU, 0, "Which is it, BBot?"],
            [BOT, 0, "maypul"],
            [CIN, 3, "A 'maypull'? |Never heard of that |animal before..."],
            [BOT, 0, "she protects the aether |forest and has a cool plant |named lily"],
            [BOT, 0, "she's also fast and can |mark people to pull toward |them with a rope"],
            [AZU, 2, "..the name checks out."],
            [CIN, 4, "But is it a ferret |or a raccoon?!"],
            [BOT, 0, "yes."]
        ];
    break;
	
    case 8: // Absa
        codec_dialogue = [
            [AZU, 1, "It's looking like it wants |to rain..."],
            [CIN, 0, "There's no rain, though. |Just thunder. And a very |tough-looking goat lady."],
            [AZU, 0, "What info you got on |Absa, BBot?"],
            [BOT, 0, "she's from some mountains |           |           i think"],
			[BOT, 0, "she can make thunder |storms and clouds to attack |with lightning from afar"],
            [AZU, 8, "...Ah. So this isn't just an |average storm... |it's a death threat."],
            [CIN, 4, "Yoiks. Good thing you |have the Umbrella Mode, |huh?"],
            [AZU, 3, "I'm not sure how useful an |umbrella in a thunderstorm |with no rain is..."],
			[CIN, 1, "... |I mean... you can fight |the goat lady with it."],
			[AZU, 6, "...True that."]
			
        ];
    break;
	
    case 9: // Etalus
        codec_dialogue = [
            [BOT, 0, "big bear"],
            [CIN, 4, "Fluffy..."],
            [AZU, 6, "No, Cinna, we are not |going to pet the giant |armored polar bear."],
            [CIN, 7, "Phooey..."],
            [AZU, 1, "What's the lore on this guy?"],
            [BOT, 0, "something something |last harbor guard who was |fighting some black ice"],
            [AZU, 2, "This guy must hate iced |soda."],
            [BOT, 0, "he can fill the place with |ice and go         |zooo   ooooooom"],
            [CIN, 0, "Zoo-Oom?"],
            [BOT, 3, "the letters are blocking |my antenna |grrrr   rrr"],
            [AZU, 3, "What."],
        ];
    break;
	
    case 10: // Ori & Sein
        codec_dialogue = [
			[CIN, 3, "Aww, look at the little |white cat! |It's so cute!"],
			[AZU, 1, "Looks more like a rat |or something."],
			[CIN, 4, "No way, that face is |definitely a cat's...!"],
			[AZU, 8, "We are NOT having this |debate again."],	
			[CIN, 1, "What's that thing floating |around it? A fairy?"],
			[AZU, 0, "Looks like a ball of |light to me."],
			[BOT, 0, "that's ori |the ball is sein"],
			[BOT, 0, "they're from a forest |that is blind and dying |so they're fixing it"],
			[CIN, 3, "So they're heroes... |And best friends!"],
			[AZU, 1, "What's their deal in a fight?"],
			[BOT, 0, "ori jumps around a lot. |sein shoots light while |they do"],
			[BOT, 0, "ori is light and fast |and can launch themself off |your projectiles"],
			[CIN, 1, "So whatever you throw out |can become, like, a |springboard for them?"],
			[AZU, 6, "It's like the saying goes..."],
			[AZU, 2, "One man's projectile      |is another's trampoline."],
			[CIN, 3, "Wow... |Who said that?"],
			[AZU, 0, "Me.                  |I just made it up."]
			];
    break;
	
    case 11: // Ranno
        codec_dialogue = [
			[CIN, 0, "That frog's wearing pants."],
            [AZU, 6, "Good for him, I guess."],
            [BOT, 0, "ranno the pacifist monk    |he uses poison darts |to maintain world peace"],
            [AZU, 3, "... |A pacifist that uses poison?"],
            [BOT, 0, "and his legs |      and his tongue    |and                  the buble"],
            [CIN, 8, "NOOOO! |Not the bubble!"],
            [AZU, 7, "... |I was more concerned |about the tongue."]
        ];
    break;
	
    case 12: // Clairen
        codec_dialogue = [
            [AZU, 1, "That sword looks|really cool..."],
			[CIN, 1, "What do you think would|happen if you scanned it|with the Multi-Rod?"],
            [AZU, 0, "Well... It'd turn|into Plasma Sword Mode,        |I think."],
            [BOT, 0, "clairen|traveler of time from|a screwed-up fire nation"],
            [BOT, 0, "her sword is ouchie hot|and stuns you if it touches|at the tip       like bzzzap"],
            [BOT, 0, "she can also make a field|that blocks project tiles"],
			[CIN, 4, "That's cheating!|Why can't she just live with|a parry like the rest of us?"],
            [AZU, 6, "To be fair, she doesn't have|anything to throw out.|So she gets... SOME leeway."]
        ];
    break;
	
    case 13: // Sylvanos
        codec_dialogue = [
			[CIN, 8, "I don't like the way|that big wolf looks..."],
            [AZU, 1, "Not gonna lie,|it's giving me the|creeps too."],
            [BOT, 0, "sylvanos|aether forest's big bad |wolf guardian"],
            [BOT, 0, "he's mad at the fire army|for burning the forest|so he wants to grow it"],
            [BOT, 0, "and that's why the|       kragg     |          wall exists"],
            [CIN, 0, "Oh... that's a bit sad."],
            [CIN, 2, "Wait! Maybe he'd calm down |if we threw him a treat!|Like... a bone-shaped log!"],
            [AZU, 3, "...I think he'd just lob|it back at us with|double the force."]
        ];
    break;
	
    case 14: // Elliana
        codec_dialogue = [
            [CIN, 3, "A snake on a mech?!|That's so cool!"],
            [AZU, 8, "(... I always wanted to|pilot a mech...|I'm so jealous.)"],
            [CIN, 1, "...You okay, Azu?"],
            [AZU, 4, "!!       |Of course I am.|...BBot, gimme a refresher."],
            [BOT, 0, "elliana wanted to fly|with the air armada.|so she built the mech"],
            [BOT, 0, "but they still said no|because she was a snake"],
            [BOT, 0, "so now she'll prove them |wrong|               with explosives"],
            [CIN, 7, "This world is one screwed|up situation after the |other, isn't it?"],
            [AZU, 6, "...|        |I hope she gets her shot."],
            [BOT, 0, "snek"],
        ];
    break;
	
    case 15: // Shovel Knight
        codec_dialogue = [
            [AZU, 1, "He's here too..."],
            [BOT, 0, "the shovel|         |          is omnipresent"],
			[CIN, 3, "Shovel Knight does a lot of|things with that shovel, |huh?"],
			[CIN, 4, "Azu, let's scan his shovel|with our Multi-Rod!|We need a Shovel Mode ASAP!"],
            [AZU, 3, "First off, that'd be|stealing."],
            [AZU, 6, "Second, SK's shovel by itself|isn't doing much more than|what our Multi-Rods do."],
            [AZU, 2, "...Just take a look at all the|bajillion of other random|stuff he's pulling out."],
			[CIN, 7, "Fair..."],
			[CIN, 0, "Still, |there's one place|you can't find him in."],
            [BOT, 2, "where"],
			[CIN, 2, "...|Our own game, of course!"],
            [AZU, 8, "...Can't be in something that|doesn't exist.                      |*sob*"]
        ];
    break;

    case 16:
    case "1871989159": // Mollo + Workshollo
        codec_dialogue = [
            [AZU, 0, "Ah, this brings me back..."],
			[CIN, 1, "...? What's your history |with that guy, Azu?"],
            [AZU, 3, "Well...|None. Or at least none |in particular."],
            [AZU, 0, "It's just that me and|Mollo showed up around the|same time on the Workshop."],
            [AZU, 6, "We got into the same |tourneys... Even I started|using bombs for a while."],
			[CIN, 1, "Ooh... So it's like people who|study together for years,|but never talked once."],
            [BOT, 0, "you weren't in genesis 7|though"],
            [AZU, 4, "Shut up, BBot."]
        ];
    break;

    case 17:
    case "2136440419": // Hodan + Workshodan
        codec_dialogue = [
            [BOT, 0, "the monkey"],
			[CIN, 1, "Why's there smoke coming|out of Hodan, anyway?"],
            [AZU, 3, "Oh, that isn't smoke.|That's steam.|Steam from his body sweat."],
            [CIN, 8, "Ew! So that's why he keeps|that towel around his |neck..."],
            [BOT, 0, "he can make spirits out of |his sweat to power up his|attacks"],
            [BOT, 2, "he can also grab you|with his towel and--"],
            [AZU, 7, "A-Actually! I don't want to|know anything else. I'll...       |just fight him already."],
            [CIN, 8, "Don't let his spirits|drag you to stinky hell!         |*shudder*"]
        ];
    break;

    case 18: 
    case "1913517643": // Pomme + Workshomme
        codec_dialogue = [
            [CIN, 7, "Azuuu...|Can I ask you something?"],
            [AZU, 3, "...what."],
            [CIN, 4, "........                 |We NEED to go to|a Pomme concert."],
            [AZU, 3, "That's not a question, Cinna."],
            [BOT, 0, "pomme's from the same bad|future as clairen so. |might not be safe"],
            [CIN, 6, "Not a problem! |We can defend ourselves!"],
            [AZU, 6, "I am not fighting a|dystopian future's police|for that of all things."],
            [AZU, 3, "Plus, she already fights by|singing, so... this fight is|basically a concert anyway."],
            [BOT, 0, "she also floot"],
            [CIN, 3, "Oh! True... Then, um, |good luck!|To both of you!"],
        ];
    break;
	
    case 19: // Olympia
        codec_dialogue = [
            [CIN, 4, "Those crystal gauntlets are|so pretty..."],
            [AZU, 1, "She looks ready to deck|anyone that looks at her|funny."],
            [BOT, 0, "olympia.|martial artist from the|crystal oasis"],
            [BOT, 0, "patient fighter.|strong punches. shiny fists.|                        rodent"],
            [CIN, 1, "So she's kinda like... |A rough in the diamond."],
            [AZU, 3, "I think it's the other|way around, Cinna."],
            [CIN, 4, "Mm... whatever it is,|you probs shouldn't get|too close to her, Azu."],
            [AZU, 6, "...That's the plan."],
        ];
    break;
	
    case 20:
    case "1865940669": // Sandbert
        codec_dialogue = [
            [CIN, 1, "So... that's the famous |Sandbert? He looks so plain."],
            [AZU, 0, "Well... yeah. Though, without |him, a lot of Workshop |fighters wouldn't exist."],
            [BOT, 0, "correct.|he is the foundation of|workshop civilization"],
            [CIN, 3, "Oh! So he's like...|our Workshop grandpa?"],
            [AZU, 8, "...In an odd sort of way,      |yes."],
            [BOT, 0, "sandbert is filled with|sand. this allows him to|fight elemental fighters"],
            [CIN, 7, "...I don't get it."],
            [BOT, 0, "he knows your|darkest secret.       |but his lips are sealed."],
            [AZU, 3, "...Okay, now you're just|trying to make him sound|scary."],
            [BOT, 0, "you'll be scared when|you see his uspecial."]
        ];
    break;


    // The Super Blues
    case "2007375819": // BlueyBot
        codec_dialogue = [
			[AZU, 6, "Well, well.|Guess I'm up against |you now, BBot."],
			[CIN, 7, "Eh?! Did you guys|have a falling out?|I don't want you to fight..."],
			[BOT, 0, "no. this is merely an|exhibition match"],
			[AZU, 0, "Yeah, it's nothing serious.|Don't worry about it,|Cinna."],
			[CIN, 1, "Oh..."],
			[AZU, 2, "Anyways... I hope you got a|better plan than sending|your minions after me."],
			[BOT, 0, "why yes, I do in fact|have one"],
			[AZU, 1, "Oh?"],
			[MOZ, 0, "Hi, Papa Bot!|Hi, Cinna and Other Papa!|Is a party going on?!"],
			[BOT, 3, "no"],
			[AZU, 4, "NO."],
			[CIN, 6, "Yes!"]
        ];
    break;

    case "2014106219": // Cinna
        codec_dialogue = [
            [CIN, 4, "Omigosh. We're gonna|fight each other, Azu?!"],
            [AZU, 6, "Seems like it.|           |Unless you don't want to."],
            [CIN, 7, "O-of course I don't... |I'd never--"],
            [CIN, 4, "WAIT. You scamp, you're|trying to make me forfeit|the match, aren't you?!"],
            [AZU, 8, "......."], 	
            [CIN, 7, "...Wait. Why are we talking|in earpieces while we're|right next to each other?"],
            [AZU, 3, "...Beats me."],
			[BOT, 0, "i too am in this|codec conversation"]
        ];
    break;


	//My other WS characters
    case "3380391964":
    case "1932503649": // Troops (Legacy)
        codec_dialogue = [
			[TRO, 2, "Bluey?!|Oh wow, it really is you!"],
			[AZU, 6, "...Troops."],
			[CIN, 1, "'Bluey'? ...Waitwaitwait.|Why does a Koopa Troopa|know YOU, Azu?"],
			[TRO, 3, "(It's actually Koopa|PARAtroopa...)"],
			[AZU, 0, "Long story.|We've known each other|for a while."],
			[TRO, 1, "Heheh, yeah! We've gone|way back, me and Bluey."],
			[CIN, 4, "...Okay, now I need|that long story."],
			[BOT, 0, "i require|                the lore"],
			[AZU, 3, "You're not getting it|mid-match, you two."],
			[TRO, 0, "Aw. I think we can let|'em in on the lore.|Who are they, anyway?"],
			[AZU, 6, "My sister and robot friend|who happens to like to look|like me."],
			[AZU, 5, "But let's leave the intros|for later. Show me what|you've got, Troops."],
			[TRO, 4, "Ah... Right, right.|This is a fight after all.|Alright, here I come, Bluey!"]
        ];
    break;
	
    case "2089998666": // Big Yoshi
        codec_dialogue = [
            [AZU, 0, "..."],
            [CIN, 0, "...|      |...He's... sitting there."],
            [AZU, 0, "...He indeed|is just sitting there."],
            [BOT, 0, "big yoshi"],
            [AZU, 0, "...Honestly..."],
            [AZU, 8, "...I don't even want|to fight him. He seems so|chill to be around."],
            [BOT, 0, "you won't be saying that|when he chucks eggs at you"],
            [AZU, 4, "Fine."]
        ];
    break;

    case "2669553388":
    case "2160644191": // Old Man
        codec_dialogue = [
            [AZU, 0, "What a tiny old man.|What's it doing here?"],
            [CIN, 1, "Maybe he needs help|crossing the street..."],
            [AZU, 1, "What street?|We're in an elevated arena."],
            [CIN, 1, "Hmm..."],
            [CIN, 5, "Then maybe he's just|grumpy and hasn't had his|morning coffee."],
	        [AZU, 3, "I think there's better |places to look for coffee|than a battle arena..."]
        ];
    break;

    case "2310580951": // 64 Mario
        codec_dialogue = [
            [AZU, 1, "Huh... |that's Mario, isn't it?|He looks kinda off."],
            [CIN, 1, "Yeah, he looks all... blocky."],
			[TRO, 3, "And his eyes and mustache|look like stickers."],
            [BOT, 0, "that is indeed a mario. |specifically of the |sixty-four kind"],
            [AZU, 0, "...Sixty-four kind?"],
            [BOT, 0, "the nintendo"],
            [CIN, 0, "So he's not the actual |Mario?"],
            [BOT, 0, "yes but no"],
            [BOT, 0, "he don't got a fire flower |or tanooki suit"],
            [BOT, 0, "but he'll chase you around |with long jumps and dives |and quadruple jumps"],
			[TRO, 2, "Yikes. Good thing I'm|not in Bowser's army..."],
            [AZU, 3, "...I still don't get the |sixty-four part."],
            [BOT, 0, "the nintendo"]
        ];
    break;
	
    case "2489599400": // Tape
        codec_dialogue = [
            [CIN, 0, "So uh... Let me get|this straight."],
            [CIN, 1, "Is that--"],
            [AZU, 6, "Yes, Cinna,      |it's a sentient roll of tape."],
            [CIN, 7, "...Why do you say that like|it's a normal sight?"],
            [AZU, 3, "Well, it's not the only|sentient everyday object|I've run into around here."],
			[BOT, 0, "it's a big roll of tape|brought to life by a tiny|origami man to sic on mario"],
            [CIN, 4, "Mario??? As in|THE Mario?!"],
			[BOT, 0, "it rides its dispenser for |heavy attacks and can get |off it to move faster"],
            [AZU, 3, "Okay. So the roll of tape|has a stance change.           |Sure."],
			[BOT, 0, "also it's a mobster"],
            [AZU, 8, "...Yeah, that tracks."],
        ];
    break;

    case "2799785099": // Sir Kibble
        codec_dialogue = [
            [CIN, 1, "What's inside that armor...?"],
            [AZU, 0, "Pretty sure there isn't|anything in it."],
            [BOT, 0, "holy moly it's sir kibble"],
            [AZU, 0, "What."],
			[BOT, 1, "SIR KIBBLE THE GOAT |YEEEEAAHHHH #SirKibble|#TheChamp #GOAT #Based|#Peak #Kino"],
            [CIN, 1, "I didn't know BBot was|such a big fan of this|guy..."],
            [AZU, 3, "...This is just SB|speaking through him."],
			[BOT, 2, ".......       |.......          |......."],
			[BOT, 2, "uh            |where was i"],
			[BOT, 0, "oh right. uh          |he throws boomer rangs          |they cut and are hurt"],
            [AZU, 8, "Well, at least we got|SOME info out of|him..."],
        ];
    break;

    case "3123375474": // Miles Edgeworth
        codec_dialogue = [
            [AZU, 0, "Is that guy wearing a|cravat? That's so 17th|century."],
            [CIN, 4, "It looks good on him...|Maybe it'd look better on|you than the scarf, Azu!"],
            [AZU, 3, "No."],
            [BOT, 0, "miles edgeworth. famous |prosecutor. very smart and|fond of truth and logic"],
            [AZU, 6, "Wow. The lawyer man can |use deductive reasoning.|You don't see that often."],
            [CIN, 1, "You think he'd help if we |got in trouble with |the law?"],
            [AZU, 0, "Uh.           |No, he's not that|kind of lawyer, Cinna."],
        ];
    break;

    case "3380395299": // Ms. Game & Watch
        codec_dialogue = [
			[CIN, 1, "Whoa... that lady is paper|thin! Are you fighting a |living cutout, Azure?"],
			[AZU, 0, "She looks like she stepped |right out of a calculator|screen."],
			[BOT, 0, "ms. game & watch. |error: missing z-axis. |cannot calculate depth"],
			[BOT, 2, "does not appear to be|related to the more known|mr. game & watch"],
			[CIN, 3, "She's got a lot of tools, |though! Look, she has a|hammer like us!"],
			[AZU, 1, "And a hockey stick. And|a giant crab. ...Where is she|keeping all that?"],
			[CIN, 1, "Maybe she has her own|Multi-Rod?"],
			[AZU, 3, "...Definitely not."],
			[CIN, 0, "But Azu, if she's so flat,|then how are you seeing|her from the front?"],
			[AZU, 7, "...Good question."],
        ];
    break;
	
	
	//WS characters I contributed to but don't consider "mine"
	case "2839808881": // Kirby (Dream Collection)
			codec_dialogue = [
				[CIN, 3, "Omigosh!! Kirby!! |The actual Kirby! |He's so round and cute!"],
				[AZU, 1, "Whoa. The hero of |Dream Land himself? |Here?"],
				[BOT, 0, "scanning... |pink puffball confirmed. |threat level: infinite"],
				[AZU, 2, "You gotta respect him, |though. His Copy Abilities |are pretty impressive."],
				[AZU, 5, "They're kinda like our |Multi-Rod Modes, except he |does it all naturally."],
				[CIN, 1, "Wait. Doesn't he get|those powers by|eating people?"],
				[AZU, 0, "Yeah. Like how we scan |stuff to add them to our |Multi-Rod as Modes."],
				[CIN, 4, "Woah... We're like, Kirbies...|but human and boring|and uncute."],
				[BOT, 2, "or the multi-rod is a kirby"],
				[AZU, 1, "........"],
				[AZU, 4, "(That's genius.|Why didn't I think of that?)"],
			];
    break;
	
	case "3139883935": // Ms. Sandbert
        codec_dialogue = [
				[CIN, 1, "Is that... |Sandbert's wife?"],
				[AZU, 1, "I think so. Same, uh, |rectangular build."],
				[CIN, 3, "She has a little ribbon|and lipstick, though."],
				[BOT, 0, "ms. sandbert |real name: sandbetty"],
				[CIN, 1, "Would that make her...|the matriarch of Workshop?"],
				[AZU, 3, "I don't think so. She was|likely made from her husband|like the rest of us."],
				[CIN, 1, "Hmm. |So what's her deal? |Can she fight?"],
				[BOT, 0, "she eats cobblestone"],
				[AZU, 3, "What."],
				[BOT, 0, "she acquired mythical |artifacts while sandbert |fought for his life"],
				[BOT, 2, "they gave her|extreme power. |unspecified type"],
				[AZU, 3, "Consider my pants brown|for this information."],
				[BOT, 0, "she also knows various |things of interest"],
				[CIN, 4, "Like what?"],
				[BOT, 0, "your ip address."],
				[AZU, 0, "........."],
				[CIN, 0, "........."],
				[BOT, 3, "jokes on her though.|i have hers too          |it's 3139883935"],
				[AZU, 8, "Is doxing even a thing|for Workshop fighters...?"],
        ];
    break;	

	case "3513247320": // Mega Man (Spam)
        codec_dialogue = [
				[AZU, 1, "Huh... Never thought I'd|run into the Blue Bomber|ever in my life."],
				[CIN, 3, "He's a guy all in blue |who shoots stuff...   |Just like you, Azu!"],
				[BOT, 0, "correction. |he is a super fighting |robot."],
				[CIN, 2, "Oh! So he's a blue robot|who shoots stuff!|Just like YOU, BBot!"],
				[AZU, 6, "When you put |it like that..."],
				[BOT, 1, "scanning for plagiarism... |he has a buster. |i have hand repulsors."],
				[BOT, 3, "he stole my entire flow."],
				[AZU, 3, "BBot, he's been around |since the 80s. You were |built, like, a few years ago."],
				[BOT, 3, "i am initiating a |copyright lawsuit."],
				[CIN, 4, "You can't sue Mega Man!"],
				[BOT, 3, "watch me."]
        ];
    break;
	
    // --- GENERIC FALLBACK ---
    default:
        codec_dialogue = [
            [CIN, 4, "Woah, who's that?"],
            [BOT, 0, "it is none other than |" + get_char_info(codec_target.player, INFO_STR_NAME)],	
            [AZU, 3, "You say that like we're |supposed to know who |that is..."],
            [BOT, 0, "i also have their IP address           |it's " + string(codec_target.url)],
            [CIN, 7, "...I dunno how useful|that info is, BBot."],		
            [BOT, 2, "just read the |steam workshop page bro"],
            [AZU, 6, "...Whoever it is,  |I don't really care."],
            [AZU, 2, "Gotta fight 'em all the|same, anyway."],
            [CIN, 6, "...Yeah.  |Go get 'em, Azu!"],
        ];
    break;
}

codec_max_pages = array_length(codec_dialogue);
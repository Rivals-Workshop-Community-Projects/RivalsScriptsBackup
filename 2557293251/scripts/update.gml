image_alpha = 0;

if(exist_timer > 100)
{ 
	diag_timer ++; round_start ++; 
	if(diag_disable && total_players != 1)
	{
		total_players = 1;
		diag_fight = 2;
		with(oPlayer)
		{
			hitstop = 0;
			hitpause = false;
			set_state(PS_IDLE);
		}
	}
}
else
	exist_timer ++;

if(total_players == 0)
{
	with(oPlayer)
	{
        diag = ""; 
		diag_name = get_char_info(player, INFO_STR_NAME);
		diag_index=0;

		if(!clone && clones_player_id == 0 && !custom_clone)
		{
			otherUrl = 0;
			if(other.diag_player == 0)
				other.diag_player = player;

			other.total_players ++;
			
			other.seed += get_player_color(player)/24;
			other.seed += player/24;
			other.seed += x/24;
			other.seed += y/24;
			other.seed += char_height/24;
		}
	}
}
else if(exist_timer == 100)
{
	with(oPlayer)
	{
		if(!clone || clones_player_id == 0 || !custom_clone)
    	{
			if(clone && custom_clone)
			{ print_debug("Goodbye"); exit; }   
			
			//check out other people
			with(oPlayer)
			{   
				if(player != other.player)
				{
					other.otherUrl = url; //just so i can identify you.
					other.otherPlayer = player;
				}
			}		
			
			if(!variable_instance_exists(id,"diagchoice"))
			{
				switch(url)
				{
					#region Base Cast
					case CH_ZETTERBURN:
						if(diag = "" && url == CH_ZETTERBURN)
						{
							if(otherUrl == CH_FORSBURN)
								diag = "Brother! Know that this will hurt me more than it will hurt you...";
							else
							{
								diagchoice = [
								"This is for the fire nation!",
								"By the will of Renburn, your days are numbered!",
								"You will feel the flame!"];
							}
						}
					case CH_ORCANE:
						if(diag = "" && url == CH_ORCANE)
						{
							diagchoice = [
							"(Orcane has a sneaky expression on his face)",
							"(Orcane is determined)",
							"(Orcane is thinking about water)"];
						}
					case CH_WRASTOR:
						if(diag = "" && url == CH_WRASTOR)
						{
							if(otherUrl == CH_ELLIANA)
								diagchoice = ["I’m sorry but we’re not taking applications from you anymore. Scram!"];
							else
								diagchoice = [
								"This is beneath the Air Armada, but i do love to scrap!",
								"Fight or flight? I choose both!",
								"Personally, I prefer the air"];
						}
					case CH_KRAGG:
						if(diag = "" && url == CH_KRAGG)
						{
							diagchoice = [
							"I must protect the wall!",
							"My fists can break boulders!",
							"My rock-bound mind can barely comprehend what I’m seeing."];
						}
					case CH_FORSBURN:
						if(diag = "" && url == CH_FORSBURN)
						{
							if(otherUrl == CH_ZETTERBURN)
								diag = "Always noble, always naive. Pity you will be defeated.";
							if(otherUrl == CH_CLAIREN)
								diag = "Claiyen? What are you doing here?!?";
							else
								diagchoice = [
								"Where there is smoke. There is fire!",
								"You will feel my blade before you see it!",
								"I wear this mask for a greater purpose!"];
						}
					case CH_MAYPUL:
						if(diag = "" && url == CH_MAYPUL)
						{
							diagchoice = [
							"Villain! Beware my might!",
							"The forest warned me of intruders!",
							"Just like the stories grandmother used to tell..."];
						}
					case CH_ABSA:
						if(diag = "" && url == CH_ABSA)
						{
							diagchoice = [
							"Finally my skills come to use!",
							"Aether comes to war...I will not back down!",
							"Are you prepared to face my storms?"];
						}
					case CH_ETALUS:
						if(diag = "" && url == CH_ETALUS)
						{
							diagchoice = [
							"For the honor of the Harbor Guard!",
							"I must be ready for any threat!",
							"You are no match for my ice!"];
						}
					case CH_ORI:
						if(diag = "" && url == CH_ORI)
							diagchoice = ["..."];
					case CH_RANNO:
						if(diag = "" && url == CH_RANNO)
						{
							diagchoice = [
							"I will show you what peace feels like!",
							"With the power of pacifism, I will bring you to surrender!",
							"Let me enlighten you with my poisonous needles!"];
						}
					case CH_CLAIREN:
						if(diag = "" && url == CH_CLAIREN)
						{
							if(otherUrl == CH_FORSBURN)
								diagchoice = ["G-Grandfather?"];
							else
								diagchoice = [
								"The past....I have to stop him here...",
								"Don’t get in my way!",
								"I do this for all of aether. I have to win..."];
						}
					case CH_SYLVANOS:
						if(diag = "" && url == CH_SYLVANOS)
						{
							diagchoice = [
							"(Sylvanos lets loose a raging growl)",
							"(Sylvanos stares right past you, as if to mock you)",
							"(Sylvanos feels no regret for what he is about to do)"];
						}
					case CH_ELLIANA:
						if(diag = "" && url == CH_ELLIANA)
						{
							if(otherUrl == CH_WRASTOR)
								diagchoice = ["I’ll destroy you all one by one if I have to! I’ll show you who can’t fly!!!"];
							else
								diagchoice = [
								"They told me i’d never fly! I’ll show them!",
								"Don’t take it personally when I blow you up!",
								"I know you’re air armada! You can’t run from me! HEY! Look at me!"];
						}
					case CH_SHOVEL_KNIGHT:
						if(diag = "" && url == CH_SHOVEL_KNIGHT)
							diagchoice = ["..."];
						diag_index = url-1;
						break;
					#endregion
					#region Custom Compat
					case "2235244825": //Ducky
						if(diag = "")
						{
							diagchoice = [
							"I don’t even think I’ll need to get burning for this one.",
							"It’s ya girl, Ducky, back at it again to put you back in place!",
							"(Remember bob and weave. Keep your opponent guessing!...) ALRIGHT LETS GO!!"];
							if(otherUrl == url && player != other.diag_player) //if facing yourself.
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Who's this cutie walking by.",
								"Don't call me that, you're wearing a skirt too low for my liking.",
								"And I thought I would love my clones."];
							}
							else if(otherUrl == "2534202008") //if facing Kinunosu
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"You wouldn’t dare wrap me in your web, would you?",
								"Don’t worry I have other plans for your carcass.",
								"I think we're going a bit fast..."]
							}
							else if(otherUrl == "1869652357") //if facing Ash
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Thought I’d never see another boxer in the ring here in Aether.",
								"Well why don’t you ring the bell and let’s see who’s the best one!",
								"Ding. Ding."]
							}
						}
						break;
					case "2365597658": //Kyort
						if(diag = "")
						{
							diagchoice = [
							"Stay out of the fire, it's a high level technique.",
							"Come on, you can't be all talk. Come show me what you've got!",
							"There's no words to be said. Let's begin."];
							if(otherUrl == url) //if facing yourself.
							{
								if(player != other.diag_player)
									diagchoice = ["Your flame isn't as bright as mine, you got the technique wrong, you're all show aren't ya!"];
								else
									diagchoice = ["Pfft. Think you're hot stuff? Come on then, let's get keep up the heat."];
							}
							else if(otherUrl == "2235244825") //if facing Kyort
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Don't you ever get tired of fighting each other all the time.",
								"You're just scared, you're gonna get burnt!",
								"Atleast I don't have to use water to get an advantage."];
							}
						}
						break;
					case "2534202008": //Kinunosu
						if(diag = "")
						{
							diagchoice = [
							"Get out of the way, I'm trying to get to someone.",
							"You're wasting my time, I need to be somewhere.",
							"I don't have the time for this. Let's wrap this up."];
							if(otherUrl == url) //if facing yourself.
							{
								if(player != other.diag_player)
									diagchoice = ["You look a bit tired, think you should know how I feel about this by now."];
								else
									diagchoice = ["(Yawn) You're not helping a single bit, if you're like me, you know we can't stop what's bound to happen."];
							}
						}
						break;
					case "2497580275": //Carcossant
						if(diag = "")
						{
							diagchoice = [
							"You will be devoured. You will be one with us.",
							"We do what must be done, for our king in yellow.",
							"You will make an excellent tribute!!!"];

							if(otherUrl == "2453146011") //if facing Monarch
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"You seem like a strong one, care for a duel?",
								"One? We are many.",
								"Is that so? I’ll keep a tally then."]
							}
							if(otherUrl == "1871989159") //if facing Mollo
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"You’re a puppet.",
								"We are his will made manifest!",
								"Oppressive tyrants? Self Proclaimed gods? Whats the difference."]
							}
						}
						break;
					case "2396911824": //Cubitt
						if(diag = "")
						{
							diagchoice = [
							"You wouldn’t happen to know any dark wizards that stole a calzone recently, would you?",
							"I have a shotgun, and I’m NOT afraid to use it.",
							"I’m all squared up!"];

							if(otherUrl == url && other.diag_player != player) //if facing self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Square with a gun dittos?",
								"Square with a gun dittos.",
								"Alright. May the best Cubitt win!"]
							}
							if(otherUrl == "2500257863") //if facing Darc
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"That’s not my card.",
								"WHAT?! Impossible! I am a deity of probability! Such odds are bent to my will!",
								" Enough with the card tricks, bozo. Why don’t we raise the stakes?"]
							}
						}
						break;
					case "2483804967": //Cubitt w/ Teeth
						if(diag = "")
						{
							diagchoice = [
							"prepare to get anal blasted bitch",
							"penis",
							"man & girl go out to drive under moonlight. they stop at on at a side of road. he turn to his girl and say: baby, i love you very much. what is it honey? our car is broken down. i think the engine is broken, ill walk and get some more fuel. ok. ill stay here and look after our stereo. there have been news report of steres being stolen. good idea. keep the doors locked no matter what. i love you sweaty so the guy left to get full for the car. after two hours the girl say 'where is my baby, he was supposed to be back by now'. then the girl here a scratching sound and a voice say 'LET ME IN' the girl doesn't do it and then after a while she goes to sleep. the next morning she wakes up and finds her boyfriend still not there. she gets out to check and man door hand hook car door."];

							if(otherUrl == url && other.diag_player != player) //if facing self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Square with a gun dittos?",
								"Square with a gun dittos.",
								"Alright. May the best Cubitt win!"]
							}
							if(otherUrl == "1890617624") //if facing Donald
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"come at me bicth",
								"[Something in Japanese that sounds faintly like something Dio would say]",
								"no fuk u"]
							}
						}
						break;
					case "2500257863": //DarcSharc
						if(diag = "")
						{
							diagchoice = [
							"Wanna make a deal?",
							"It’s all in the heart of the cards!",
							"HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA"];

							if(otherUrl == url && other.diag_player != player) //if facing self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Well this is awkward.",
								"Not really? The probability of this event having happened is more likely than you think.",
								"Y’know what else has a high probability? My chances of sending you back to the alternate dimension you came from, you false-finned fake."]
							}
							if(otherUrl == "2552501300") //if facing Gay Fridge
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Hm.. what a strange anomaly you are.",
								"Pot to kettle, poker puppet.",
								"The chances of a fridge gaining sapience are roughly 1 in 10^5836. The same goes for your chances of winning this bout."]
							}
						}
						break;
					case "2552501300": //GayFridge
						if(diag = "")
						{
							diagchoice = [
							"Don’t mess with me! I have the power of gay rights on my side!",
							"I hope this is just a friendly spar, and not you being homohpobic or something...",
							"Fighting me makes you homophobic :troll:"];

							if(otherUrl == url && other.diag_player != player) //if facing self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"YOOOOOOOOOO!!! The second Gay Fridge?!",
								"If we can find a few more of us, we can start a pride parade!",
								"Who’s gonna lead it though…?"]
							}
							if(otherUrl == "2396911824") //if facing Cubitt
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"You’re a cold-hearted cube, y’know that?",
								"Bro, you are literally a fridge. Cold is your middle name.",
								"For the last time - my pronouns are they/them. Call me a “bro” again, and I’ll bring you to absolute zero."]
							}
							if(otherUrl == "2535181272") //if facing Jordan
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Filipino Food.",
								"Yes, I have it! You’ve literally only said “filipino food” for the past 5 hours.",
								"Filipino Food."]
							}
						}
						break;
					case "2273636433": //Dr Melee Mario
						if(diag = "")
						{
							diagchoice = [
							"I am Dr. Mario and I am saving lives",
							"Turn around and cough or else my cape will do it for you!",
							"Ok, but do you have a Ph.D"];

							if(otherUrl == url)
							{
								if(other.diag_player != player)
									diag = "I'm a Doctor Mario!";
								else
									diag = "And we're taking lives!";
							}
							if(otherUrl == "1870768156")
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"*Italian gibberish*",
								"I see you haven’t gotten your Ph.D yet.",
								"*even more Italian gibberish*"]
							}
							if(otherUrl == "2081164436") //Doc Robot
							{
								diag = "You call yourself a Doctor yet you don’t have any qualifications.";
								
								with(oPlayer)
								{ if(player != other.player)
										diag = "But shoving down pills someone's throat does?"; }
							}
						}
						break;
					case "2201608216": //Blake
						if(diag = "")
						{
							diagchoice = [
							"Yo check this shit out I laced this can of beans with enough phosphate to make it a military grenade.",
							"If I have to pick up another piece of trash, I'm going to lose it.",
							];
						}
						break;
					case "1877715009": //Hikaru
						if(diag = "")
						{
							diagchoice = [
							"Hoiiiiiiii",
							"Can't we talk it out instead? TwT",
							"Hehe look! I'm you, but stronger!"];

							if(otherUrl == url) //self
							{
								if(player != other.diag_player)
									diag = "Hey, my clones can't move on their own!"
								else
									diag = "Hey, my clones can't talk!";
							}

							if(otherUrl == "2302675649") //Vs. Lonin
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Hoiii! You're in Aether too huh?",
								"I followed you here to protect you.",
								"Wha? I don't need protection, but thanks!"]
							}
						}
						break;
					case "2302675649": //Lonin
						if(diag = "")
						{
							diagchoice = [
							"...",
							"Don't touch my hair. I'll slice you.",
							"You are not the Dragon. I am."];

							if(otherUrl == url && player != other.diag_player) //self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Hmm…",
								"There can only be one Dragon.",
								"My thoughts exactly."]
							}

							if(otherUrl == "2397086842") //Vs. Bat
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Blueberry Bout is mine.",
								"Don't lecture me with your 30 dollar haircut~",
								"Then perish."]
							}
						}
						break;
					case "2469588541": //Lukastar
						if(diag = "")
						{
							diagchoice = [
							"Can we pretend that airplanes in the night sky are like shooting stars?",
							"Blip blip! Your stock is gone!",
							"*Gamecube controller sounds*"];

							if(otherUrl == url) //self
							{
								if(player != other.diag_player)
									diag = "No items, Fox only, Final Destination."
								else
									diag = "You got it wrong! It's No Items, Lukastar only, Xue Hua mountains!";
							}
							if(otherUrl == "2540199978") //Vs. Flake
							{
								diag = "Hey Flakie! How have you been! <3"
								with(oPlayer){if(player!=other.player) diag="Don't call me that.";}
							}
						}
						break;
					case "2540199978": //Flake
						if(diag = "")
						{
							diagchoice = [
							"Snowflakes falling and the north wind howling...",
							"The Heaven and the Earth are white with snow...",
							"One branch of plum stands proudly in the snow."];

							if(otherUrl == url) //self
								diag = "I see."
						}
						break;
					case "2396961482": //Anglara Old
						if(diag = "")
						{
							diagchoice = [
							"Lantern light guide me!",
							"If I dont find the pearl, I’m fish food!",
							"Time for a little Lantern-fu!"];
						}
						break;
					case "2546990424": // Maverick
						if(diag = "")
						{
							diagchoice = [
							"I’m here to bring the monkey business!",
							"Air Armada wants you taken in!",
							"I feel the need. The need for speed!"];

							if(otherUrl == "2195482758" || otherUrl == "2136440419") //if facing Monkey (Tenru // Hodan)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"OOOHH HOOOAAAAAH HAAA OOOH",
								"AAAAANNGG HOOOO AAANNHHHH HOO HOOO HA",
								"Well said."]
							}
						}
						break;
					case "2404624900": // Ryu Hayabusa
						if(diag = "")
						{
							diagchoice = [
							"I will get my revenge!",
							"The ninja way knows neither good nor evil.",
							"I don’t care."];

							if(otherUrl == url) //Facing Self (NRS)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Even here I meet you, Doppelganger Fiend.",
								"It seems one of us is on the Master Difficulty then.",
								"Better make those Essence Charges count!"]
							}

							if(otherUrl == "2304280005") //Facing Chris (NRS)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"A strange creature that shares my surname?",
								"Small multiverse, isn’t it?",
								"Let’s see if you’re worthy of the Hayabusa name!"]
							}

							if(otherUrl == "1913869515") //Facing Zetta (NRS)
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"I’ve seen you got your resprite now, Dragon Ninja.",
								"All thanks to countless days of training, care for a rematch?",
								"It’s showtime!"]
							}
						}
						break;
					case "2468725612": // Buffy
						if(diag = "")
						{
							diagchoice = [
							"Dead or alive, you're coming with me!",
							"You’ll be... terminated!",
							"You are an enemy of the Loxodont’s Empire, prepare for trouble."];

							if(otherUrl == url && player != other.diag_player) //Facing Self (NRS)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"I see, yet another hologram has become self aware.",
								"I am the original, you are a mere copy.",
								"Let’s test your combat training then."]
							}

							if(otherUrl == CH_CLAIREN) //Facing Self (NRS)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Little girl, my orders are to take you back to your time.",
								"Over my dead body!",
								"Then so be it!"]
							}

							if(otherUrl == "2404624900") //Facing Ryu (NRS)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"I am looking for the Dark Dragon Blade, where is it?",
								"In a place a fiend like you may never enter",
								"Time to burn the Hayabusa Village one more time then."]
							}
						}
						break;
						
					case "2391875424": // Cardinal
						if(diag = "")
						{
							diagchoice = [
							"Don’t think I came unprepared.",
							"Flames ablaze, let's party.",
							"I’ve got a burning passion to kick someone's ass today."];

							if(otherUrl == url && player != other.diag_player) //if facing Self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Someone’s got a clone machine around here.",
								"You’re mother lmao.",
								"Your*"]
							}

							if(otherUrl == "1916050290") //if facing Robloxian
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Oof",
								"Oof",
								"I agree."]
							}
							if(otherUrl == "2391877533") //if facing Banana
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Time to consume this delicious banana.",
								"This is the 516th time you’ve made that joke lmao.",
								"Explain to me why you’ve been counting them?"]
							}
							if(otherUrl == "2391884007") //if facing Saphrey
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Waddya got there?",
								"A KNIFE!",
								"NO!!!"]
							}
							if(otherUrl == "2235244825") //if facing Ducky
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Did the duck walk up to the wrong lemonade stand?",
								"I'm not here to ask for grapes.",
								"I’ll take that as a yes."]
							}
						}
						break;
					case "2304280005": //Chris Hayabusa
						if(diag = "")
						{
							diagchoice = [
							"Gotta hold things down until that Yugo guy comes back.",
							"The answer lies in the heart of the moon...or something like that.",
							"I’ll show you what real martial arts can do with platforms."];

							if(otherUrl == url && player != other.diag_player) //if facing Self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Was wondering when I’d get a mirror match.",
								"What, got no questions about why I’m here?",
								"No need to learn about someone who’s about to lose."]
							}
							if(otherUrl == CH_ZETTERBURN) //if facing Zetter
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"There’s room for only one fiery protagonist around here.",
								"And you think that’s you?",
								"Sure as hell isn’t you, village burner."]
							}
							if(otherUrl == CH_CLAIREN)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"You up for some sparring? I wanna see how that plasma sword works.",
								"I accept your challenge. But I can’t promise your safety.",
								"Aww, don’t worry about little ol’ me."]
							}
							if(otherUrl == CH_RANNO)
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"I may be a pacifist. But something in me wants to test your skills.",
								"Is using poison really a pacifist thing to do?",
								"Hey, it’s non-lethal! Worry about yourself first!"]
							}
							if(otherUrl == CH_ABSA)
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Fire vs. lightning. I wonder which one’s better?",
								"I’d suggest not trying to cause an explosion.",
								"No promises."]
							}
							if(otherUrl == "1943759600") //if facing Olympia
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Let’s settle this once and for all, Hayabusa!",
								"Somebody’s an eager one today. Though I’m one to talk.",
								"Less talk, more action!"]
							}
							if(otherUrl == "1869652357") //if facing Ash
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Not often I get to face a boxer.",
								"First time you’re facing one that’s world class?",
								"Bust out a Dempsey Roll and then I’ll agree with you."]
							}
							if(otherUrl == "2365597658") //if facing Kyort
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Now don’t you seem familiar.",
								"Didn’t know I was so good that I have copycats.",
								"Been at this a whole lot longer than you, kiddo."]
							}
							if(otherUrl == "2149361463") //if facing Ryu
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"A wolf martial artist? You wouldn’t happen to know a Talbain by chance?",
								"Talbain? Never heard of him. But he sounds like a swell guy.",
								"Test yourself against me first before you face him!"]
							}
							if(otherUrl == "1913517643") //if facing Pomme
							{
								other.diag_nrs_p1 = otherPlayer;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Hey, you’re going to help me go shopping again for my next album party.",
								"Huh? What the hell is there left to buy?!",
								"I have connections you can only dream of, darling."]
							}
							if(otherUrl == "2069283406" && player != other.diag_player) //if facing Alex
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Well...things just got interesting.",
								"No shame in stepping down from me.",
								"Not my style. I don’t fight just to buckle under pressure!"]
							}
						}
						break;
						
					case "2069283406": //Alex Ashikaga
						if(diag = "")
						{
							diagchoice = [
							"You will be amazed by my footwork!",
							"Voidfox techniques? Nah not gonna use those.",
							"So you want one more ? Oh, It's on!"];

							if(otherUrl == "2304280005" && player != other.diag_player) //if facing Chris
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Sooooooo ? Dragon eh?",
								"The beast I styled toward? Yes! What about yours?",
								"I'm just the whole force of nature, baby!"]
							}
							if(otherUrl == "1943759600") //if facing Olympia
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Very sturdy, but too much weight.",
								"Oh ? Then try to move me.",
								"No need to invite me !"]
							}
							if(otherUrl == "2235244825") //if facing Ducky
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"You sure we are in the right game genre?",
								"Right... Where are all the meters?",
								"Hey! One 4th wall break at a time! It's the rule!"]
							}
							if(otherUrl == "2157918622") //if facing Cupcake
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"IT’S LEGS DAY DUDE!!",
								"Cool! What are we gonna do bro?",
								"WE KICK EACH OTHER!"]
							}
							if(otherUrl == "2005036466" || otherUrl == "2160036641") //if facing Penny
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Cool metal arm.",
								"Wanna let your face feel it?",
								"Who am I to not return such favour!"]
							}
							if(otherUrl == "2471439958") //if facing Jaunted
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Ooooo..",
								"Are you not scared?",
								"I can beat souls around. So nah, let's go."]
							}
						}
						break;
					case "2520247938": //Mario Head
						if(diag = "")
						{
							diagchoice = [
							"Hoho! I always wanted to type!",
							"Get ready to move your fingers.",
							"Guess what time it is!"];

							with(oPlayer)
							{
								if(player != other.player)
									other.otherName = get_char_info(player,INFO_STR_NAME);
							}

							if(otherUrl == "2552501300") //if facing Gay Fridge
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Say, I’mma hungry. Have you got any food?",
								"...Yes?",
								"C a n   I   h a v e   i t ?"]
							}
							if(otherUrl == "2553802622" && player != other.diag_player) //if facing Elrios
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Oho, hello!",
								"Dude, I could be gaming.",
								"It’s a time to move your penis."]
							}   
							if(otherUrl == "2325366840") //if facing Morshu
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"So, we meet once more, Morshu.",
								"YouTube Poop God meets YouTube Poop God. Our battle will be legendary.",
								"Time to see once and for all who is the better source."]
							}   
							if(otherUrl == "2085832560") //if facing Katie
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Featuring Dante from the Devil May Cry series.",
								"Hmph.",
								"...and that is my impression of American advertising! Thank you very much! Thank you!"];
							}   
							if(otherUrl == CH_ORCANE) //if facing Orcane
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Hmm. Mario’s Wet World Challenge!",
								"(Orcane looks distressed seeing a floating head)",
								"Start typing… NOW!"];
							}       
							if(otherName == "Luigi") //if facing Luigi
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Have you seen Luigi? Hmm…",
								"...you mean me?",
								"Ey Luigi! It’s a time for you to die!"]
							}   
						}
						break;
					case "2553802622": //Elrios
						if(diag = "")
						{
							diagchoice = [
							"You know, I’m still trying to get back to my world, but I got some time to kill, might as well make you wish I WAS back home.",
							"I’ll make sure you feel mother nature’s full elemental force. Steel yourself!",
							"You know, back home I had to protect ancient ruins from people like you. Finally going on the offensive is a nice change of pace."];

							if(otherUrl == url  && player != other.diag_player) //if facing Elrios
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Who?... Is this a side effect from the void in the ruins?",
								"You’re me but... there can only be one!",
								"Glad we can both agree on something."]
							}   
							if(otherUrl == "2552501300") //if facing Gay Fridge
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Is it politically correct to beat the shit out of you?",
								"....",
								"Didn’t think so, good talk."]
							}
							if(otherUrl == "2535181272") //if facing Jordan
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Buppy time?",
								"Buppy time.",
								"BUPPYYYYYYY!"]
							}   
							if(otherUrl == "2396911824") //if facing Cubitt
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"A… Square?",
								"THE FUCK YOU SAY TO ME YA LITTLE SHIT?",
								"U-Uh! I didn’t think I would be up against a shape today!"]
							}   
							if(otherUrl == "2396961482") //if facing Anglara
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Feesh",
								"Feesh",
								"Feesh"]
							} 
							if(otherUrl == "2217843818") //if facing Crewmate
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Bro, I swear, I didn’t do anything, I was in Navigation.",
								"Bull, I saw you go to Electrical, you kinda sus rn.",
								"BRO PLEASE, YOU GOTTA BELIEVE ME, I DIDN’T KILL ANYONE!"]
							}   
							if(otherUrl == "2520247938" && player != other.diag_player) //if facing Mario Head
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"YOOOOO, IT’S THAT ONE FUCKING GUY, MARTO!",
								"What if Mario was a middle-aged white man from California who worked a consistent job at McDonalds getting paid minimum wage all while his wife attempted to get a divorce and take the kids leaving Mario alone. He then becomes an alcoholic and can barely pay rent so he moves into the slums where he gets into drugs and starts to lose his sanity. He eventually sees his wife has remarried to a rich lawyer who beats her cheeks every night. So Mario then commits first degree murder and goes to prison.",
								"Classic."];
							}  
						}
						break;
					case "2504123533": // Viselle
						if(diag = "")
						{
							diagchoice = [
							"Careful with the goods honey, looks like these aren't alchemized anywhere.",
							"My, my, aren't you something... Care to become my labrat?",
							"~OHOHOHOHOHOHO!~"];

							if(otherUrl == "2504902865") //if facing Beryl
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"A walking coral paladin? Can't say you see one of those every day in the Deep.",
								"... ...?",
								"Don't squirm, critter, I'll just take you to my lab for some... experiments."]
							}

							if(otherUrl == "2503681586") //if facing Kash
							{
								with(oPlayer)
								{
									if(player != other.player) diag = "Ayo skank, mind scooching the hell offa my face? ";
								}
								diag = "Oh my, ~language~! Hmm... I ~have~ been needing a new broom tip...";
							}

							if(otherUrl == "2396961482") //if facing Anglara
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Ooh, I ~must~ analyze that lantern of yours. You don't mind, do you?",
								"Hey back off, I don't want any trouble!",
								"Oh you've forced my tentacle, fishy."]
							}
							
							if(otherUrl == "2038089992") //if facing Panzer
							{
								with(oPlayer)
									if(player != other.player) diag = ":panzerJudge:";

								diag = "Eagh... You dare betray the Deep with that flimsy fish tank of yours?";
							}
						}
						break;
					case "2396817161": //Klockwurth
						if(diag = "")
						{
							diagchoice = [
							"You’re talking pretty crazy for someone in shotgun range…",
							"Any strategy to capture me is a bad plan.",
							"Take a look at me… and tell me… do you think I like living like this?"];
						}
						break;
					case "2217843818": //Crewmate
						if(diag = "")
						{
							diagchoice = [
							"This isn't part of the extraction plan.",
							"You're causing suspiscion to all of us.",
							"We're not suited to exterminate alien creatures, but it's not like I have a choice.",
							"I've told you already, I'm not the impostor!",
							"Can you stop following me, and focus on the mission!",
							"I've made it this far, I'm not gonna let these beings keep mining resources from our planet."];

							if(otherUrl == url && player != other.diag_player) // If facing self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"There is an impostor among us. Come with me.",
								"You're not thinking it's me, are you?",
								"I'll have to scan you in the Medical Bay, to make sure."];
							}
							var stage_data = "";
							stage_data = string_copy(string(get_stage_data(SD_ID)), string_length(string(get_stage_data(SD_ID)))-9, 10);

							if(stage_data == "2222112290") // Polus
								diag = "Finally reached Polus.. But there's a mysterious creature in front of me.";
							if(stage_data == "2465962769") // Sustuary
								diag = "(What a mysterious place, is this supposed to be a worship place of their God?)";
						}
						break;
					case "2396053263": //Heartbrake
						if(diag = "")
						{
							diagchoice = [
							"Love is a horrid concept. I seek to destroy that which is called love.",
							"What would you know, about love?",
							"Whatever you thought love was, begone with it."
							"I'll show you the power of being loveless."];
						}
					break;
					case "2229887722": //Amber
						if(diag = "")
						{
							diagchoice = [
							"We don't have to fight! We can hug it out!",
							"Could you help me get back to my dojo?",
							"Can we talk this out!? I really don't want to do this!"];
						}
					break;
					case "2260948101": //Apple
						if(diag = "")
						{
							diagchoice = [
							"Hehe, I suppose I could use a little sparring practice! Don't hold back, okay?",
							"Whoa, you look cool!! Would you mind if I journaled you for analysis later?",
							"This one's for Mochi and Basil, prepare yourself!"];

							if(otherUrl == url  && player != other.diag_player) //if facing self
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"W-Wait, you're...",
								"The shadow of Basilisk.",
								"Stay back--or I'll end you myself!"]
							}   
							if(otherUrl == "2267598408") //if facing Cantaloupe
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Whoa!! A jester infused with the void flame, how fascinating!",
								"Don't come any closer, white fox.",
								"Can I check out your void tendrils? They look sooooo cool!"]
							} 
							if(otherUrl == "2235244825") //if facing Ducky
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Whoa!! A blazing shotokan duck, how fascinating!",
								"A shoto what? You know I don't carry motion inputs right?",
								"Can you really do one of those cool uppercuts from the arcade games, can I see!?"]
							}   
							if(otherUrl == "2534202008") //if facing Kinunosu
							{
								other.diag_nrs_p1 = player;
								other.diag_nrs = true;
								other.diag_nrs_diag = [
								"Whoa!! A web slinging brown recluse, how fascinating!",
								"Get out of the way, or else I'll wrap you in place.",
								"It feels like your webs are reinforced like steel! Can I take a sample for study?"]
							}      
						}
					break;
					case "2267598408": //Cantaloupe
						if(diag = "")
						{
							diagchoice = [
							"Come. Give yourself to the void.",
							"Another soul for you, my Zreniye.",
							"My troupe will be pleased with this performance."];
						}
						if(otherUrl == url  && player != other.diag_player) //if facing self
						{
							other.diag_nrs_p1 = player;
							other.diag_nrs = true;
							other.diag_nrs_diag = [
							"A vision of void comes before me.",
							"A theatre à deux, shall we dance?",
							"Gladly, until we turn null."]
						}   
					break;
					#endregion
				}
			
				if(!variable_instance_exists(id,"diagchoice")) //if empty just say something!
					diagchoice = [
					"This is the end for you!",
					"Sorry Master, but this time I'll have to go all out just this once!",
					"If you run away now, then I'll spare you and you won't have to see 1% of my true power.",
					"This is serious business, kid. Get out of here.",
					"What do you mean my girlfriend is in another castle?",
					"You must be strong, let's fight!",
					"This will be your grave.",
					"I'm going to be the strongest in the universe!",
					"I'll have you know I graduated top of my class in the Air Armada, and I've been involved in numerous secret raids.",
					"If you're done talking, let's get this over with.",
					"You're not going anywhere.",
					"Stop right there, I have to ask you something!",
					"Would you please sign my petition?",
					"I'd like to see you try.",
					"I hope your fists can back up that much talk.",
					"You don't seem that tough, do you need help at the gym?",
					"Hey buddy, you know the leather club is two blocks down.",
					"The answer lies.. in the heart of battle!",
					"I am adapt incarnate!",
					"So false, Worstie.",
					"You know they say all men are created EQUAL. But you look at me, and that statement is not true!",
					"Let's make this a good fight!",
					"You think you can beat me? Well, maybe you can, but not today! I think.",
					"Wait, I am not supposed to be here.",
					"Do you have time to talk about our lord and saviour, Dan Fornace?"];
			}
		}
			if (diag == "")
				diag = diagchoice[random_func( floor((other.seed) + get_player_color(player)) % 24, array_length(diagchoice),true)];
	}
	announce_pick = random_func(floor(seed) % 24, array_length(announce), true);
	announcesfx = announce[announce_pick];
}

if(total_players != 2)
{diag_state = 2; diag_fight = 2;}

if(diag_fight < 2)
    suppress_stage_music(0, 0.1);

if(diag_state == 0)
{
	if(diag_nrs && diag_nrs_state != 2)
	{ if(exist_timer > 100) diag_nrs_timer++; diag_nrs_add = 3}
	if(diag_nrs_timer > 60*3)
	{ diag_nrs_state ++; diag_nrs_timer = 0; sound_play(asset_get("mfx_chat_received"));}
	if(diag_timer == floor(60*(5+diag_nrs_add)))
		{diag_fight = 1;  if(!diag_disable_announce)sound_play(announcesfx); else sound_play(sound_get("empty_intro"))}
	if(diag_timer > 60*(5+diag_nrs_add)) //maxtimer
	{ diag_timer = 0; diag_state ++;}
}

with(oPlayer) 
{
	if(other.round_start < 4 && other.diag_state == 0)
	{ hitpause = true; hitstop = 60*(6.5+other.diag_nrs_add); }
	if(other.exist_timer < 100)
	{
		if(up_down && taunt_pressed && !other.diag_disable_announce)
		{ other.diag_disable_announce = true; sound_play(asset_get("sfx_death1")); shake_camera(3,10);}
		if(down_down && taunt_pressed && !other.diag_alt_announce)
		{ other.diag_alt_announce = true; sound_play(asset_get("sfx_death1")); shake_camera(3,10);}
		if(attack_pressed && special_pressed && !other.diag_disable)
		{ other.diag_disable = true; other.diag_disable_announce = true; sound_play(asset_get("sfx_death2")); shake_camera(3,10);}
	}
	if(other.diag_state == 0)
	{	
		other.seed += joy_dir/24;
		visible = false;
	}
	else if(!visible)
		visible = true;
}

if(diag_alt_announce)
{
	announce = 0;
	announce[0] = sound_get("male_alt_intro1");
	announce[1] = sound_get("male_alt_intro2");
	announce[2] = sound_get("male_alt_intro3");
	announce[3] = sound_get("wrastor_intro1");
	announce[4] = sound_get("wrastor_intro2");
	announce[5] = sound_get("wrastor_intro3");
	announce[6] = sound_get("wrastor_intro4");
}
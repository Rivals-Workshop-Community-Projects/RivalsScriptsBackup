//Sending win quotes to result screen <3 code by Frtoud

//taken from reiga mal with permissison -hy
//it is from frtoud so as such, some things are still hypercam it looks like
if (!ushr_handled_victory_quote)
{
    //default values
    var transfer_array = [];
    for (var p = 1; p <= 4; p++)
    { 
        transfer_array[p] = 
        {
            order: 99999,             // placement in results. only known later
            team: get_player_team(p), // current team of player
            priority: 0,              // message priority (0 default, 1 builtin, 2 explicit)
            quote:"",                 // message if Hypercam wins against you
            icon: 0,                   // victory icon for char
            //===========================================================================
            status_quote: ""         // message for this Hypercam if he wins under certain conditions
            //held_cd_color:-1          // Current color of CD for Hypercam
        }
    }
    
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url)
        {
            //only one of the same character has to handle this for everyone: notify them.
            ushr_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = 0;
            data.quote = ushr_victory_quote;
            //else... >:]
            
        }
        else if ("ushr_victory_quote" in self)
        {
            var builtin_quote = try_get_quote(url)[0];
            var builtin_icon = try_get_quote(url)[1];
            data.icon = builtin_icon;
            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
            }
            init_shader();
        }
        else
        {
            var builtin_quote = try_get_quote(url)[0];

            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
                data.icon = try_get_quote(url)[1];
            }
        }

        transfer_array[player] = data;
    }
    
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true; //survive room end
    smuggler.type = 2;
    smuggler.length = 60; //will destroy itself automatically after one second.
    
    smuggler.ushr_victory_screen_array = transfer_array;
    //smuggler.uhc_batteries = uhc_batteries;
}
/*checklist
*/

//==============================================================
#define try_get_quote(char_url)
{
    //=========================================================
    // Approximate maximum line:
            //      "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
    //=========================================================
    var quote = "";
    var icon = 0;
    switch (char_url)
    {
        case CH_ZETTERBURN:
            quote = "What burns brightly in you does it burn not in all of us. Maybe that's why they chose you, as their hero.";
            icon = 0;
            break;
        case CH_ORCANE:
            quote = "Everyone deserves a little fun. Everything from the ocean makes me think of that.";
            icon = 0;
            break;
        case CH_KRAGG:
            quote = "They say the Wall Runners have their art. I do see it in you and your fighting mannerisms.";
            icon = 0;
            break;
        case CH_WRASTOR:
            quote = "Look at you, your dignity too soars up high...";
            icon = 7;
            break;
        case CH_FORSBURN:
            quote = "I... Deception. Each lie received is chance for learning, but we must first know what we were lied to begin with.";
            icon = 2;
            break;
        case CH_ETALUS:
            quote = "It's... cold. Brr. I've always wanted to see the arctic lights, but maybe you're telling me I'm not prepared.";
            icon = 8;
            break;
        case CH_MAYPUL:
            quote = "Would you call them your friends or your family? Both words work, and both words cherished.";
            icon = 0;
            break;
        case CH_ABSA:
            quote = "Do you see out to the clouds' far shore as well, in your settlement above the mountains?";
            icon = 10;
            break;
        case CH_CLAIREN:
            quote = "What strange outset. You'll find your way, for sure. I'm hopeful.";
            icon = 0;
            break;
        case CH_RANNO:
            quote = "Physical poison is one thing, but the mind can be poisoned too... I'm happy to see you do not possess it.";
            icon = 12;
            break;
        case CH_ELLIANA:
            quote = "Oh, I've heard the rumors. But, vengefulness and dejection... They don't come out of just nowhere, I know.";
            icon = 0;
            break;
        case CH_SYLVANOS:
            quote = "The forest have spoken, but I could not hear its words. I'm... rather ashamed to be insufficient.";
            icon = 6;
            break;
        case CH_MOLLO: case "1871989159":
            quote = "If you must break the rules, you must be careful not to become an another rule yourself. Now, are you?";
            icon = 14;
            break;
        case CH_HODAN: case "2136440419":
            quote = "You'll tell me your stories? That sounds wonderful. I'll share mine, too. The worlds I've seen.";
            icon = 0;
            break;
        case CH_OLYMPIA: case "1943759600":
            quote = "To break and grow again, strengthens itself. I see your strong will on this path, I think.";
            icon = 5;
            break;
        case CH_POMME: case "1913517643":
            quote = "I find fame to be an awkward resource - it cannot be shared with others. But you wouldn't anyway, would you.";
            icon = 14;
            break;
        case CH_ORI:
            quote = "This... feeling... I am thrilled to follow the trail for your worlds and paths.";
            icon = 13;
            break;
        case CH_SHOVEL_KNIGHT:
            quote = "All things can be a weapon, what matters is how you use it. Suppose that's why it hurts so much... Ow.";
            icon = 11;
            break;
		
		//me area
        case "1894194148": // AR
        case "2237355935": // Oldbows
            quote = "I miss your presence on the hilltops. But I suppose you have since moved on. Where, though, I wonder.";
			icon = 0;
            break;
        case "2108895293": // Lumina
            quote = "Light and dark, dawn and dusk, shine and shadow, there's always an inbetween left unworded.";
			icon = 10;
            break;
        case "2229832619": // N/A
        case "2294898328": // N/A old sprites
            quote = "I fear for what I may leave behind, and what I may not. That is why I must continue and live.";
			icon = 2;
            break;
        case "2226596831": // Recklessman
            quote = "I can see through you... Like a window... An unchanging color... It's tripping up my mind. Ugh.";
			icon = 11;
            break;
        case "2343479756": // Natsumi
            quote = "That may have been a spectre? I felt a tinge of regret, but I sense she's let it go, maybe.";
			icon = 5;
            break;
        case "2415092274": // Ao
            quote = "Not often we dream of the past like this. Gosh. It's like a... physical retrospection.";
			icon = 0;
            break;
        case "2605462884": // Explorer
            quote = "Eras, times, worlds gone by are only remembered by, remembrance... The end of the link scares me.";
			icon = 6;
            break;
        case "2685923956": // Jirachi
            quote = "I've always wished to see the whole of the world and worlds. It hasn't changed even today.";
			icon = 0;
            break;
        case "2895650073": // Dreaming Madotsuki (hyuponia and spiderboi)
        case "1871060242": // old Madotsuki (Uni)
        case "2177701650": // old Madotsuki ""balanced"" (Uni n sakk)
            quote = "By nature, subconscious is oft unpredictable. But it is its uniqueness from which we may gain insight.";
			icon = 5;
            break;
        case "3273103805": // Nisae kind of
            quote = "I wish I could say what I feel from her is aimless, but these slices I was hurt more than just my body.";
			icon = 11;
            break;
        case "3310371100": // Usher
            quote = "Who's to say things remain the same forever? Thusly we should always be prepared of changes forward.";
			icon = 10;
            break;
        case "3346651920": // Slenderman
            quote = "My head... clouded and crowded. Voices and non-voices. I see how so many others have fallen in his wake.";
			icon = 11;
            break;
        case "3532575292": // Ràiné
            quote = "See you again soon, Ràiné.";
			icon = 0;
            break;
		
		//folks
        case "2802300675": // Valley
            quote = "Walking as the shadow of death on you, instead of within it. I do wonder if that is a blessing or a curse.";
			icon = 0;
            break;
        case "2794769419": // Tulutle
            quote = "I haven't seen enough in the lands of frozen and snow. If you may, an advice for little old me...";
			icon = 1;
            break;
        case "2456542384": // Drosera
            quote = "Don't be dragged down by the past's someone else... After all, you are you.";
			icon = 0;
            break;
        case "2459477247": // Maar
            quote = "Warfare has had their consequences...";
			icon = 5;
            break;
        case "2448990688": // Scoville
        case "2820864305": // Scoville SSL
            quote = "They call it a spice of life. Just a little is enough. ...Not talking about you necessarily, sorry. Rude of me.";
			icon = 0;
            break;
        case "2404627467": // Planthem
            quote = "Your blade techniques are quite practical. I wish mine were... a bit more practical, too.";
			icon = 5;
            break;
        case "2965700442": // Humanthem
            quote = "With each blades clashed, I felt no fear still, but I felt your immense pressure.";
			icon = 0;
            break;
		
		
        case "2922282666": // Anzen
            quote = "The shine in your gems tell me about you. They are proud of you, I want you to know that.";
			icon = 0;
            break;
        case "3137114060": // Crest
            quote = "Your grace shines like the very moon we both adore. Though, I'm a bit more partial to full moon.";
			icon = 0;
            break;
        case "2874473566": // Neptune
            quote = "In the dreams of the ocean, freedom always seemed present. Would you say that rings true?";
			icon = 0;
            break;
        case "2972978461": // Pici
            quote = "In the sunflower fields I saw you once. Maybe we'll meet there again someday?";
			icon = 0;
            break;
        case "2801851415": // Frostine
        case "2002172624": // King Briggs
        case "3349890045": // Queen Platina
        case "2677369538": // King Knight
        case "2359645103": // King Knight
        case "2101425426": // King Poulion
        case "3449125666": // King Boo
            quote = "Rule over others' personhood... Abject.";
			icon = 6;
            break;
        case "2861924796": // King of thieves and approx. 60,000 bees
        case "3386876609": //
        case "3355222833": //
            quote = "Abject... Do you deserve anything?";
			icon = 6;
            break;
        case "2430633441": // Synne
            quote = "In the light between dawn and dusk, the sky cried. They cried and cried, until they ran out of stars.";
			icon = 10;
            break;
        case "2237119713": // Gustav
            quote = "As you lose what you've once had, do you ever wonder if you've ever deserved to have them in the first place?";
			icon = 5;
            break;
        case "2605468610": // Exetior
            quote = "I'm not sure what I feel about your future. But if you can see yourself improve, then that's good, I guess.";
			icon = 5;
            break;
        case "2013408541": // Slashe
            quote = "The winds speak to me, they disagree with you. What did you do to receive distrust of even the wind?";
			icon = 4;
            break;
        case "3002542949": // Tsukumo Sana
            quote = "What orbits now were often what once was one. I want to believe they still share the spirit.";
			icon = 2;
            break;
        case "2226876875": // Kitsuga
            quote = "It fills me with wonder too, this vast open outer space. I dream to be carried in the rivers of stars.";
			icon = 2;
            break;
        case "2504101278": // Void
            quote = "I've heard the rumors and the legends. Furthest edges of the space... But you've so much yet to see.";
			icon = 5;
            break;
        case "3455939700": // Rosalina and Luma
            quote = "I've read your storybooks. It is legendary in my hometown. I am honoured, ma'am.";
			icon = 10;
            break;
        case "3311683657": // Luna
            quote = "What I love about this world is the different stories they have and lived through.";
			icon = 12;
            break;
        case "3397891986": // Tzukiyo
            quote = "Ah, I've finally beat you in a fight for once, Mrs. Tzu. You training me has truly had results.";
			icon = 12;
            break;
        case "2908697593": // Isaac Clarke
            quote = "Yes, I understand... Out there, there can be anything, even horrifying threats. It does not deter me.";
			icon = 5;
            break;
        case "2499367561": // Cosmonaut
            quote = "Wh... I'm impressed. Dang.";
			icon = 15;
            break;
        case "3577396219": // Loop
            quote = "I... want to comment anything at all, but I've yet to know your stories.";
			icon = 11;
            break;
        case "2766251363": // Ristar
        case "2772894758": // Ristar
            quote = "Wherever your next trail may be, I wish the best luck on your journeys.";
			icon = 0;
            break;
        case "3189026798": // Star Joins The Fight
            quote = "Of all the twinkles and glimmers in the sky, I must say I am not one. I am just... a flower.";
			icon = 6;
            break;
        case "3413560537": // Star Down Special
            quote = "We seem to have much more in common than it first seemed. Let me share my stories, the worlds I've seen.";
			icon = 1;
            break;
        case "1904437331": // Astra
            quote = "We've never met in our prime. But things are better today. Your unpresence you chose knowingly.";
			icon = 7;
            break;
        case "3042615374": // Nemesis
            quote = "Uh... Yes. Stars.";
			icon = 5;
            break;
		
		
		
        case "2438249735": // 
            quote = "... ... ... No, you're not the one..."; 
			icon = 6;
            break;

        default: break;
    }

return [quote, icon];

}
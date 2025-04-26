
//Sending win quotes to result screen <3 code by Frtoud
if (!twenny_handled_victory_quote)
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
            icon: 0,                   // victory icon for twenny
            voiceline: "",              // voiceline for twenny
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
            //only one twenny has to handle this for everyone: notify them.
            twenny_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = twenny_vic_face;
            data.quote = twenny_victory_quote;
            data.voiceline = twenny_vic_line;
            //else... >:]
            
        }
        else if ("twenny_victory_quote" in self)
        {
            var builtin_quote = try_get_quote(url)[0];
            var builtin_icon = try_get_icon(url);
            var builtin_voiceline = try_get_voiceline(url);
            data.icon = builtin_icon;
            data.voiceline = builtin_voiceline
            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
            }
        }
        else
        {
            var builtin_icon = try_get_icon(url);
            var builtin_voiceline = try_get_voiceline(url);
            data.icon = builtin_icon;
            data.voiceline = builtin_voiceline
            //print_debug(builtin_voiceline);
            
            var builtin_quote = try_get_quote(url);
            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
            }
            
        }
            
        transfer_array[player] = data;
    }
    
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true; //survive room end
    smuggler.type = 2;
    smuggler.length = 60; //will destroy itself automatically after one second.
    
    smuggler.twenny_victory_screen_array = transfer_array;
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
    var voiceline = "";
    switch (char_url)
    {
        case "3302238950": //Alexis
            quote = "WRENCHES? SCREWDRIVERS? IF Y0U TRY FIXXING ME, I’LL JUST HAVE T0 ‘FIXX’ Y0UR FACE."
            break; 
        case "2605377553": //Mal
            quote = "L0VE Y0UR RAGS- CAN I HAVE Y0UR SWEATER? AND I L0VE Y0UR C0MPLEXI0N- CAN I HAVE Y0UR SKIN?"
            break; 
        case "3307937190": //Pastelle
            quote = "I’LL ADMIT, HER V0ICE WAS <S0000000> CUTE! TAKING N0TES."
            break; 
        //case "": // Celeste
        //    quote = "WAS THAT REALLY A SUPER-VILLAIN? GEE, GLAD I WAS HERE T0 SAVE THE DAY, THEN!"
        //    break; 
        
        // Horror Jam Entries
        case "3346651920": // Slenderman
        case "3345460443": // Red
        case "3345583689": // uro
        case "3345923543": // ZEPH
        case "3347758224": // morri
        case "3349586897": // tekt
        case "3349890045": // plat
        case "3350334985": // the vtuber
        case "3350397746": // ark one
        case "3350776556": // camic
        case "3351001188": // big scary mario
        case "3351119363": // rodan
        case "3351275909": // fippy
        case "3351427943": // am
        case "3351508446": // dwaalux
        case "3351571703": // yuri
        case "3351637675": // fiertay
        case "3351523308": // league guy
        case "3351696106": // void friend
        case "3351705451": // blob time cat
        case "3351720915": // zombies
        case "3351719064": // darkrai
        case "3352057377": // charlotte
        case "3353596512": // Employee
        case "3357823813": // Dracula
        case "3359393961": // Majin Sonic
            quote = ">AWW, WHAT AN AD0RABLE HALL0WEEN C0STUME!~ DID Y0UR M0M MAKE IT? LET ME JUST PEEL IT 0FF."
            break; 
        
        // Cute characters
        case "2593144115": //Amaya
        case "2396735388": // Zephrie
        case "2108895293": // Lumina
        case "2552853220": // Fumo Reimu
        case "2839808881": // Kirby
        case "2229887722": // Amber
        case "2871608790": //  Azi
            quote = "LITTLE CUTIEPIES LIKE Y0U MAKE MY WIRES CHURN. Y0U KN0W DAMN WELL I’M STILL THE CUTEST!!";
            break;
            
        // rat civilization
        case "2867341866": // Aur
        case "2930066171": // Chad
        case CH_POMME:
        case CH_OLYMPIA:
            quote = "THIS WILL SURELY PLEASE THE SEWER RAT DEM0GRAPHIC."
            break;
            
        // Putrolce
        case "3309240911": //Putrolce
            quote = "H0W AB0UT I HIRE Y0U AS MY JANIT0R? JUST EAT ALL THE BAD TRASH AND KEEP THE G00D TRASH PLEASE.";
            break;
        
        // Venus or Bar
        case "2601775097": //Reygard
            quote = "Y0U MAY N0T HAVE N0TICED THIS, BUT ANGELS AREN’T REAL. G00D LUCK, TH0UGH!";
            break;
        
        // Yuuko
        case "2996263079": //Yuuko
            quote = "AN 0RDINARY GIRL? I KN0W A THING 0R 2 AB0UT 0RDINARY, Y0U’RE DEFINITELY JUST A FREAK!";
            break;
        
        // Nano
        case "3047409367": //Nano
            quote = "SUCH AN AD0RABLE ROBOT... N0 0NE W0ULD MIND ME L00TING AN 0RGAN 0R TW0, RIGHT?";
            break;
        
        // Deracine
        case "3349889053": //Déraciné
            quote = "Y0U CAN RAISE THE DEAD? WH00PTY D00. HALF MY R00MMATES ARE GH0STS. THE 0THER HALF KIND 0F L00K LIKE Y0U, ACTUALLY.";
            break;
        
        // Luminance
        case "3067741766": //Luminance
            quote = "N0W THAT’S A SIGHT F0R S0RE EYES. IF YoU’RE L00KING FoR SoME0NE... I'm not her.";
            break;
        
        // Thara
        case "2292289481": //Thara
        case "2540332317": //Thara
            quote = "VERMIN ALERT! EITHER I SQUASH Y0U N0W 0R Y0U CAN G0 WATCH MY SH0W LATER T0NIGHT, H0W AB0UT IT?";
            break;
        
        // Truck-kun
        case "2997493298": //Truck-kun
            quote = "HEY H0TSH0T, ARE YA SINGLE? SW00000N.";
            break;
        
        // N/A
        case "2229832619": //N/A
            quote = "AWW WELL AREN’T Y0U THE CUTEST THING? I W0NDER IF I CAN FIT IT D0WN IN THE SEWERS.";
            break;
            
        // Tamat
        case "2273328517": //Tamat
            quote = "WAIT... I F0RG0T T0 GET HER AUTOGRAPH! QUICK, BEF0RE SHE DISSAPEARS INT0 MYSTERI0US ARG G00P!!";
            break;
            
        // Spooky
        case "3357700659": //Spooky
            quote = "HUMHARUM... W0ULD M0RE GH0STS WATCH MY STUFF IF I ADDED THESE 'JUMPSCARES' T0 MY SH0W?"
            break;
        
        case "3120902361": // Desperado
            quote = "GH0STS B0RN FR0M BITTERNESS ARE THE W0RST- THEY ALM0ST NEVER WANNA WATCH MY SH*T!"
            break;
            
        case "2816145042": // SSL NAC
            quote = "You are alone, child. There is only darkness for you, and only death for your people."
            break;
            
        case "2201608216": // Blake
        case "2007375819": // BBot
        case "2142662749": // Ruzo
        case "2164823475": // Rosa the Mechanical Maid (hell yeah.)
        case "2501860697": // zuhtatic
            quote = "THIS SCRAPBRAIN ISN'T 1 0F MY CR0NIES, IS IT? MAYBE I NEED T0 DISSECT IT..."
            break;
            
        case "3316053085": //Venus
        case "3306584099": //Tomoko
        case "3307368173": //Sarolyn
        case "3308351120": // Saelune
        case "3310371100": // Usher
        case "3316054693": // Asra
        case "3382637663": // Ciela
            quote = "PFFT- 'ALL STAR'? H0W AB0UT Y0U ALL STAR-T WALKING STRAIGHT 0FF A CLIFF!!"
            break;
            
        case "2823288287": // SSL Twenny, same as base twenny
            quote = "SHREWD W0MAN! IMITATI0N WAS IMMINENT FAILURE- I AM 0NE IN A TWILLI0N~";
            break;
        
        default: break;
    }
    
    if (is_twenny) {
        quote = "SHREWD W0MAN! IMITATI0N WAS IMMINENT FAILURE- I AM 0NE IN A TWILLI0N~";
    }

return quote

}

#define try_get_icon(char_url)
{

    var icon = "vicf_base";
    switch(char_url)
    {
        // default
        case "3309240911": //Putrolce
        case "2292289481": //Thara
        case "2540332317": //Thara
        case "3067741766": //Luminance
            icon = "vicf_base";
            break;
        
        // laughing
        case "3307937190": //Pastelle;
        case "2229832619": //N/A
        //case "": // Celeste
        case "2823288287": // SSL Twenny, same as base twenny
            icon = "vicf_laugh";
        
        //angry
        case "3302238950": //Alexis
        case "2996263079": //Yuuko
        case "2593144115": //Amaya
        case "2396735388": // Zephrie
        case "2108895293": // Lumina
        case "2552853220": // Fumo Reimu
        case "2839808881": // Kirby
        case "2229887722": // Amber
        case "3120902361": // Desperado
        case "3316053085": //Venus
        case "3306584099": //Tomoko
        case "3307368173": //Sarolyn
        case "3308351120": // Saelune
        case "3310371100": // Usher
        case "3316054693": // Asra
        case "3382637663": // Ciela
            icon = "vicf_angry";
            break;
            
        //smug
        case "3316053085": //Venus
        case "2601775097": //Reygard
        case "2997493298": //Truck-kun
        case "3349889053": //Déraciné
            icon = "vicf_smug";
            break;
        
        //glitch
        case "2605377553": //Mal
        case "3346651920": // Slenderman
        case "3345460443": // Red
        case "3345583689": // uro
        case "3345923543": // ZEPH
        case "3347758224": // morri
        case "3349586897": // tekt
        case "3349890045": // plat
        case "3350334985": // the vtuber
        case "3350397746": // ark one
        case "3350776556": // camic
        case "3351001188": // big scary mario
        case "3351119363": // rodan
        case "3351275909": // fippy
        case "3351427943": // am
        case "3351508446": // dwaalux
        case "3351571703": // yuri
        case "3351637675": // fiertay
        case "3351523308": // league guy
        case "3351696106": // void friend
        case "3351720915": // zombies
        case "3351719064": // darkrai
        case "3352057377": // charlotte
        case "3353596512": // Employee
        case "3047409367": // Nano
        case "2201608216": // Blake
        case "2007375819": // BBot
        case "2142662749": // Ruzo
        case "2164823475": // Rosa the Mechanical Maid (hell yeah.)
        case "2501860697": // zuhtatic
            icon = "vicf_glitch";
            break;

        // nothing
        case "2816145042": // SSL NAC
            icon = "vicf_nothing";
            break;
            
        
        // stare
        case "2867341866": // Aur
        case "2930066171": // Chad
        case CH_POMME:
        case CH_OLYMPIA:
        case "2273328517": //Tamat
        case "3357700659": //Spooky
            icon = "vicf_stare";
            break;
        
        default: break;
    }
    
    if (is_twenny) {
        icon = "vicf_laugh";
    }
return icon
}

#define try_get_voiceline(char_url)
{

    var voiceline = "";
    switch(char_url)
    {
        //mal
        case "2605377553": //Mal
            voiceline = "vic_mal";
            break;
            
        case "3307937190": //Pastelle
            voiceline = "vic_pasta";
            break; 
            
        //case "": // Celeste
        //  voiceline = "vic_celeste";
        //  break;
        
        case "3346651920": // Slenderman
        case "3345460443": // Red
        case "3345583689": // uro
        case "3345923543": // ZEPH
        case "3347758224": // morri
        case "3349586897": // tekt
        case "3349890045": // plat
        case "3350334985": // the vtuber
        case "3350397746": // ark one
        case "3350776556": // camic
        case "3351001188": // big scary mario
        case "3351119363": // rodan
        case "3351275909": // fippy
        case "3351427943": // am
        case "3351508446": // dwaalux
        case "3351571703": // yuri
        case "3351637675": // fiertay
        case "3351523308": // league guy
        case "3351696106": // void friend
        // case "": // im not including the blob time cat bro
        case "3351720915": // zombies
        case "3351719064": // darkrai
        case "3352057377": // charlotte
        case "3353596512": // Employee
            voiceline = "vic_hjam_char"
            break;
        
        case "2593144115": //Amaya
        case "2396735388": // Zephrie
        case "2108895293": // Lumina
        case "2552853220": // Fumo Reimu
        case "2839808881": // Kirby
        case "2229887722": // Amber
            voiceline = "vic_cute_char"
            break;
        
        // rat society
        case "2867341866": // Aur
        case "2930066171": // Chad
        case CH_POMME:
        case CH_OLYMPIA:
            voiceline = "vic_d4"
            break;
            
        case "3302238950": //Alexis
            voiceline = "vic_lexi"
            break;
        
        case "3309240911": //Putrolce
            voiceline = "vic_patty"
            break;
        
        case "2997493298": //Truck-kun
            voiceline = "vic_truck"
            break;
            
        case "3067741766": //Luminance
            voiceline = "vic_luminance"
            break;
            
        case "3349889053": //Déraciné
            voiceline = "vic_deracine"
            break;
        
        case "2273328517": //Tamat
            voiceline = "vic_tamat"
            break;
            
        case "3120902361": // Desperado
            voiceline = "vic_despy"
            break;
        
        case "3357700659": //Spooky
            voiceline = "vic_spooky"
            break;
        
        //all-stars
        case "3316053085": //Venus
        case "3306584099": //Tomoko
        case "3307368173": //Sarolyn
        case "3308351120": // Saelune
        case "3310371100": // Usher
        case "3316054693": // Asra
        case "3382637663": // Ciela
            voiceline = "vic_allstars"
            break;
        
        //robots
        case "2201608216": // Blake
        case "2007375819": // BBot
        case "2142662749": // Ruzo
        case "2164823475": // Rosa the Mechanical Maid (hell yeah.)
        case "2501860697": // zuhtatic
            voiceline = "vic_robots"
            break;
        
        //nothing
        case "2229832619": //N/A
        case "2292289481": //Thara
        case "2540332317": //Thara
        case "3047409367": //Nano
        case "2996263079": //Yuuko
        case "2601775097": //Reygard
        case "2816145042": // SSL NAC
            voiceline = "nothing";
            break;

        
        default: break;
    }
    
    if (is_twenny) {
        voiceline = "vic_another_twenny";
    }
    
return voiceline
}
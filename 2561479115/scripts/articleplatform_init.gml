/*

    Text initialization method taken from muno.
    Thank you muno, very cool!

    Good luck with Coda! :)





    monan do art;s

*/
sprite_index = asset_get("empty_sprite");
y = 0;
x = 0;
with (player_id) {
    miscRegistry();
    baseRegistry();
    wsRegistry();
}
instance_destroy();
exit;

#define miscRegistry
///Default entry stuff.
t_prefixes = [">REGISTRY: ", ">WARRANTS: ", ">INSTRUCTIONS: "];
reg_contents[0,0] = 0;
reg_contents[0,1] = t_prefixes[@ 0]+"UNKNOWN";
reg_contents[0,2] = t_prefixes[@ 1]+"UNKNOWN";
reg_contents[0,3] = t_prefixes[@ 2]+"CAPTURE AND IDENTIFY";
reg_contents[0,4] = "";
#define baseRegistry

var cur = 1;
//BASE CAST
//ZETTERBURN
reg_contents[cur,0] = CH_ZETTERBURN;
reg_contents[cur,1] = t_prefixes[@ 0]+"ZETTERBURN";
reg_contents[cur,2] = t_prefixes[@ 1]+"EXISTENCE THREATENS THE EMPEROR'S ROYALTY, USAGE OF THE FLAME";
reg_contents[cur,3] = t_prefixes[@ 2]+"TERMINATE";
reg_contents[cur++,4] = "";

//FORSBURN
reg_contents[cur,0] = CH_FORSBURN;
reg_contents[cur,1] = t_prefixes[@ 0]+"FORSBURN";
reg_contents[cur,2] = t_prefixes[@ 1]+"EXISTENCE THREATENS THE EMPEROR'S ROYALTY";
reg_contents[cur,3] = t_prefixes[@ 2]+"TERMINATE";
reg_contents[cur++,4] = "";

//CLAIREN
reg_contents[cur,0] = CH_CLAIREN;
reg_contents[cur,1] = t_prefixes[@ 0]+"CLAIREN";
reg_contents[cur,2] = t_prefixes[@ 1]+"GONE A.W.O.L, TREASON, PUBLIC ENEMY NUMBER ONE";
reg_contents[cur,3] = t_prefixes[@ 2]+"TERMINATE";
reg_contents[cur++,4] = "";

//ORCANE
reg_contents[cur,0] = CH_ORCANE;
reg_contents[cur,1] = t_prefixes[@ 0]+"ORCANE";
reg_contents[cur,2] = t_prefixes[@ 1]+"PETTY THEFT, ESPIONAGE";
reg_contents[cur,3] = t_prefixes[@ 2]+"DEFER TO ANIMAL CONTROL";
reg_contents[cur++,4] = "";

//ETALUS
reg_contents[cur,0] = CH_ETALUS;
reg_contents[cur,1] = t_prefixes[@ 0]+"ETALUS";
reg_contents[cur,2] = t_prefixes[@ 1]+"DESTRUCTION OF PUBLIC PROPERTY, TOO BIG";
reg_contents[cur,3] = t_prefixes[@ 2]+"DETAIN";
reg_contents[cur++,4] = "";

//RANNO
reg_contents[cur,0] = CH_RANNO;
reg_contents[cur,1] = t_prefixes[@ 0]+"RANNO";
reg_contents[cur,2] = t_prefixes[@ 1]+"TRESPASSING, PUBLIC ENDANGERMENT WITH HIS POISON";
reg_contents[cur,3] = t_prefixes[@ 2]+"DETAIN";
reg_contents[cur++,4] = "";

//WRASTOR
reg_contents[cur,0] = CH_WRASTOR;
reg_contents[cur,1] = t_prefixes[@ 0]+"WRASTOR";
reg_contents[cur,2] = t_prefixes[@ 1]+"AFFILIATION WITH AIR ARMADA";
reg_contents[cur,3] = t_prefixes[@ 2]+"TERMINATE";
reg_contents[cur++,4] = "";

//ABSA
reg_contents[cur,0] = CH_ABSA;
reg_contents[cur,1] = t_prefixes[@ 0]+"ABSA";
reg_contents[cur,2] = t_prefixes[@ 1]+"UTILIZATION OF UNKNOWN POWER";
reg_contents[cur,3] = t_prefixes[@ 2]+"CAPTURE FOR INTERROGATION";
reg_contents[cur++,4] = "";

//ELLIANA
reg_contents[cur,0] = CH_ELLIANA;
reg_contents[cur,1] = t_prefixes[@ 0]+"ELLIANA";
reg_contents[cur,2] = t_prefixes[@ 1]+"CONSPIRACY TO COMMIT TREASON, PILOTING WITHOUT A LICENSE";
reg_contents[cur,3] = t_prefixes[@ 2]+"TERMINATE";
reg_contents[cur++,4] = "";

//KRAGG
reg_contents[cur,0] = CH_KRAGG;
reg_contents[cur,1] = t_prefixes[@ 0]+"KRAGG";
reg_contents[cur,2] = t_prefixes[@ 1]+"TRESPASSING";
reg_contents[cur,3] = t_prefixes[@ 2]+"DETAIN";
reg_contents[cur++,4] = "";

//MAYPUL
reg_contents[cur,0] = CH_MAYPUL;
reg_contents[cur,1] = t_prefixes[@ 0]+"MAYPUL";
reg_contents[cur,2] = t_prefixes[@ 1]+"INTERFERENCE WITH LORD LOXODONT'S PLANS";
reg_contents[cur,3] = t_prefixes[@ 2]+"DETAIN";
reg_contents[cur++,4] = "";

//SYLVANOS
reg_contents[cur,0] = CH_SYLVANOS;
reg_contents[cur,1] = t_prefixes[@ 0]+"SYLVANOS";
reg_contents[cur,2] = t_prefixes[@ 1]+"MASSIVE THREAT TO SOCIETY";
reg_contents[cur,3] = t_prefixes[@ 2]+"TERMINATE";
reg_contents[cur++,4] = "";

//ORI
reg_contents[cur,0] = CH_ORI;
reg_contents[cur,1] = t_prefixes[@ 0]+"ORI AND SEIN";
reg_contents[cur,2] = t_prefixes[@ 1]+"COPYRIGHT INFRINGEMENT";
reg_contents[cur,3] = t_prefixes[@ 2]+"RETURN TO ORIGINAL SERIES";
reg_contents[cur++,4] = "";

//SHOVEL_KNIGHT
reg_contents[cur,0] = CH_SHOVEL_KNIGHT;
reg_contents[cur,1] = t_prefixes[@ 0]+"SHOVEL KNIGHT";
reg_contents[cur,2] = t_prefixes[@ 1]+"COPYRIGHT INFRINGEMENT";
reg_contents[cur,3] = t_prefixes[@ 2]+"RETURN TO ORIGINAL SERIES";
reg_contents[cur++,4] = "";



#define wsRegistry

var cur = 15;
//dev registry entries
reg_contents[cur, 0] = "1905208125"; //Hime
reg_contents[cur, 1] = "||||||||404||||||||"
reg_contents[cur, 2] = "||REGISTRY||"
reg_contents[cur, 3] = "|UNDEFINED|"
reg_contents[cur++, 4] = "You already used your chance. I can't give you another.";
//You're someone else's problem
//Now I only want you

//gone_

reg_contents[cur, 0] = "1968648848"; //Abyss Hime
reg_contents[cur, 1] = t_prefixes[@ 0]+  "UNKNOWN ABYSSAL ENTITY";
reg_contents[cur, 2] = t_prefixes[@ 1]+  "PUBLIC ENDANGERMENT, DESTRUCTION OF PROPERTY, MURDER";
reg_contents[cur, 3] = t_prefixes[@ 2]+  "TERMINATE AT ALL COSTS";
reg_contents[cur++, 4] = "What happened... what did you do to her!?";

reg_contents[cur, 0] = "2561479115"; //Rokesha
reg_contents[cur, 1] = t_prefixes[@ 0]+  "ROKESHA ISOBE";
reg_contents[cur, 2] = t_prefixes[@ 1]+  "NONE";
reg_contents[cur, 3] = t_prefixes[@ 2]+  "OBEY THE EMPEROR AND ELIMINATE THREATS TO NEO FIRE CAPITAL";
reg_contents[cur++, 4] = "Starting with this impostor.";

//you are literally not allowed to make a lumi ( :eyes: ) registry until i finish the character because it might help me actually
//do the thing
// :smiule:

reg_contents[cur,0] = "1894194148"; //Acid Rainbows
reg_contents[cur,1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT";
reg_contents[cur,3] = t_prefixes[@ 2]+ "RECAPTURE";
reg_contents[cur++,4] = "You don't look like anyone from back home...";

reg_contents[cur,0] = "2105839293"; //Yuuto Ichika
reg_contents[cur,1] = t_prefixes[@ 0]+ "YUUTO ICHIKA";
reg_contents[cur,2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT(?), THROWING LARGE TRUCKS";
reg_contents[cur,3] = t_prefixes[@ 2]+ "ASSIGN COMMUNITY SERVICE";
reg_contents[cur++,4] = "What's with this sense of deja vu?";

reg_contents[cur,0] = "1917856427"; //Liz
reg_contents[cur,1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT";
reg_contents[cur,3] = t_prefixes[@ 2]+ "RECAPTURE";
reg_contents[cur++,4] = "How'd this kid get her hands on plasma tech?";

reg_contents[cur,0] = "1933111975"; //Trummel and Alto
reg_contents[cur,1] = t_prefixes[@ 0]+ "trummel";
reg_contents[cur,2] = t_prefixes[@ 1]+ "VIGILANTE ESPIONAGE, LEAKING CONFIDENTIAL DOCUMENTS, DUI";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1871989159"; //Mollo
reg_contents[cur,1] = t_prefixes[@ 0]+ "MOLLO";
reg_contents[cur,2] = t_prefixes[@ 1]+ "DISTURBING THE PEACE, TREASON, ARSON, TERRORISM, PUBLIC INTOXICATION, PUBLIC INDECENCY, ATTEMPTED MURDER, DESTRUCTION OF GOVERNMENT PROPERTY, JAYWALKING, THEFT, HE'S REALLY JUST AN ASSHOLE, ASSAULT";
reg_contents[cur,3] = t_prefixes[@ 2]+ "KILL.";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1943759600"; //Olympia
reg_contents[cur,1] = t_prefixes[@ 0]+ "OLYMPIA LAZULI";
reg_contents[cur,2] = t_prefixes[@ 1]+ "POSSESSION OF UNKNOWN POWER, DISTURBING THE PEACE";
reg_contents[cur,3] = t_prefixes[@ 2]+ "CAPTURE FOR INTERROGATION";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1904437331"; //ASTRA
reg_contents[cur,1] = t_prefixes[@ 0]+ "ASTRA";
reg_contents[cur,2] = t_prefixes[@ 1]+ "POSSESSION OF UNKNOWN POWER, POTENTIAL ESPIONAGE";
reg_contents[cur,3] = t_prefixes[@ 2]+ "CAPTURE FOR INTERROGATION";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1868756032"; //KIRBY
reg_contents[cur,1] = t_prefixes[@ 0]+ "KIRBY";
reg_contents[cur,2] = t_prefixes[@ 1]+ "DESTRUCTION OF PLANETS AND INTERGALACTIC TERRORS";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DO NOT DISTURB";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1867608473"; //KRIS
reg_contents[cur,1] = t_prefixes[@ 0]+ "KRIS DELTARUNE";
reg_contents[cur,2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, MISUSE OF THE ABBREVIATION 'TP'";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1913869515"; //Zetta
reg_contents[cur,1] = t_prefixes[@ 0]+ "ZETTA ASHIKAGA";
reg_contents[cur,2] = t_prefixes[@ 1]+ "MANIPULATION OF SPACE WITHOUT A PERMIT, IP INFRINGEMENT";
reg_contents[cur,3] = t_prefixes[@ 2]+ "CAPTURE IS FRUITLESS, TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1877715009"; //Hikaru
reg_contents[cur,1] = t_prefixes[@ 0]+ "HIKARU";
reg_contents[cur,2] = t_prefixes[@ 1]+ "IMPERSONATION OF AN OFFICER";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "There's no use in hiding behind clones, don't be difficult.";

reg_contents[cur,0] = "1888974873"; //Paddler
reg_contents[cur,1] = t_prefixes[@ 0]+ "PADDLER";
reg_contents[cur,2] = t_prefixes[@ 1]+ "SKATING IN RESTRICTED ZONES, NOISE VIOLATIONS";
reg_contents[cur,3] = t_prefixes[@ 2]+ "GO FOR A PERFECT!";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1916050290"; //ROBLOXian
reg_contents[cur,1] = t_prefixes[@ 0]+ "ROBLOXIAN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "SCAMMING, PRINTING COUNTERFEIT ROBUX";
reg_contents[cur,3] = t_prefixes[@ 2]+ "PERFORM NOT LIVING TO THEM";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1966516921"; //Don-Chan
reg_contents[cur,1] = t_prefixes[@ 0]+ "DON-CHAN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "RECKLESS USE OF EXPLOSIVES, NOISE VIOLATIONS";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DEFER TO ANIMAL CONTROL";
reg_contents[cur++,4] = "They look so cute, I think I'll keep them for myself.";

reg_contents[cur,0] = "1894361290"; //Untitled Goose
reg_contents[cur,1] = t_prefixes[@ 0]+ "GOOSE";
reg_contents[cur,2] = t_prefixes[@ 1]+ "PETTY THEFT, DESTRUCTION OF PROPERTY, JUST GENERALLY BEING A JERK";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DEFER TO ANIMAL CONTROL";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1868240517"; //R-00
reg_contents[cur,1] = t_prefixes[@ 0]+ "DELIVERY MODEL R-00";
reg_contents[cur,2] = t_prefixes[@ 1]+ "DISOBEDIENCE OF NFC MAIL COMMAND";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DISASSEMBLE";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1899103481"; //Targma
reg_contents[cur,1] = t_prefixes[@ 0]+ "TARGMA";
reg_contents[cur,2] = t_prefixes[@ 1]+ "UTILIZATION OF THE FLAME, DESTRUCTION OF PROPERTY";
reg_contents[cur,3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1917713379"; //Valkyrie
reg_contents[cur,1] = t_prefixes[@ 0]+ "VALKYRIE";
reg_contents[cur,2] = t_prefixes[@ 1]+ "PERFORMANCE OF ILLEGAL RITUALS, TOO BIG";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1968068304"; //Epinel
reg_contents[cur,1] = t_prefixes[@ 0]+ "EPINEL";
reg_contents[cur,2] = t_prefixes[@ 1]+ "DISOBEDIENCE OF THE LAWS OF PHYSICS, FUGITIVE";
reg_contents[cur,3] = t_prefixes[@ 2]+ "SECURE, CONTAIN, PROTECT";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1913517643"; //Pomme
reg_contents[cur,1] = t_prefixes[@ 0]+ "POMME";
reg_contents[cur,2] = t_prefixes[@ 1]+ "NONE";
reg_contents[cur,3] = t_prefixes[@ 2]+ "PROTECT FROM REBELLION FORCES";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1869652357"; //Ash
reg_contents[cur,1] = t_prefixes[@ 0]+ "ASH ";
reg_contents[cur,2] = t_prefixes[@ 1]+ "NONE";
reg_contents[cur,3] = t_prefixes[@ 2]+ "MAKE SURE THIS GUEST DOESN'T CAUSE PROBLEMS";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1962084547"; //Bird Guy
reg_contents[cur,1] = t_prefixes[@ 0]+ "BIRD GUY";
reg_contents[cur,2] = t_prefixes[@ 1]+ "VEHICULAR MANSLAUGHTER, TAX EVASION";
reg_contents[cur,3] = t_prefixes[@ 2]+ "TERMINATE AT ALL COSTS";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1926836320"; //Archen
reg_contents[cur,1] = t_prefixes[@ 0]+ "ARCHEN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, DEFIANCE OF NATURAL ORDER";
reg_contents[cur,3] = t_prefixes[@ 2]+ "REFOSSILIZE";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1891309722"; //Yoyo
reg_contents[cur,1] = t_prefixes[@ 0]+ "YOYO";
reg_contents[cur,2] = t_prefixes[@ 1]+ "IP INFRINGEMENT, DEFIANCE OF ANATOMY";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1960200333"; //Fry
reg_contents[cur,1] = t_prefixes[@ 0]+ "FRY";
reg_contents[cur,2] = t_prefixes[@ 1]+ "IP INFRINGEMENT, DEFIANCE OF ANATOMY, FOOD POISONING";
reg_contents[cur,3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1967487025"; //Shadow
reg_contents[cur,1] = t_prefixes[@ 0]+ "SHADOW THE HEDGEHOG";
reg_contents[cur,2] = t_prefixes[@ 1]+ "USAGE OF AN UNKNOWN DESTRUCTIVE POWER, SWEARING";
reg_contents[cur,3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "'Ultimate Lifeform?' Pfft. Don't make me laugh.";

reg_contents[cur,0] = "1941825892"; //Fox
reg_contents[cur,1] = t_prefixes[@ 0]+ "FOX MCCLOUD";
reg_contents[cur,2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, SHINING, RESEMBLANCE TO ZETTERBURN";
reg_contents[cur,3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1932503649"; //Troops
reg_contents[cur,1] = t_prefixes[@ 0]+ "TROOPS";
reg_contents[cur,2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, BLUE SHELLING";
reg_contents[cur,3] = t_prefixes[@ 2]+ "RETURN TO ORIGINAL SERIES";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1882960192"; //Bluey
reg_contents[cur,1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT";
reg_contents[cur,3] = t_prefixes[@ 2]+ "RECAPTURE";
reg_contents[cur++,4] = "What's with this guy's wand, more plasma tech?";

reg_contents[cur,0] = "1892960445"; //Creeper
reg_contents[cur,1] = t_prefixes[@ 0]+ "CREEPER";
reg_contents[cur,2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, TRYIN TO STEAL ALL OUR STUFF AGAIN";
reg_contents[cur,3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "If I beat you with a sniper shot, are you going to drop a record?";

reg_contents[cur,0] = "1906043536"; //Krillin
reg_contents[cur,1] = t_prefixes[@ 0]+ "KRILLIN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, EXCEEDING LEGAL POWER LEVELS";
reg_contents[cur,3] = t_prefixes[@ 2]+ "RETURN TO ORIGINAL SERIES";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "1869351674"; //Rat
reg_contents[cur,1] = t_prefixes[@ 0]+ "RAT ";
reg_contents[cur,2] = t_prefixes[@ 1]+ "CELEBRATING YET ANOTHER BIRTHDAY BASH";
reg_contents[cur,3] = t_prefixes[@ 2]+ "**ROKESHA**, OPEN UP YOUR GIFTS WHILE WE ALL CHEER";
reg_contents[cur++,4] = "?????";

reg_contents[cur,0] = "1995944345"; //Mycolich
reg_contents[cur,1] = t_prefixes[@ 0]+ "UNIDENTIFIABLE. SIGNS OF NECROTIZED TISSUE PRESENT";
reg_contents[cur,2] = t_prefixes[@ 1]+ "EXTREME BIOHAZARD. CAPABLE OF REANIMATING THE DECEASED";
reg_contents[cur,3] = t_prefixes[@ 2]+ "QUARANTINE. AVOID DIRECT CONTACT.";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "2043072797"; //Alto
reg_contents[cur,1] = t_prefixes[@ 0]+ "ALTO";
reg_contents[cur,2] = t_prefixes[@ 1]+ "VIOLATING THE ENVIRONMENTAL MODIFICATION CONVENTION";
reg_contents[cur,3] = t_prefixes[@ 2]+ "CAPTURE FOR FURTHER RESEARCH";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "2038089992"; //Panzer
reg_contents[cur,1] = t_prefixes[@ 0]+ "PANZER";
reg_contents[cur,2] = t_prefixes[@ 1]+ "MILITARIZATION IN PUBLIC AREA, DEFIANCE";
reg_contents[cur,3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur,0] = "2035357584"; //Nade
reg_contents[cur,1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur,2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT, UNAUTHORIZED USE OF WEAPONRY";
reg_contents[cur,3] = t_prefixes[@ 2]+ "RECAPTURE IF POSSIBLE";
reg_contents[cur++,4] = "Who gave you all of those weapons, the Air Armada???";

reg_contents[cur,0] = "2004075713"; //Andrew
reg_contents[cur,1] = t_prefixes[@ 0]+ "ANDREW";
reg_contents[cur,2] = t_prefixes[@ 1]+ "USAGE OF THE FLAME, SUSPECTED TREASON";
reg_contents[cur,3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

//BATCH TWO
reg_contents[cur, 0] = "2013408541"; //Slashe
reg_contents[cur, 1] = t_prefixes[@ 0]+ "SLASHE";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "WIELDING TRADITIONAL WEAPONRY WITHOUT A PERMIT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2015489502"; //Otto
reg_contents[cur, 1] = t_prefixes[@ 0]+ "OTTO";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "SPEEDING, INSURANCE FRAUD";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "SMOKE OUT";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2005036466"; //Penny
reg_contents[cur, 1] = t_prefixes[@ 0]+ "PENNY SHIBA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "GONE A.W.O.L, DISTURBING THE PEACE, [REDACTED]";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++, 4] = "I'm a human, but that doesn't mean I'll be showing *you* any mercy.";

reg_contents[cur, 0] = "2004962115"; //Gatekeeper
reg_contents[cur, 1] = t_prefixes[@ 0]+ "ABYSSAL ENTITY";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "CORRUPTING AETHER ITSELF";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "EXTERMINATE";
reg_contents[cur++, 4] = "If I finish the job for her, she might come back for us. This ends here.";

reg_contents[cur, 0] = "1869814191"; //Sans
reg_contents[cur, 1] = t_prefixes[@ 0]+ "sans";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ABUSE OF INTERDIMENSIONAL POWERS, POSSIBLE TREASON";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DETA- don't try anything, kid.";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2006251771"; //Falco
reg_contents[cur, 1] = t_prefixes[@ 0]+ "FALCO LOMBARDI";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, SHINING, RESEMBLANCE TO WRASTOR";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2006712792"; //Feri
reg_contents[cur, 1] = t_prefixes[@ 0]+ "FERI";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "NOISE VIOLATIONS, UPROOTING TRADITIONAL VALUES";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "SEND HER HOME";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2007375819"; //Blueybot
reg_contents[cur, 1] = t_prefixes[@ 0]+ "BLUEYBOT";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "BOTTING, POSSESSION OF OUTDATED MEMES, HHHHHHHHHHHHHHHHHHHHHHHHHHH";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DISASSEMBLE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1997875123"; //Amber
reg_contents[cur, 1] = t_prefixes[@ 0]+ "AMBER";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "CAT CRIMES";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "PET";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1994508755"; //Amber OG
reg_contents[cur, 1] = t_prefixes[@ 0]+ "AMBER";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "CAT CRIMES";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "PET";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1997619532"; //Mayu Ashikaga
reg_contents[cur, 1] = t_prefixes[@ 0]+ "MAYU ASHIKAGA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "MANIPULATION OF SPACE WITHOUT A PERMIT, IP INFRINGEMENT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CAPTURE IS FRUITLESS, TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2004919133"; //Hat Kid
reg_contents[cur, 1] = t_prefixes[@ 0]+ "HAT KID";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "SEVENTY-THREE COUNTS OF VANDALISM, TRESPASSING, THEFT, GANG AFFILIATIONS, MURDER, NEGLIGENT CONTROL OF A CRUISE LINER";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DETAIN DEAD OR ALIVE";
reg_contents[cur++, 4] = "What the hell has this kid been up to?";

reg_contents[cur, 0] = "2002172624"; //King Briggs
reg_contents[cur, 1] = t_prefixes[@ 0]+ "KING BRIGGS";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "IMPERSONATION OF ROYALTY, COPYRIGHT INFRINGEMENT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "EXECUTE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1993599340"; //Lovely Sweet Dream
reg_contents[cur, 1] = t_prefixes[@ 0]+ "'LOVELY SWEET'";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "REALITY MANIPULATION, INDECIPHERABLE ID";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "enjoy the ride ;)";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1954841174"; //Tetris
reg_contents[cur, 1] = t_prefixes[@ 0]+ "TETRIS. THE GAME TETRIS.";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "4-WIDING, T-SPIN TRIPLING";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "SET UP A BIG PUYO CHAIN BEFORE THE SWAP!";
reg_contents[cur++, 4] = "...what's a puyo?";

reg_contents[cur, 0] = "1866016173"; //Guadua
reg_contents[cur, 1] = t_prefixes[@ 0]+ "GUADUA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "EXCESSIVE HEALING MID-MATCH";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1865940669"; //Sandbert
reg_contents[cur, 1] = t_prefixes[@ 0]+ "SANDBERT";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "CRIMES AGAINST THE ENGINE OF RIVALS OF AETHER";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DETAIN";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1899673724"; //Sonic (rICE)
reg_contents[cur, 1] = t_prefixes[@ 0]+ "SONIC THE HEDGEHOG";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "SPEEDING, ANARCHISTIC TENDENCIES";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CLAIM ALL OF HIS RINGS";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "1976183668"; //Boss!Zetta
reg_contents[cur, 1] = t_prefixes[@ 0]+ "ZetTA AShikAGAAAAAAAAAAA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "MANI       F   ACE W     UT A PER         FRI   MENT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "survive.";
reg_contents[cur++, 4] = "Looks like the Registry won't be any help...";

reg_contents[cur, 0] = "2018586952"; //Kirbo
reg_contents[cur, 1] = t_prefixes[@ 0]+ "KIRBO";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "DESTRUCTION OF INTERGALACTIC BEINGS IN RECORD TIME";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "LEAVE THE BOY ALONE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2018586194"; //Forza
reg_contents[cur, 1] = t_prefixes[@ 0]+ "FORZA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "GONE A.W.O.L., [REDACTED]";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE.";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2018586743"; //Ayala
reg_contents[cur, 1] = t_prefixes[@ 0]+ "AYALA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ASSISTANCE IN REBELLION, IRRESPONSIBLE LENDING OF MECHA";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CAPTURE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2018586582"; //Ayala (Temp)
reg_contents[cur, 1] = t_prefixes[@ 0]+ "AYALA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ASSISTANCE IN REBELLION, IRRESPONSIBLE LENDING OF MECHA";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CAPTURE";
reg_contents[cur++,4] = "";

//BATCH 3
reg_contents[cur, 0] = "2043072797"; //Alto
reg_contents[cur, 1] = t_prefixes[@ 0]+ "ALTO";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "VIOLATING THE ENVIRONMENTAL MODIFICATION CONVENTION";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CAPTURE FOR FURTHER RESEARCH";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2038089992"; //Panzer
reg_contents[cur, 1] = t_prefixes[@ 0]+ "PANZER";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "MILITARIZATION IN PUBLIC AREA, DEFIANCE";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2035357584"; //Nade
reg_contents[cur, 1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT, UNAUTHORIZED USE OF WEAPONRY";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "RECAPTURE IF POSSIBLE";
reg_contents[cur++, 4] = "Who gave you all of those weapons, the Air Armada???";

reg_contents[cur, 0] = "2004075713"; //Andrew
reg_contents[cur, 1] = t_prefixes[@ 0]+ "ANDREW";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "USAGE OF THE FLAME, SUSPECTED TREASON";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

//BATCH 4
reg_contents[cur, 0] = "2110996330"; //CHEF
reg_contents[cur, 1] = t_prefixes[@ 0]+ "'CHEF'";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "NONE";
reg_contents[cur, 3] = ">ORDER: "+ "TWO NUMBER NINES, A NUMBER NINE LARGE, A NUMBER SIX WITH EXTRA DIP,";
reg_contents[cur++,4] = "Put it on my tab.";

reg_contents[cur, 0] = "2108176600"; //MOJIBAKE
reg_contents[cur, 1] = ">REGISﾟｼｶ "+ "oMijﾘｷek";
reg_contents[cur, 2] = "W>RAART区:S "+ "?爾｡ｹ?爾｡ｹ?爾｡ｹ?";
reg_contents[cur, 3] = "??剔??乏? "+ "ﾘｦACEP";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2273328517"; //TAMAT
reg_contents[cur, 1] = "Tamat is so amazing, for so many reasons:";
reg_contents[cur, 2] = "she loves to work together, shE loves to hide,";
reg_contents[cur, 3] = "and finally...";
reg_contents[cur++,4] = "she loves to be excited!";

reg_contents[cur, 0] = "2102497760"; //AEI & OU
reg_contents[cur, 1] = t_prefixes[@ 0]+ "AEI & OU";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "EXCESSIVE USE OF VOWELS, THREAT OF WOBBLING";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DETAIN INDIVIDUALLY";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2109083580"; //IROH
reg_contents[cur, 1] = t_prefixes[@ 0]+ "IROH";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "LYCANTHROPY";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "DETAIN FOR INSPECTION";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2097500977"; //SCARYAMI
reg_contents[cur, 1] = t_prefixes[@ 0]+ "SCARYAMI";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "FIRST DEGREE MURDER, MANIPULATION OF ABYSSAL ENERGY";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2089998666"; //Beeg Yoshi
reg_contents[cur, 1] = t_prefixes[@ 0]+ "YOSHI";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "COPYRIGHT INFRINGEMENT, CLAIMING FALSE DEPENDANTS";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "RETURN TO ORIGINAL SERIES";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2094681709"; //BGiaC
reg_contents[cur, 1] = t_prefixes[@ 0]+ "GUY, BIRD";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "VEHICULAR MANSLAUGHTER, CHILD NEGLECT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2108895293"; //LUMINA
reg_contents[cur, 1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "RECAPTURE";
reg_contents[cur++,4] = "Put down the wand and I'll give you a piggyback ride back home, okay?";

reg_contents[cur, 0] = "2064167290"; //HANA
reg_contents[cur, 1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "RECAPTURE";
reg_contents[cur++,4] = "A Phonograph? How'd that not break after all this time?";

reg_contents[cur, 0] = "2105940891"; //Siren
reg_contents[cur, 1] = t_prefixes[@ 0]+ "UNKNOWN HUMAN";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ESCAPED CONTAINMENT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "RECAPTURE";
reg_contents[cur++,4] = "You seem familiar... ze~";

reg_contents[cur, 0] = "2069283406"; //ALEX ASHIKAGA
reg_contents[cur, 1] = t_prefixes[@ 0]+ "ALEX ASHIKAGA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "MANIPULATION OF SPACE WITHOUT A PERMIT, IP INFRINGEMENT";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CAPTURE IS FRUITLESS, TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2085832560"; //KATIE
reg_contents[cur, 1] = t_prefixes[@ 0]+ "KATIE HELGA VLADIMIR";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "EXCESSIVE VIOLATION OF ARMORY LAWS";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CALL IN THE STRIKE FORCE";
reg_contents[cur++,4] = "My boss doesn't like god-slaying guns outside of his control, you know.";

reg_contents[cur, 0] = "2108469290"; //SAJI SAKAMOTO
reg_contents[cur, 1] = t_prefixes[@ 0]+ "SAJI SAKAMOTO";
reg_contents[cur, 2] = ">STATUS: DECEASED"
reg_contents[cur, 3] = t_prefixes[@ 2]+ "CALL AN EXORCIST";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2053027984"; //ARLE
reg_contents[cur, 1] = t_prefixes[@ 0]+ "ARLE NADJA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "MANIPULATION OF GELATIN INTO INTENSE MAGICAL POWER";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "STACK ON THE GARBAGE PUYOS";
reg_contents[cur++,4] = "...what's a tetris?";

reg_contents[cur, 0] = "2108764588"; //ZERRA
reg_contents[cur, 1] = t_prefixes[@ 0]+ "ZERRA";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "GOING 120 KM/H IN A 60 KM/H ZONE";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "PUT A TIRE LOCK ON HER SKATES";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2136440419"; //HODAN
reg_contents[cur, 1] = t_prefixes[@ 0]+ "HODAN";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "ASSOCIATION WITH TRAITOR PRINCES, MONKEYING AROUND";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "TERMINATE";
reg_contents[cur++,4] = "";

reg_contents[cur, 0] = "2157918622"; //CUPCAKE
reg_contents[cur, 1] = t_prefixes[@ 0]+ "CUPCAKE";
reg_contents[cur, 2] = t_prefixes[@ 1]+ "NONE";
reg_contents[cur, 3] = t_prefixes[@ 2]+ "RETURN TO THE JULESVALE CIRCUS";
reg_contents[cur++,4] = "";

total_entries =cur-1;
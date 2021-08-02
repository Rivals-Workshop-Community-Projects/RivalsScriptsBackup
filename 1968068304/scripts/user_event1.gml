//dialogue buddy

//Change their name whenever
diag_name = "Epinel"
diag_portrait=sprite_get("dialogue");
//  ADDING REGULAR DIALOGUE

//Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
diagchoice = [
"Make it quick.",
"Listen once, listen well.",
"Reconsider.",
"Bold argument. Let us compare.",
"Full stop.",
"Zzzz...",
"No point comes sharper than mine.",
"I'm awake... Now let us get this over with.",
"I'm awake... Now let's get this... over w... Zzzz...",
"We could talk this out instead.",
"Enough words. Here's a language you will understand.",
"Good idea. But have you considered..."];



#macro DIAG_DEFAULT 0
#macro DIAG_LAUGH 1
#macro DIAG_SRS 2
#macro DIAG_GROUCHY 3
#macro DIAG_SUS 4
#macro DIAG_SLEEP 5


//  Specific Character Interactions
//  Regular dialogue
switchUrl = 0;
if (is_string(otherUrl)) switchUrl = real(otherUrl);
else if (is_real(otherUrl)) switchUrl = otherUrl;
else switchUrl = 0;

if (diag != "") {
    //print(string(switchUrl));
switch (switchUrl) {

case 1943759600:
choose_dialogue_line(
"Try and keep up with me. I always wanted to say that to someone.", DIAG_DEFAULT,
"Back to basics. A strong stance means less effort spent, not more. Now, once more...", DIAG_DEFAULT);
break;

case 1913517643:
choose_dialogue_line(
"Three octaves lower, please...", DIAG_GROUCHY,
"I'm going back to sleep if I win.", DIAG_SUS);
break;

case 1904437331:
choose_dialogue_line(
"Persuade me.", DIAG_DEFAULT,
"Show your hand first. Mine has higher stakes.", DIAG_DEFAULT);
break;

case 1968068304:
choose_dialogue_line(
"I remember this dream. You didn't win.", DIAG_DEFAULT,
"Zzzz...", DIAG_SLEEP);
break;

case 1871989159:
choose_dialogue_line(
"Let's settle thi... No, it doesn't look like we will.", DIAG_SUS,
"Take any peace you want but mine.", DIAG_DEFAULT);
break;

case 1917713379:
choose_dialogue_line(
"Won't let the living rest, either.", DIAG_DEFAULT,
"Think I can still carry you.", DIAG_LAUGH);
break;

case 2097500977:
choose_dialogue_line(
"We can talk, but I'm taking you home after.", DIAG_DEFAULT,
"Can't offer you mercy. Ask the one down there.", DIAG_DEFAULT);
break;

case 1962084547:
set_dialogue_line(
"*Incoherent sleepy grumbling*", DIAG_GROUCHY);
break;

case 1913869515:
choose_dialogue_line(
"You look motivated enough for the two of us.", DIAG_DEFAULT,
"Inertial force, Zetta. Nature's force.", DIAG_LAUGH);
break;


case 2047413648:
choose_dialogue_line(
"Hm. Teach me.", DIAG_DEFAULT,
"You didn't bring enough swords.", DIAG_DEFAULT);
break;

case 2085832560:
choose_dialogue_line(
"For all you know, the coordinate doesn't exist. Now could you stop trying to shoot it?", DIAG_DEFAULT,
"I have nothing to declare. What about you?", DIAG_DEFAULT);
break;

case 1873418167:
set_dialogue_line(
"So persistent-!", DIAG_SRS);
break;

case 2160036641:
case 2005036466:
choose_dialogue_line(
"Sorry about the records. Less work for the four of us.", DIAG_DEFAULT,
"Let's talk about the weather, or, anything else you aren't prying on me for.", DIAG_DEFAULT);
break;

case 2185834832:
choose_dialogue_line(
"Conflict won't stay dormant like we do. Sometimes we have to meet it half-way.", DIAG_DEFAULT,
"Business as usual. Sorry about the short notice.", DIAG_DEFAULT);
break;

case 2195482758:
choose_dialogue_line(
"You laugh, you lose.", DIAG_DEFAULT,
"I'm not strong, I'm just too lazy to take a loss.", DIAG_DEFAULT);
break;

case 1868240517:
choose_dialogue_line(
"I told you, I'm not signing anything.", DIAG_DEFAULT,
"Don't suppose you have that backscratcher I ordered.", DIAG_DEFAULT);
break;

case 2430633441:
choose_dialogue_line(
"As many times as necessary.", DIAG_DEFAULT, 
"Peace needs a common language, so let's talk the only way we can.", DIAG_DEFAULT);
break;

case 2485539286:
choose_dialogue_line(
"Keep your secrets. I'll have more work to do if you don't.", DIAG_DEFAULT,
"You know how to find me, you don't know how to make me talk.", DIAG_DEFAULT);
break;

case 2561479115:
choose_dialogue_line(
"No talk, all orders. I should be detaining you instead.", DIAG_DEFAULT,
"Don't bother. I'll take the long way there.", DIAG_DEFAULT);
break;

case 2546990424:
choose_dialogue_line(
"Ever tried flying yourself? Lucky day.", DIAG_LAUGH,
"No time to talk to you. Can't let word out that I was here.", DIAG_DEFAULT);
break;

case 2497580275:
set_dialogue_line(
"You know what you're dealing with. You can avoid this.", DIAG_SRS);
break;

case 1996010699:
choose_dialogue_line(
"... Ought to check for contraband. Better not be any Wrastor plushes in there.", DIAG_DEFAULT,
"... Yeah, I didn't want to stay in that hotel room either.", DIAG_DEFAULT);
break;

case 2229887722:
choose_dialogue_line(
"...I'll try to hold back.", DIAG_SUS,
"Sure you wouldn't rather take a nap? I would.", DIAG_DEFAULT);
break;

case 2229832619:
choose_dialogue_line(
"Back to sleep. You and I.", DIAG_DEFAULT,
"Change of plans. Let's take you home.", DIAG_DEFAULT);
break;

case 1995944345:
choose_dialogue_line(
"Sylvanos knows his place, so should you.", DIAG_SRS,
"End of the line. Your spores can't make me any drowsier.", DIAG_DEFAULT);
break;


case 2456542384:
choose_dialogue_line(
"You're speaking my language instead. Let us compare.", DIAG_DEFAULT,
"More plantfolk... but not familiar. I'll judge you after you've had your say.", DIAG_DEFAULT);
break;

case 1877715009:
choose_dialogue_line(
"Say another word and I'll surrender.", DIAG_SRS,
"Please fight me instead.", DIAG_SUS);
break;

case 2006712792:
set_dialogue_line(
"No. I'm confiscating your mic.", DIAG_DEFAULT);
break;

case 2157918622:
set_dialogue_line(
"Has anyone told you your dress sense is... Never mind.", DIAG_SUS);
break;

case 2144710708:
choose_dialogue_line(
"Clever. You brought a weapon that might make me budge.", DIAG_LAUGH,
"Never was a fan of gravity, either.", DIAG_DEFAULT);
break;


case 1867608473:
choose_dialogue_line(
"A natural leader. But are you a diplomat, too?", DIAG_DEFAULT,
"I don't have to fight if you don't have to act.", DIAG_DEFAULT);
break;


case 2229355277:
set_dialogue_line(
"Sending you back where you came from. Some hard feelings.", DIAG_SLEEP);
break;

case 1868756032:
case 2117584528:
case 2297617172:
set_dialogue_line(
"Maybe he'll fall asleep if he inhales me. Best not take the chance.", DIAG_DEFAULT);
break;

case 1993599340:
set_dialogue_line(
"Zzzz...??", DIAG_SLEEP);
break;

case 1941825892:
if (are_there_no_platforms_on_this_stage()) {
    set_dialogue_line(
    "Counterpick FD? Not for long.", DIAG_LAUGH);
}
else {
    set_dialogue_line(
    "Try not to get grabbed. I mean it.", DIAG_DEFAULT);
}
break;

case 1926836320:
set_dialogue_line(
"'Ancient Power'...? Tell me more.", DIAG_DEFAULT);
break;

default:
    if (((player + switchUrl + get_stage_data(SD_ID) + x + y ) mod 10) == 0) {
        choose_dialogue_line(
        "Zzzz...", DIAG_SLEEP,
        "I'm awake... Now let's get this... over w... Zzzz...", DIAG_SLEEP);
    }
break;


    }
}



#define set_dialogue_line
diag = argument0;
diag_index = argument1;

#define choose_dialogue_line
var coinflip;
if (url == switchUrl) coinflip = (player + switchUrl + get_stage_data( SD_ID ) + 2) mod 2;
else coinflip = (player + switchUrl + get_stage_data( SD_ID ) + 2 + x + y) mod 2;

coinflip *= 2;
diag = argument[coinflip];
diag_index = argument[coinflip + 1];
return;


#define are_there_no_platforms_on_this_stage
return (instance_number(asset_get("par_jumpthrough")) == 0);
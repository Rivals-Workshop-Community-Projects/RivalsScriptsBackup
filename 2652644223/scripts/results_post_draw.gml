//results_post_draw.gml
if(winner == player){
    // Create Timer
    if("run_timer" not in self){run_timer = 0}
    run_timer++;
    
    // Code from Frtoud for smuggling hitbox data
    // Relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("results_data" in self)
    {
        other.results_data = results_data;
        break;
    }
    
    //print(results_data.opponent_name);

    run_timer = clamp(run_timer,0,1000);
    var slide_timer = clamp(run_timer-200,0,30);
    var offset_x = 50
    
    if("win_quote_string" not in self)
    {
        if(results_data.num_of_players <= 2)
            win_quote_string = get_win_quote(results_data.opponent_name);
        else
            exit;
    }
        draw_sprite_ext(sprite_get("textbox"),0,view_get_xview()+ease_quadOut(-550,-50,slide_timer,30),310,1,1,0,c_white,1);
        draw_sprite_ext(get_char_info(player, INFO_ICON), 0, view_get_xview()+ease_quadOut(-550,-50,slide_timer,30)+64,324,3,3,0,c_white,1);
        textDraw(view_get_xview()+ease_quadOut(-550,-50,slide_timer,30)+(300), 322, "fName", c_white, 16, 240, 1.5, true, 1, '"'+string(win_quote_string)+'"');

        // draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, ease_quadOut(-550,-50,slide_timer,30)+50,340,2,2,0,c_white,1);
        // draw_sprite_ext(sprite_get("textbox"),0,ease_quadOut(-550,-50,slide_timer,30),310,1,1,0,c_white,1);
        // textDraw(ease_quadOut(-550,-50,slide_timer,30)+(300), 330, "roaMBLFont", c_white, 22, 350, 1, true, 1, '"'+string(win_quote_string)+'"');
}

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));
draw_set_halign(fa_middle); // This is important cause it will cause the text to not align properly
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);

#define get_win_quote(character_name)
{
    var win_quote;
    // Base Cast
    if(results_data.neco == 0 && results_data.color != 31)
    {
        if(character_name == "Zetterburn")
            win_quote = "It was an honor to face a past legend. May you rest in peace."
        else if(character_name == "Forsburn")
            win_quote = "You're nothing like your brother. Your tricks won't work against me."
        else if(character_name == "Clairen")
            win_quote = "I don't know why you drew your blade against a fellow member on your side. Now it's all up to me."
        else if(character_name == "Mollo")
            win_quote = "Your hand-crafted bombs stood no chance against the future, keep your toys off the battlefield."
        else if(character_name == "Wrastor")
            win_quote = "No wonder the Armada fell, they never stood a chance with you as the last line."
        else if(character_name == "Absa")
            win_quote = "Your clouds could be of use to study from, it seems that my gun can learn more from past comings."
        else if(character_name == "Elliana")
            win_quote = "You thought you stood a chance against me with such unstable architecture? Stay away from the skies."
        else if(character_name == "Pomme")
            win_quote = "How sickening that Loxodont would use you to spread propaganda, you've sang your last note."
        else if(character_name == "Kragg")
            win_quote = "Similar to the pillar you've built, you crumbled alongside it."
        else if(character_name == "Maypul")
            win_quote = "Wrapped up in your dreams, your pursuit has left you tied up in your own vines."
        else if(character_name == "Sylvanos")
            win_quote = "A God or not, you fall like the people you were supposed to protect."
        else if(character_name == "Olympia")
            win_quote = "Deflecting my lasers with your crystal fists only made you an easier target."
        else if(character_name == "Orcane")
            win_quote = "Looks like only I was the one who made the last splash. Let's see you come out of your puddle now."
        else if(character_name == "Etalus")
            win_quote = "Between the two of us, you ended up freezing in your hesistation. Shows you how to stay cool."
        else if(character_name == "Ranno")
            win_quote = "A pacifist that you are, I wouldn't have wanted to see your potential if you weren't one."
        
        //Personal Lore
        else if(character_name == "Ducky")    
            win_quote = "Sparring with my past ancestor put things to perspective. Your punches were strong, but your heart shined through."
        else if(character_name == "Kyort")    
            win_quote = "You were the last person to see Ducky and you can't muster the strength to get back up for her?"
        else if(character_name == "Kinunosu")    
            win_quote = "Finally, I can rest. If you're out of the picture, that means Aether will be able to see through the darkness."
        //GENESIS Additions
        else if(character_name == "Untitled Goose") 
            win_quote = "You were just like me. Trying to make history."
        else if(character_name == "Heartbrake") 
            win_quote = "Revenge will only eat you from the inside. There's always someone worth loving."
        else if(character_name == "Jerma") 
            win_quote = "Atleast the furnace will keep running for a bit longer."
        else if(character_name == "Dazz") 
            win_quote = "No more magic tricks for you, little girl. This show is over."
        else if(character_name == "Lode and Puul") 
            win_quote = "Your bond is nothing like I've seen before. You two stick together very well."
        //TGP GANG
        else if(character_name == "Daora")
            win_quote = "Your kind heart shouldn't have to witness these cruel acts, you deserve better than this."

        // Riptide 2024.
        else if(character_name == "Vale Torina") 
            win_quote = "Your faith is misguided, your God is long gone from here."
        else if(character_name == "Ayaka Kinoshita") 
            win_quote = "Axes are better wielded in-hand, you're out of touch."
        else if(character_name == "Valkyrie" || character_name == "Arcuin") 
            win_quote = "No wonder your kind lives on ice. You can't catch up."
        else if(character_name == "Luna") 
            win_quote = "Another time traveller captured, heading back to base."
        else if(character_name == "Nacht") 
            win_quote = "Quite fancy for the time, but swords are out of fashion."
        else if(character_name == "Vakna") 
            win_quote = "Shame, just like as lava would. You cooled off too soon."
        else if(character_name == "Brook" || character_name == "Peppino") 
            win_quote = "Another one in uniform, except you're not fit to serve in war."
        else if(character_name == "Penny") 
            win_quote = "I would've stayed in the shadows if I were you."
        else if(character_name == "Wren") 
            win_quote = "Seems like parents never taught their kids to pick up their toys anymore."
        else if(character_name == "Yono") 
            win_quote = "I didn't expect an early delivery to your grave."
        else if(character_name == "Helios") 
            win_quote = "Maybe you should've stuck with the sharks, the battlefield isn't meant for games."
        else if(character_name == "Usher") 
            win_quote = "There is no rainbow at the end of this rain."
        else if(character_name == "Tomoko") 
            win_quote = "Putting up walls only closed the distance between us, keep your gun up next time."
        else if(character_name == "Kumaki") 
            win_quote = "Possessed by a weapon? That's not something you see everyday."
        else if(character_name == "Alexis") 
            win_quote = "So a magician is never truly out of options, aren't they?"
        else if(character_name == "Hoshimachi Suisei" || character_name == "Gawr Gura") 
            win_quote = "Stick to the big screen, seems like real life was too big for you."
        else if(character_name == "Amanita") 
            win_quote = "Your delusions of grandeur ends here."
        else if(character_name == "Pastelle") 
            win_quote = "Way to leave yourself dry. Atleast the ink didn't mark on my suit.";
        else if(character_name == "Kiku") 
            win_quote = "Your crimes to the healthcare system have gone on long enough! There's no count this time.";
        else if(character_name == "Sakuya Izayoi") 
            win_quote = "Your timing was perfect, but you pissed me off.";
        else if(character_name == "Desperado") 
            win_quote = "What an interesting revolver, maybe there's more to improve on my gun.";
        else if(character_name == "Amaya" || character_name == "Awatsu") 
            win_quote = "You were bound to bind up with that tail. Now slither away!";
        else if(character_name == "Truck-Kun") 
            win_quote = "I knew self-driving cars were never a good idea.";
        else if(character_name == "Putrolce") 
            win_quote = "Sorry kid, I don't have anymore bullets left to feed you.";
        else if(character_name == "Bhadra") 
            win_quote = "I'm not a charity case, all your gold means nothing to me.";
        else if(character_name == "La Reina") 
            win_quote = "I guess wrestling's not all for show, way to sell me on it.";
        else if(character_name == "Qoedil") 
            win_quote = "Suspect down, wait is that a kid under there!?";
        else if(character_name == "Napstablook") 
            win_quote = "Ghosts are real after all, maybe you should stop holding on and fade away.";
        else if(character_name == "Koishi") 
            win_quote = "Obstacle terminated, wait where did she go?";
        else if(character_name == "Hex") 
            win_quote = "Are you supposed to be a squid or something? I'm not interested in seafood.";

        // Riptide
        else if(character_name == "Anglara") 
            win_quote = "All of this trouble for a lantern? You've shown true strength with just your fists alone."
        else if(character_name == "Barr")    
            win_quote = "What a fascinating weapon, you've made quite the impression to keep me on my feet."
        else if(character_name == "Bluey" || character_name == "Fernet" || character_name == "Roekoko" || 
        character_name == "Lumina" || character_name == "Noelle" || character_name == "Hana"  || character_name == "Azi & Mr. baggy")   
            win_quote = "A battlefield is no playground for a kid, stay out of this."
        else if(character_name == "Callie")  
            win_quote = "I appreciate your enthusiasm, but there's no such thing as bright happy days in war."
        else if(character_name == "Candyman")    
            win_quote = "You're quite the wildcard, but there's always a method to your madness."
        else if(character_name == "Chimera") 
            win_quote = "Such a wild animal, you're quite the sight. Your creators shouldn't have done this to you."
        else if(character_name == "Crewmate")    
            win_quote = "Never thought I would see an alien in the past. Keep your knife down."
        else if(character_name == "Donyoku") 
            win_quote = "Next time, you should keep your blood in your body before you go entirely cold."
        else if(character_name == "Epinel")  
            win_quote = "Your gravitational powers could have crushed me into a pulp, but you have much to learn still."
        else if(character_name == "Henry Stickmin")  
            win_quote = "Sorry but your crimes was bound to catch up to you sooner or later."
        else if(character_name == "Lukastar")    
            win_quote = "Another mythical creature? Where did you guys go when the aether needed you the most?"
        else if(character_name == "Lyca")    
            win_quote = "Your arrows will never fly as far as my lasers. Hope you'll adapt to the technology."
        else if(character_name == "Mal") 
            win_quote = "The element to control one's emotions has never been seen in the Aether, you were something else."
        else if(character_name == "Maverick")    
            win_quote = "Looks like I didn't miss out anything in the Armada. You've blown your last whirlwind, Maverick."
        else if(character_name == "N/A") 
            win_quote = "Coming from the abyss, we have barely scratched the surface. What else lies beyond the depths?"
        else if(character_name == "Nade")    
            win_quote = "Seems like my assumptions were right. You couldn't keep up with proper tactics."
        else if(character_name == "Nate")    
            win_quote = "Now get out of the way, your powers is much more suited outside the battlefield."
        else if(character_name == "Future Ducky")    
            win_quote = "Stay down! You were never supposed to be here and we're putting an end to this."
        else if(character_name == "Po & Gumbo")  
            win_quote = "If your cooking involves putting a person into a pot, you need to keep me out of it."
        else if(character_name == "Rin Kaenbyou")    
            win_quote = "Those spirits deserve to rest, you shouldn't be playing with such powers for fun."
        else if(character_name == "Rykenburn")   
            win_quote = "Your evil plans will be exposed sooner or later, what has gotten into you?"
        else if(character_name == "Suitcase")
            win_quote = "Such a fascinating object, the abyss has held more secrets than we thought."
        else if(character_name == "Torga")
            win_quote = "You should've stayed out of sight, a pacifist has no right in the battlefield"
        else if(character_name == "Wally")
            win_quote = "Your grapples are scary. Luckily enough for me, I'm used to being underwater."
        else if(character_name == "Zephrie")
            win_quote = "Trickier and faster than all the creatures I've seen in the Aether. You've earned my respect."
    }
    //Generic Quotes if none are listed above
    if(win_quote == 0)
    {
        if(results_data.neco == 1)
        {
            var winChoices = [
                "have you been blind to the truest perfection? i am built from 1000 years of perfect genetics.",
                "it is just only a game, playing it is always the losing gamble.",
                "i would've shined up-strong on last stock to punish my gameplays.",
                "there is one thing a duck always keeps and its the revolving door.",
                "you like that mix too, huh?",
                "where is the nearest pickle juice bar?"
                ];
        }
        else switch(results_data.color)
        {
            case 31: //Miku
                var winChoices = [
                    "Keep on being Happy! You've sung quite beautifully.",
                    "Onto the next beat! You cannot catch me off-beat!",
                    "You've seen quite a lot, take a deep breath and get ready for the next round!",
                    "Do not blame yourself, it could've gone either way!"
                    ];
                break;
            default:
                var winChoices = [
                    "I have to give it to you, you managed to last longer than I thought.",
                    "Now stay down, you wasted enough energy to show me how useless it all was.",
                    "The ZPD would love to hear what the past was all about. You have been fascinating.",
                    "You managed to leave a scratch on me, I'll make sure the next line of your generation sees it.",
                    "What drives you to fight? I hope that you find that drive in the future.",
                    "Keep an eye, the future is much harsher than what I have done to you."
                    ];
                break;
        }
        win_quote = winChoices[random_func(1,array_length(winChoices), true)];
    }

    return string(win_quote);
}
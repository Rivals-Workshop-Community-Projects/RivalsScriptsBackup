// Synced Var Stuff to ensure winquotes are enabled
split_var = split_synced_var(2,1,1);
//print(split_var);

color_shift = split_var[0];
flag_win_quote_enabled = split_var[1];
flag_round_start_dialog = split_var[2];

/*
print(split_var[0]); // Color_Shift;
print(split_var[1]); // WinQuote
print(split_var[2]); // Round Start Dialog
*/

//results_post_draw.gml
if(flag_win_quote_enabled == true && winner == player){
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
    
    // Set Timer and transparncey Effect
    var duration_for_transparency_effect = 500;
    var current_transparency = run_timer / duration_for_transparency_effect;
    
    // Clamp Values to prevent out of bounds if left waiting on results screen
    current_transparency = clamp(current_transparency,0,1);
    run_timer = clamp(run_timer,0,duration_for_transparency_effect);
    
    run_timer = clamp(run_timer,0,1000);
    var slide_timer = clamp(run_timer-200,0,60);
    var offset_x = 50
    
    if("win_quote_string" not in self){
        if(results_data.num_of_players <= 2)
        win_quote_string = get_win_quote(results_data.opponent_name);
       // print(win_quote_string);
       else
            exit;
    }
        draw_sprite_ext(sprite_get("textbox"),0,ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60),400,0.6,1,0,c_white,1);
        textDraw(ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60)+(240),410,"medFont",c_white,22,350,1,true,1,string(win_quote_string));
        
        // Old Winqoutes before the Ducky Hook Up (THANKS DUCKY)
        //rectDraw(25,325,450,425,c_dkgray,c_white,current_transparency);
        //textDraw(240,331,"medFont",c_white,22,410,1,true,current_transparency,string(win_quote_string));
        
        //draw_rectangle_colour(25, 325, 450, 425, c_blue, c_blue, c_black, c_black, false); // Body
        //draw_rectangle_colour(25, 325, 450, 425, c_white, c_white, c_gray, c_gray, true); // Main Outline
        //draw_rectangle_colour(30, 330, 445, 420, c_white, c_white, c_gray, c_gray, true); // Inside Outline
        
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
    if(character_name == "Zetterburn"){win_quote = "I heard you were reckless but I had no idea of the extent. It is hard to believe you command men under you."}
    if(character_name == "Forsburn"){win_quote = "My student Roekoko has taken inspiration from your abilites. They are a sight to behold."}
    if(character_name == "Clairen"){win_quote = "We may be running out of time to stop Loxodont, we don't have very many practice sessions like this left."}
    if(character_name == "Mollo"){win_quote = "I cant't say I agree with your destructive methods, but any enemy of Loxodont is my friend."}
    if(character_name == "Wrastor"){win_quote = "The air armada is powerful, but you should take care to not fly into thunder storms..."}
    if(character_name == "Absa"){win_quote = "I have studied storm calling from your work. It is an honor to meet and fight you in the flesh."}
    if(character_name == "Elliana"){win_quote = "You are quite resourceful in overcoming your limitations to fight. That reminds me of Baja."}
    if(character_name == "Pomme"){win_quote = "Loxodont has already invaded everything. Even the stage you sing on has been corrupted..."}
    if(character_name == "Kragg"){win_quote = "I am curious to know how you manage to pull a rock out of almost anything. Do you have the power of transmutation?"}
    if(character_name == "Maypul"){win_quote = "Continue fighting for the forest, lest the industrial monsters come for it..."}
    if(character_name == "Sylvanos"){win_quote = "Continue fighting for the forest, lest the industrial monsters come for it..."}
    if(character_name == "Olympia"){win_quote = "I have sparred with your protege Fernet many times. You have trained her well."}
    if(character_name == "Orcane"){win_quote = "I know water elementals come from man diffeent backgrounds, but alas, I was not expecting this..."}
    if(character_name == "Etalus"){win_quote = "Thankfully I am a wolf and that lets me deal with ice and cold a little better than most."}
    if(character_name == "Ranno"){win_quote = "Like you, I do not enjoy fighting. But I am sure we both have our reasons for doing so."}
    if(character_name == "Hodan"){win_quote = "I spend a lot of time in the hot springs. Maybe I will see you there next time."}
    if(character_name == "Ori & Sein"){win_quote = "You are very fast. I am having a hard time keeping up to be honest."}
    if(character_name == "Shovel Knight"){win_quote = "Usually the technology used against me is way more advanced, I was not prepared for something so... medieval."}
    
    //My Characters / BAJA REALS NO WAY?!?!
    if(character_name == "Daora"){win_quote = "What a lifelike impersonator. Roekoko, is that you playing tricks on me?"}
    if(character_name == "Klockwurth"){win_quote = "That was my demonstration that deadly weapons and killing don't need to be the answer, Cosworth."}
    if(character_name == "Roekoko"){win_quote = "I can feel your improvement with every fight Roekoko. It won't be long until you surpass me. "}
    if(character_name == "Baja"){win_quote = "Your jets and fury makes you quite dangerous Baja. I am glad you are on my team"}
    
    //Actual Lore Non Riptide
    if(character_name == "Iroh" || character_name == "Iroh DE"){win_quote = "I will not succumb to the inner beast inside of me like my ancestors. I won't ever be like you, Iroh."}
    
    // Riptide
    if(character_name == "Anglara"){win_quote = "My condolences that my ancestor injured you, please don't hold it against me."} // works
    if(character_name == "Barr"){win_quote = "I do not understand what you are doing to reality and I don't think I want to know."} // workss
    if(character_name == "Bluey"){win_quote = "I swear I have seen a robotic version of you somewhere before."} // works
    if(character_name == "Callie"){win_quote = "Now that we're done fighting, may I bother you for some dating advice?"} // works
    if(character_name == "Candyman"){win_quote = "I must resist the urge inside of me to catch the ball"} // works
    if(character_name == "Chimera"){win_quote = "The bloodlust coarses through your blood. You are what I would become if I ever learned to enjoy killing."} // works
    if(character_name == "Crewmate"){win_quote = "I saw you vent."} // sus
    if(character_name == "Donyoku"){win_quote = "The greed that motivates you frightens me. You will take the world if given the chance."} // works
    if(character_name == "Fernet"){win_quote = "You are getting stronger by the day, Fernet. Soon you will be ready to face the world."} // works
    if(character_name == "Epinel"){win_quote = "Those who mettle with physics are frightening. Take care or you may destroy yourself."} // works
    if(character_name == "Henry Stickmin"){win_quote = "No, you may not steal my golden pipe. You made the wrong choice when you tried that."} // works
    if(character_name == "Lukastar"){win_quote = "The stars are projectors, projecting our lives down to this planet."} // YEAH BOY MODEST MOUSE REFERENCE // works
    if(character_name == "Lyca"){win_quote = "The legends say you fought along side my ancestor... you were the one who weaponizes their own children."} // works
    if(character_name == "Mal"){win_quote = "These strong negative emotions that you weaponize... There is a bad moon rising."} // works
    if(character_name == "Maverick"){win_quote = "Air Armada soldiers fight surprisingly well. I would have thought all that technology would have made you complacent."} // works
    if(character_name == "N/A"){win_quote = "I did not think I would encounter the guardian of the abyss and live to tell the tale."} // works
    if(character_name == "Nade"){win_quote = "You are far too comfortable using weapons of war wildy. You must be put to a stop."} // works
    if(character_name == "Nate"){win_quote = "Are you a child solider? Why is someone so young out here fighting?"} // works
    if(character_name == "Future Ducky"){win_quote = "Your fighting technique is way more refined than most Fire Capital warriors. Most don't go toe to toe with me."} // works
    if(character_name == "Po & Gumbo"){win_quote = "If your cooking is as good as your fighting, I think I may be in for a treat tonight! "} // works
    if(character_name == "Rin Kaenbyou"){win_quote = "I will teach you to treat the dead with respect."} // works
    if(character_name == "Rykenburn"){win_quote = "It is a pleasure to fight you Mr. Rykenburn. I am a big fan of your techniques!"} // works
    if(character_name == "Suitcase"){win_quote = "What sort of hateful evil spirit has possessed this object?"} // works
    if(character_name == "Torga"){win_quote = "Your control over water is commendable. If you have some time, can you show me how you do it?"} // Works
    if(character_name == "Wally"){win_quote = "You are still very strong as always Wally. We should go to the beach when the world is safer."} // works
    if(character_name == "Zephrie"){win_quote = "Your species glides with such grace. I aspire to be half as graceful as you."} // works
    
    // Genesis 2023
    if(character_name == "Arboris"){win_quote = "I can see the forest spirits are angered. If Loxodont gets his way, there will be no forest left...";} // works
    if(character_name == "Business Casual Man"){win_quote = "Your corporate background makes you dispicable. Keep your business away from me.";} // works
    if(character_name == "Dazz"){win_quote = "Your magic is very lovely, but you need more practice to weaponize it effectively.";} // works
    if(character_name == "Gay Fridge"){win_quote = "I should avoid putting unknown herbs in my pipe, there's no way I just fought a fridge.";} // works
    if(character_name == "Glare"){win_quote = "Your command of the electromagnetic spectrum is impressive, I have never seen such magic before.";} // works
    if(character_name == "Hat Kid"){win_quote = "Be careful child! You can get hurt around here!";} // works
    if(character_name == "Heartbrake"){win_quote = "Don't tell me how much you hate love. I have lost more loved ones than you could ever ever hold hate in your heart.";} // works
    if(character_name == "Hana"){win_quote = "I like your phonograph! We had a couple in my old village. We were slow to adopt technology.";} // works
    if(character_name == "Jerma985"){win_quote = "I heard you had a compatriot named _STAR. What ever happened to him?";} // works
    if(character_name == "Lode & Puul"){win_quote = "Next time be considerate of when you use your magnetism, you almost stole my pipe.";} // Works
    if(character_name == "owen"){win_quote = "You look nice, but your use of full automatic assault weapons does deeply concern me...";} //Works
    if(character_name == "Reimu"){win_quote = "My student Roekoko is training to be a shrine maiden much like you. She may need some help to banish evil.";} // works
    if(character_name == "Sheftu"){win_quote = "You fight pretty well for a farmer. I suppose you have no need for weapons, when you can fight with tools";} // works
    if(character_name == "Untitled Goose"){win_quote = "GO AWAY GOOSE, I AM TRYING TO RELAX HERE.";} // works
    if(character_name == "Valley & Death"){win_quote = "You reek of death. You are no ordinary florae, you may be the most evil one I have met yet.";} // works
    if(character_name == "Yuuto Ichika"){win_quote = "Bolders, space ships, magic, is there anything you won't throw at me?";} //works

    
    //Generic Quotes if none are listed above
    if(win_quote == 0){
        var random_seed = random_func(0,6,1);
        //print("random_seed: " + string(random_seed));
        switch(random_seed){
            case 0:
                win_quote = "That was an exciting fight! Now that we're done, would you like some tea?";
            break;
            case 1:
                win_quote = "I am sorry, I may have over done it. Let me use some of my water magic to heal you.";
            break;
            case 2:
                win_quote = "Don't worry, I usually use non-lethal voltage. You will be fine. The deadly voltage is reserved only for pure evil.";
            break;
            case 3:
                win_quote = "When evil hears distant thunder, I want it to shudder in fear.";
            break;            
            case 4:
                win_quote = "Fighting won't bring back those I have lost, but it will prevent it from happening to everyone else.";
            break;            
            case 5:
                win_quote = "A dark distant tide is approaching. Along with it, is a thunder storm. The days of Loxodont are numbered.";
            break;
        }
    }
    
    //print(win_quote)
    return string(win_quote);
}
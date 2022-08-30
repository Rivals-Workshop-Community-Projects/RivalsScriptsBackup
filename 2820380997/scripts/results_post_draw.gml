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
    var slide_timer = clamp(run_timer-420,0,60);
    var offset_x = 50;
    
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
    //print(character_name);
    // Base Cast
    if(character_name == "Zetterburn"){win_quote = "Your attacks are really cool! I think I may need to take some of them for my own..."}
    if(character_name == "Forsburn"){win_quote = "I have studied your work extensively, it is an honor to meet you!"}
    if(character_name == "Clairen"){win_quote = "Training with you is fun! We will defeat Loxodont, so that we may live in peace."}
    if(character_name == "Mollo"){win_quote = "Your bombs are pretty cool! Can I have some? I have some ideas for some cool explosions."}
    if(character_name == "Wrastor"){win_quote = "Your flight is amazing, but you can't fly away when I grab you!"}
    if(character_name == "Absa"){win_quote = "Daora has spoken highly of your techniques! May I ask for an autograph for her?"}
    if(character_name == "Elliana"){win_quote = "Your machines are cool! Can I take a ride in the mech?"}
    if(character_name == "Pomme"){win_quote = "If you ever need a manga artist for your next album, give me a call!"}
    if(character_name == "Kragg"){win_quote = "Trhowing rocks is cool, but I think throwing a copy of yourself is pretty cool too."}
    if(character_name == "Maypul"){win_quote = "I love your tree house! I would love to live in one of my own one day."}
    if(character_name == "Sylvanos"){win_quote = "You are pretty angry Mr. Wolf! We can talk this out! Please relax."}
    if(character_name == "Olympia"){win_quote = "I love your martial arts adventures, it was one of the things that got me into a dojo."}
    if(character_name == "Orcane"){win_quote = "Wow! You are cute! Now that we're done fighting, can I pet you?"}
    if(character_name == "Etalus"){win_quote = "I am from a colder region, I am used to navigating the ice."}
    if(character_name == "Ranno"){win_quote = "I also want to solve all of my problems without fighting, I prefer hugs instead!"}
    if(character_name == "Hodan"){win_quote = "I also enjoy hot springs. Do you know me any around here I could go to?"}
    if(character_name == "Ori & Sein"){win_quote = "My clone and I are also a team! But I have a little more control over her."}
    if(character_name == "Shovel Knight"){win_quote = "Watch where you're swinging that shovel! You could hurt someone!"}
    
    //My Characters / BAJA REALS NO WAY?!?!
    if(character_name == "Daora"){win_quote = "That was a fun training session Daora! What are we getting to eat after this?"}
    if(character_name == "Klockwurth"){win_quote = "I hope you had fun playing with me. I don't want you to be grumpy Mr. Owl."}
    if(character_name == "Roekoko"){win_quote = "My illusions are so real... I think I may even be tricking myself..."}
    if(character_name == "Baja"){win_quote = "Your jetpacks are so cool! Can I try them?"}
    
    //Actual Lore Non Riptide
    if(character_name == "Iroh" || character_name == "Iroh DE"){win_quote = "Your Daora's Grandpa, right? It was nice to meet you!"}
    
    // Riptide
    if(character_name == "Anglara"){win_quote = "Would you know a good place to get Sushi around here Ms. Fish Lady?"} // works
    if(character_name == "Barr"){win_quote = "Wow you can use a bar to attack? All I can do is change the UI for funny tags."} // workss
    //if(character_name == "Bluey"){win_quote = ""} // works
    if(character_name == "Callie"){win_quote = "We should host a dating show one of these days! Think of all the cutie we can talk to!"} // works
    if(character_name == "Candyman"){win_quote = "I am not sure what you would call that sport, but what ever it was, it was fun!"} // works
    if(character_name == "Chimera"){win_quote = "No need to be so angry. Would you feel better if I gave you a hug?"} // works
    if(character_name == "Crewmate"){win_quote = "Both me and my clone are voting Red, they are pretty sus."} // sus
    if(character_name == "Donyoku"){win_quote = "You appear to be bleeding gold! Me and my clone will carry you to the hospital."} // works
    if(character_name == "Fernet"){win_quote = "I love your outfit Fernet! Can we get some milkshakes after this?"} // works
    if(character_name == "Epinel"){win_quote = "Your anger and lack of remorse makes being nice to you very hard, Mr. Hedgehog."} // works
    if(character_name == "Henry Stickmin"){win_quote = "Next heist you plan should be Loxodont's bank. I could help you with that..."} // works
    //if(character_name == "Lukastar"){win_quote = ""} // works
    if(character_name == "Lyca"){win_quote = "A fox that uses wisps made of her own dead children is pretty chilling to fight..."} // works
    if(character_name == "Mal"){win_quote = "No need to be so sad, turn that frown upside down!"} // works
    if(character_name == "Maverick"){win_quote = "You should let me fly with you on your next flight!"} // works
    if(character_name == "N/A"){win_quote = "Daora told me the Abyss was trouble. I can see what she means. No more evil is allowed!"} // works
    if(character_name == "Nade"){win_quote = "Stop swinging those weapons around, if you hurt someone, I won't forgive you!"} // works
    if(character_name == "Nate"){win_quote = "You should be careful, this is a dangerous place for a kid to be hanging around."} // works
    if(character_name == "Future Ducky"){win_quote = "Being a crack shot won't help you when you waste your ammo shooting clones... hehehe...."} // works
    if(character_name == "Po & Gumbo"){win_quote = "You're that famous cook from the Bayou! Can I buy some food from you?"} // works
    if(character_name == "Rin Kaenbyou"){win_quote = "Your wisp is dangerous! What do you feed it?"} // works
    if(character_name == "Rykenburn"){win_quote = "Wow you are very good at hugging! I also like to think I am good at hugging!"} // works
    //if(character_name == "Suitcase"){win_quote = ""} // works
    if(character_name == "Torga"){win_quote = "Don't mind me causing a ruckus. You can continue to meditate after this."} // Works
    if(character_name == "Wally"){win_quote = "That was fun Wally! We should go swimming after this!"} // works
    if(character_name == "Zephrie"){win_quote = "I can throw my clone pretty far, how far do you think I can throw you?"} // works
    
    /*Riptide list
    Maverick
    Barr
    Bluey
    Donyoku
    Future Ducky
    Anglara
    Callie
    Nade
    Po and Gumbo
    Nate
    Lyca
    Mal
    N/A
    Chimera
    Epinel
    Suitcase
    Fernet
    Lukastar
    Wally
    Torga
    Zephire
    Candyman
    Henry Stickman
    Crewmate
    Rin */
    
    //Generic Quotes if none are listed above
    if(win_quote == 0){
        var random_seed = random_func(0,6,1);
        //print("random_seed: " + string(random_seed));
        switch(random_seed){
            case 0:
                win_quote = "That was tons of fun! We should play again sometime!";
            break;
            case 1:
                win_quote = "Fighting and playing is very tiring! We should get something to eat after this.";
            break;
            case 2:
                win_quote = "Did my clone trick you? That's okay, she just wants a hug...";
            break;
            case 3:
                win_quote = "My illusions are getting stronger. Thank you for letting me train with you.";
            break;            
            case 4:
                win_quote = "Don't touch the tails unless I let you. I don't care how fluffy you think they are.";
            break;            
            case 5:
                win_quote = "Don't worry about the burning, my soul fire won't actually scar or burn you.";
            break;
        }
    }
    
    //print(win_quote)
    return string(win_quote);
}
// Synced Var Stuff to ensure winquotes are enabled
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
*/
// Split Var
split_var = split_synced_var(2,1);

// Synced variable overwrite
color_shift = split_var[0];
flag_win_quote_enabled = split_var[1];

/*
print(split_var[0]); // Color_Shift;
print(split_var[1]); // WinQuote
*/

//results_post_draw.gml
if(flag_win_quote_enabled == true && winner == player){
    // Create Timer
    if("run_timer" not in self){run_timer = 0}
    run_timer++;

    // Code from Frtoud for smuggling hitbox data
    // Relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("results_data" in self){
	    other.results_data = results_data;
	    break;
    }
    
    // Set variables for timing and position
    run_timer = clamp(run_timer,0,1000);
    var slide_timer = clamp(run_timer-200,0,60);
    var offset_x = 50;
    
    // Set Winquote
    if("win_quote_string" not in self){
       if(results_data.num_of_players <= 2) {
        win_quote_string = get_win_quote(results_data.opponent_name);
       }
       else{
            exit;
       }
    }
    
    // Draw Actual Sprites
    draw_sprite_ext(sprite_get("textbox"),0,ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60),400,0.6,1,0,c_white,1);
    textDraw(ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60)+(240),410,"medFont",c_white,22,350,1,true,1,string(win_quote_string));
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
    /*
    //print(character_name);
    // Base Cast
    if(character_name == "Zetterburn"){win_quote = ""}
    if(character_name == "Forsburn"){win_quote = ""}
    if(character_name == "Clairen"){win_quote = ""}
    if(character_name == "Mollo"){win_quote = ""}
    if(character_name == "Wrastor"){win_quote = ""}
    if(character_name == "Absa"){win_quote = ""}
    if(character_name == "Elliana"){win_quote = ""}
    if(character_name == "Pomme"){win_quote = ""}
    if(character_name == "Kragg"){win_quote = ""}
    if(character_name == "Maypul"){win_quote = ""}
    if(character_name == "Sylvanos"){win_quote = ""}
    if(character_name == "Olympia"){win_quote = ""}
    if(character_name == "Orcane"){win_quote = ""}
    if(character_name == "Etalus"){win_quote = ""}
    if(character_name == "Ranno"){win_quote = ""}
    if(character_name == "Hodan"){win_quote = ""}
    if(character_name == "Ori & Sein"){win_quote = ""}
    if(character_name == "Shovel Knight"){win_quote = ""}
    */
    //My Characters / BAJA REALS NO WAY?!?!
    //if(character_name == "Daora"){win_quote = "That was a fun training session Daora! What are we getting to eat after this?"}
    //if(character_name == "Klockwurth"){win_quote = "I hope you had fun playing with me. I don't want you to be grumpy Mr. Owl."}
    //if(character_name == "Roekoko"){win_quote = "My illusions are so real... I think I may even be tricking myself..."}
    //if(character_name == "Baja"){win_quote = "Your jetpacks are so cool! Can I try them?"}
    /*
    //Actual Lore Non Riptide
    if(character_name == "Iroh" || character_name == "Iroh DE"){win_quote = ""}
    
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
    */
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
                win_quote = "Next time, bring a gun to a gun fight.";
            break;
            case 1:
                win_quote = "Come at me like that again and it'll be the last mistake you ever make.";
            break;
            case 2:
                win_quote = "I can't keep scrapping like this, I'm getting too old for this.";
            break;
            case 3:
                win_quote = "There is no middle ground, either you're against Loxodont, or for him.";
            break;            
            case 4:
                win_quote = "One hundred decibels turns to one, one bullet, one empty head...";
            break;            
            case 5:
                win_quote = "Don't ask me the time, I can't see the clock mounted to my face.";
            break;
        }
    }
    
    //print(win_quote)
    return string(win_quote);
}
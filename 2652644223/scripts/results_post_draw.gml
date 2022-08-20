//results_post_draw.gml
if(winner == player){
    // Create Timer
    if("results_timer" not in self){results_timer = 0}
    results_timer++;
    
    // Code from Frtoud for smuggling hitbox data
    // Relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("results_data" in self)
    {
        other.results_data = results_data;
        break;
    }
    
    //print(results_data.opponent_name);

    results_timer = clamp(results_timer,0,1000);
    var slide_timer = clamp(results_timer-420,0,60);
    var offset_x = 50
    
    if("win_quote_string" not in self)
    {
        if(results_data.num_of_players <= 2)
            win_quote_string = get_win_quote(results_data.opponent_name);
        else
            exit;
    }
    
        draw_sprite_ext(sprite_get("textbox"),0,ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60),400,0.6,1,0,c_white,1);
        textDraw(ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60)+(240),410,"medFont",c_white,22,350,1,true,1,string(win_quote_string));
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
    if(character_name == "Zetterburn")
        win_quote = "It was an honor to face a past legend. May you rest in peace."
    if(character_name == "Forsburn")
        win_quote = "You're nothing like your brother. Your tricks won't work against me."
    if(character_name == "Clairen")
        win_quote = "I don't know why you drew your blade against a fellow member on your side. Now it's all up to me."
    if(character_name == "Mollo")
        win_quote = "Your hand-crafted bombs stood no chance against the future, keep your toys off the battlefield."
    if(character_name == "Wrastor")
        win_quote = "No wonder the Armada fell, they never stood a chance with you as the last line."
    if(character_name == "Absa")
        win_quote = "Your clouds could be of use to study from, it seems that my gun can learn more from past comings."
    if(character_name == "Elliana")
        win_quote = "You thought you stood a chance against me with such unstable architecture? Stay away from the skies."
    if(character_name == "Pomme")
        win_quote = "How sickening that Loxodont would use you to spread propaganda, you've sang your last note."
    if(character_name == "Kragg")
        win_quote = "Similar to the pillar you've built, you crumbled alongside it."
    if(character_name == "Maypul")
        win_quote = "Wrapped up in your dreams, your pursuit has left you tied up in your own vines."
    if(character_name == "Sylvanos")
        win_quote = "A God or not, you fall like the people you were supposed to protect."
    if(character_name == "Olympia")
        win_quote = "Deflecting my lasers with your crystal fists only made you an easier target."
    if(character_name == "Orcane")
        win_quote = "Looks like only I was the one who made the last splash. Let's see you come out of your puddle now."
    if(character_name == "Etalus")
        win_quote = "Between the two of us, you ended up freezing in your hesistation. Shows you how to stay cool."
    if(character_name == "Ranno")
        win_quote = "A pacifist that you are, I wouldn't have wanted to see your potential if you weren't one."
    
    //TGP GANG
    if(character_name == "Daora")
        win_quote = "Your kind heart shouldn't have to witness these cruel acts, you deserve better than this."
    // Riptide
    if(character_name == "Anglara") 
        win_quote = "All of this trouble for a lantern? You've shown true strength with just your fists alone."
    if(character_name == "Barr")    
        win_quote = "What a fascinating weapon, you've made quite the impression to keep me on my feet."
    if(character_name == "Bluey" || character_name == "Fernet")   
        win_quote = "A battlefield is no playground for a kid, stay out of this."
    if(character_name == "Callie")  
        win_quote = "I appreciate your enthusiasm, but there's no such thing as bright happy days in war."
    if(character_name == "Candyman")    
        win_quote = "You're quite the wildcard, but there's always a method to your madness."
    if(character_name == "Chimera") 
        win_quote = "Such a wild animal, you're quite the sight. Your creators shouldn't have done this to you."
    if(character_name == "Crewmate")    
        win_quote = "Never thought I would see an alien in the past. Keep your knife down."
    if(character_name == "Donyoku") 
        win_quote = "Next time, you should keep your blood in your body before you go entirely cold."
    if(character_name == "Epinel")  
        win_quote = "Your gravitational powers could have crushed me into a pulp, but you have much to learn still."
    if(character_name == "Henry Stickmin")  
        win_quote = "Sorry but your crimes was bound to catch up to you sooner or later."
    if(character_name == "Lukastar")    
        win_quote = "Another mythical creature? Where did you guys go when the aether needed you the most?"
    if(character_name == "Lyca")    
        win_quote = "Your arrows will never fly as far as my lasers. Hope you'll adapt to the technology."
    if(character_name == "Mal") 
        win_quote = "The element to control one's emotions has never been seen in the Aether, you were something else."
    if(character_name == "Maverick")    
        win_quote = "Looks like I didn't miss out anything in the Armada. You've blown your last whirlwind, Maverick."
    if(character_name == "N/A") 
        win_quote = "Coming from the abyss, we have barely scratched the surface. What else lies beyond the depths?"
    if(character_name == "Nade")    
        win_quote = "Seems like my assumptions were right. You couldn't keep up with proper tactics."
    if(character_name == "Nate")    
        win_quote = "Now get out of the way, your powers is much more suited outside the battlefield."
    if(character_name == "Future Ducky")    
        win_quote = "Stay down! You were never supposed to be here and we're putting an end to this."
    if(character_name == "Po & Gumbo")  
        win_quote = "If your cooking involves putting a person into a pot, you need to keep me out of it."
    if(character_name == "Rin Kaenbyou")    
        win_quote = "Those spirits deserve to rest, you shouldn't be playing with such powers for fun."
    if(character_name == "Rykenburn")   
        win_quote = "Your evil plans will be exposed sooner or later, what has gotten into you?"
    if(character_name == "Suitcase")
        win_quote = "Such a fascinating object, the abyss has held more secrets than we thought."
    if(character_name == "Torga")
        win_quote = "You should've stayed out of sight, a pacifist has no right in the battlefield"
    if(character_name == "Wally")
        win_quote = "Your grapples are scary. Luckily enough for me, I'm used to being underwater."
    if(character_name == "Zephrie")
        win_quote = "Trickier and faster than all the creatures I've seen in the Aether. You've earned my respect."

    //Generic Quotes if none are listed above
    if(win_quote == 0){
        var random_seed = random_func(0,6,1);
        switch(random_seed){
            case 0:
                win_quote = "I have to give it to you, you managed to last longer than I thought.";
            break;
            case 1:
                win_quote = "Now stay down, you wasted enough energy to show me how useless it all was.";
            break;
            case 2:
                win_quote = "The ZPD would love to hear what the past was all about. You have been fascinating.";
            break;
            case 3:
                win_quote = "You managed to leave a scratch on me, I'll make sure the next line of your generation sees it.";
            break;            
            case 4:
                win_quote = "What drives you to fight? I hope that you find that drive in the future.";
            break;            
            case 5:
                win_quote = "Keep an eye, the future is much harsher than what I have done to you.";
            break;
        }
    }
    
    //print(win_quote)
    return string(win_quote);
}
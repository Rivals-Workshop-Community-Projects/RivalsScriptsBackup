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
if(winner == player){
    // Create Timer
    if("run_timer" not in self){run_timer = 0}
    run_timer++;
    // Code from Frtoud for smuggling hitbox data
    // Relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox")) if ("results_data" in self){
	    other.results_data = results_data;
	    break;
    }
    // Exit if the SL mode or win quotes are nto enabled, reset portrait
    if("results_data" not in self){set_ui_element(UI_WIN_PORTRAIT, get_char_info(player, INFO_PORTRAIT));exit;}
    
    // Set SL Portrait
    if(results_data.SL_mode_active){set_ui_element(UI_WIN_PORTRAIT, sprite_get("sl_portrait"));}
	else{set_ui_element(UI_WIN_PORTRAIT, get_char_info(player, INFO_PORTRAIT));}
    
    if(flag_win_quote_enabled == true){
	    // Set variables for timing and position
	    run_timer = clamp(run_timer,0,1000);
	    var slide_timer = clamp(run_timer-200,0,60);
	    var offset_x = 50;
	    
	    // Set Winquote
	    if("win_quote_string" not in self){
	       if(results_data.num_of_players <= 2) {
	       		// Override Section, the else section will run the function as normal.
		       	// Richter Override
		       	if(get_player_color(player) == 28){ // Richter Alt  && color_shift == false for when colors are over 28
		       		win_quote_string = "Your words are as empty as your soul. Mankind ill needs a savior such as you."
		       	}
		       	// Spyker's Override for Byte Skin
   		       	if(get_player_color(player) == 17 && color_shift == true){
		       		win_quote_string = "I'm the coolest wolf ever!"
		       	}
		       	
		        else win_quote_string = get_win_quote(results_data.opponent_name);
	       }
	       else{
	            exit;
	       }
	    }
	    
	    // Draw Actual Sprites
	    draw_sprite_ext(sprite_get("textbox"),0,ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60),400,0.6,1,0,c_white,1);
	    textDraw(ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60)+(240),410,"medFont",c_white,22,350,1,true,1,string(win_quote_string));
    }
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
	// Use win quote for multiple quotes, otherwise use win_quote for a single quote.
    var win_quote_array = [];
    var win_quote;

/* Multi Quote Template
	if(character_name == ""){
    	win_quote_array = [
    	"",
    	"",
    	""
		]
    }
    */
    
    //Mirror Match
    if(character_name == "Iroh" || character_name == "Iroh DE"){win_quote = "The only one that can beat me... is me"}
    
    // Base Cast 
    if(character_name == "Zetterburn"){
    	win_quote_array = [
		"Hodan taught you well. But he didn't teach you everything.",
         "I'm glad Hodan sent you. I was beginning to think I'd been forgotten..."
		]
    }
    
    if(character_name == "Pomme"){
    	win_quote_array = [
    	"It should have been me!",
    	"This time, beeing floaty didnt help you"
		]
    }
    
	if(character_name == "Hodan"){
    	win_quote_array = [
    	"What I ever did, I did to make you proud!",
    	"I have come home, master."
		]
    }
	if(character_name == "Sylvanos"){
    	win_quote_array = [
    	"learn how to howl like a real wolf",
    	"Plants are for bugs, not a wolf"
		]
    }
    
    if(character_name == "Olympia"){
    	win_quote_array = [
    	"Dumb rocks cant beat my golden claws",
    	"Close, but in the end, the strongest always wins",
    	"THAT WAS FUN! LETS FIGHT AGAIN!"
		]
    }
    
    // Lore Quotes
    if(character_name == "Anglara"){
    	win_quote_array = [
    	"Was that a fight? I didn't even notice.",
    	"You can't defeat me! You're nothing but a small...dumb... fish!",
    	"Last time you got lucky I wasn't the main attraction. Now it's different"
		]
    }
    
    if(character_name == "Torren"){
    	win_quote_array = [
    	"Next time, I won't only take your tail...",
    	"Didn't you learn your leason the last time?"
		]
    }
    
    if(character_name == "Lode" || character_name == "Lode DE"){
    	win_quote_array = [
			"Easy...",
        	"You're about to become my new pants"
		]
    }
    
    if(character_name == "Rykenburn"){
    	win_quote_array = [
    	"I thought you were supposed to be stronger...",
    	"And this is the fire capital's commander? Pathethic...",
    	"Just like when we were kids"
		]
    }
    
    if(character_name == "Lyca"){
    	win_quote_array = [
    	"Say hi to your kids for me",
    	"Do I need to remind you who's the strongest again?",
    	"Ya missed"
		]
    }
    
    if(character_name == "Fernet"){
    	win_quote_array = [
    	"You're as weak as your teacher",
    	"Thought Olympia's pupil would be stronger. Disappointing..."
		]
    }
    
	if(character_name == "Daora"){
    	win_quote_array = [
    	"Is this what our race will become? I'll never have kids",
    	"Water is for weaklings",
    	"Why do you have horns?",
    	"Are you sure you're an SL wolf? You fight like a fish"
		]
    }
    
    // Single Quote Section
    if(character_name == "SSL Blackmage"){win_quote = "Did you know that the critically acclaimed MMORPG Final Fantasy XIV has a free trial..."} 
    if(character_name == "Kaboom"){win_quote = "Keep it up kiddo"}
    
    // Generic Win Quotes
    if(array_length(win_quote_array) == 0){
    	win_quote_array = [
    		"Nope. Not a contender",
    		"Look out, there's a new boss around here",
		    "You should stay on the ground, unless you don't want to walk again",
		    "Violence is my business. And business is booming",
			"Trash will always be trash",
			"That's a concussion"
    		]
    }
    //Randomizer Seed if none are listed above are set or there is an array
    if(win_quote == 0){
    	var num_of_win_quotes = array_length(win_quote_array);
    	//print(num_of_win_quotes);
        var random_seed = random_func(0,num_of_win_quotes,1);
        switch(random_seed){
            case 0:
                win_quote = win_quote_array[0];
            break;
            case 1:
                win_quote = win_quote_array[1];
            break;
            case 2:
                win_quote = win_quote_array[2];
            break;
            case 3:
                win_quote = win_quote_array[3];
            break;            
            case 4:
                win_quote = win_quote_array[4];
            break;            
            case 5:
                win_quote = win_quote_array[5];
            break;
        }
    }
    
    //print(win_quote)
    return string(win_quote);
}
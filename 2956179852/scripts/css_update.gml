if(!instance_exists(cursor_id)) exit;

//button stuff
var cur_x = get_instance_x(cursor_id);
var cur_y = get_instance_y(cursor_id);

if (cur_x > x+voice_button_pos[0] && cur_x < x+voice_button_pos[2] && cur_y > y+voice_button_pos[1] && cur_y < y+voice_button_pos[3] && !instance_exists(oTestPlayer)){
    if(!voice_hover){
        voice_hover = true;  
        voicebutton = (voice == 0)?1:4;
    }
    if (menu_a_pressed){
        voice = (voice==0);
        set_synced_var(player, voice);
        voicebutton = (voice == 0)?2:5;
        sound_play(asset_get((voice==0)?"mfx_forward":"mfx_input_back"));
        voice_hover = false;
    }    
}else{
    voicebutton = (voice == 0)?0:3; 
    voice_hover = false;
}suppress_cursor = voice_hover;

css_draw_time++;
alt_fix = player;

if("css_timer" not in self)css_timer = 0; //rivals
css_timer += 1;

if(css_timer == 1800)sound_play(sound_get("if you wanna move on to the game press button 2"),false,noone,2);

if(css_draw_time == 1){
    sound_stop(sfx);
	switch(alt_cur){
	    case 0:case 4:
	        array = [
	        	"no",
	        	"enclosed_instruction_book",
	        	"toast"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]));	        
	    break;	
	    case 1:
	        array = [
	        	"over there",
	        	"spaghetti",
	        	"and_youve_gotta_help_us",
	        	"bring a light"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]),false,noone,2);	        
	    break;
	    case 3:
	        array = [
	        	"bowserlaugh"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]));	        
	    break;	
	    case 9:
	        array = [
	        	"gnorris_be_more_careful",
	        	"gnorris_now_go",
	        	"gnorris_powerful_wand",
	        	"gnorris_special_creations",
	        	"gnorris_powerful_wand2"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]));	        
	    break;
	    case 10:
	        array = [
	        	"richer",
	        	"rubies",
	        	"rope",
	        	"lamp oil",
	        	"bombs",
	        	"voiceofgod",
	        	"mmm"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]));	        
	    break;	
	    case 11:
	        array = [
	        	"double my salary",
	        	"snooping as usual i see",
	        	"pingas"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]),false,noone,2);	        
	    break;	    
	    case 12:
	        array = [
	        	"enough",
	        	"dinner",
	        	"kinglaugh",
	        	"triforce",
	        	"peace_strive_for"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]));	        
	    break;
	    case 13:
	        array = [
	        	"well excuse me princess"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]),false,noone,2);	        
	    break;	    
	    case 22:
	        array = [
	        	"monopoly very skillfull",
	        	"monopoly money",
	        	"monopoly byebyenow",
	        	"monopoly woo",
	        	"monopoly you want more"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]));	        
	    break;
	    case 23:
	        array = [
	        	"chaos_the_world_shadow3_edit",
	        	"FUCK",
	        	"FUCK2"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]));	        
	    break;		    
	    case 30:
	        array = [
	        	"try your best to match my shot",
	        	"inside_mine",
	        	"craig_instinct",
	        	"just missed it a little"
	        ];
	        rand = random_func(1, array_length(array), true);
	        sfx = sound_play(sound_get(array[rand]),false,noone,2);	        
	    break;
	}
}
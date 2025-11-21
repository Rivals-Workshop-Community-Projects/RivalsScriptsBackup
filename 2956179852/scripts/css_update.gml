cpu_hover_update(); //put this at the VERY TOP of the file.

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

if(get_char_info(player,UI_CHARSELECT) != sprite_get("invis")){
	set_ui_element(UI_CHARSELECT,sprite_get("invis"));	
}

for(var i = 1; i <= 4; i++) {
    if cur_x == clamp(cur_x, portrait_bounds[@0], portrait_bounds[@2]) && cur_y == clamp(cur_y, portrait_bounds[@1], portrait_bounds[@3]){
        if(!did_flash){portrait_flash = 10;did_flash = true;}
    }else{
    	did_flash = false;
    }	
}
if(portrait_flash > 0)portrait_flash--;
#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);

if (is_cpu) {
    var pb = plate_bounds, cs = cursors;
    if (cpu_is_hovered) {
        var c = cs[@cpu_hovering_player]
        cursor_id = c;
        var cx = get_instance_x(c),
            cy = get_instance_y(c);
        if (cpu_hover_time < 10) cpu_hover_time++;
        if (cpu_color_swap_time < 5) cpu_color_swap_time++;
        if (cx != clamp(cx, pb[0],pb[2]) || cy != clamp(cy, pb[1],pb[3])) {
            cpu_is_hovered = false;
            c = cs[@p];
            cursor_id = c;
        }
    } else {
        var hplayer = get_new_hovering_player();
        if (cpu_hover_time > 0) cpu_hover_time--;
        if (hplayer != -1) {
            cpuh_new_color = get_player_hud_color(hplayer);
            if (cpu_hover_time > 0) {
                cpuh_prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else { //if the player indicator is not being displayed already
                cpuh_prev_color = cpuh_new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cs[@hplayer];
        }
    }
}

#define get_new_hovering_player()
var pb = plate_bounds, cs = cursors;
for (var i = 1; i <= 4; i++) {
    var c = cs[@i];
    var cx = get_instance_x(c);
    var cy = get_instance_y(c);
    if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) {
        return i;
    } 
}
return -1;
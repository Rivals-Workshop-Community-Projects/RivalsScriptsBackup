voice_hover = false;

css_draw_time = 0;
alt_cur = 0;
alt_prev = 0;
portrait = 0;

voicemode = get_synced_var(player);
voicebutton = 0;
voicebutton = voicemode*3+(voicebutton+4) % 4;
button_cool = 0;

voice = noone;
sfx = noone;

sound_stop(sound_get("hover loop"));
sound_stop(sound_get("hornet_loop"));
sound_stop(sound_get("alfred_announcement"));

//cpu_prev_lvl = temp_level;
css_timer = 0;

voice_button_pos = [
    74,
    178,
    74 + sprite_get_width(sprite_get("css_button"))+10,
    178 + sprite_get_height(sprite_get("css_button"))+10
];
 
if(player == 0){
    voice_button_pos[0] = 42;
    voice_button_pos[1] = 148;
    voice_button_pos[2] = 42 + sprite_get_width(sprite_get("css_button"))+10;
    voice_button_pos[3] = 148 + sprite_get_height(sprite_get("css_button"))+10;    
}

if(get_player_hud_color(player) == 8421504){
    voice_button_pos = [
        62,
        178,
        62 + sprite_get_width(sprite_get("css_button"))+10,
        178 + sprite_get_height(sprite_get("css_button"))+10
    ];
}


cpu_hover_init(); //put this anywhere above your #defines

//as always, #defines go at the bottom of the script.
#define cpu_hover_init()
    cpu_hovering_player = -1; //the current player that's hovering the cpu. -1 for nobody
    cpu_is_hovered = -1; //whether the cpu is hovered currently.
    cpu_hover_time = 0; //the timer for the cpu hover indicator
    cpu_color_swap_time = 0; //the timer for the cpu indicator's smooth color swap
    cpuh_prev_color = c_gray;
    cpuh_new_color = c_gray;
    
    var c = [-4,-4,-4,-4,-4];
    with (asset_get("cs_playercursor_obj")) { //this sets the cursor array
        c[get_instance_player(self)] = self;
    }
    cursors = c;
    
    x = floor(x); //hehe
    y = floor(y);
    plate_bounds = [x,y,x+219,y+207]; //boundaries of the player plate
    portrait_bounds = [x+10,y+10,x+210,y+151]; //boundaries of the player portrait. unused but useful
    cpu_hover_sprite = sprite_get("cpu_controllingplayer_outline"); //the outline sprite.
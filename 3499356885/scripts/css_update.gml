//Voice Button
if(!instance_exists(cursor_id)) exit;

voice_button_x = x+176;
voice_button_y = y+36;

var cursorX = get_instance_x(cursor_id);
var cursorY = get_instance_y(cursor_id);

var button_width = sprite_get_width(sprite_get("css_voice"));
var button_height = sprite_get_height(sprite_get("css_voice"));

//Check if cursor is hovering voice toggle
if (cursorX >= voice_button_x && cursorX <= voice_button_x+button_width)
&& (cursorY >= voice_button_y && cursorY <= voice_button_y+button_height)
{
    css_voice_button_hover = true;
}
else{
    css_voice_button_hover = false;
}

//If hovering, can click button
if css_voice_button_hover{
    
    var happy_voice = ["VFX_Taunt" , "VFX_Strong_2" ];
    var sad_voice = ["VFX_Death_1" , "VFX_Death_2"];
    var cur_voice;
    
    //Supprss cursor (helps not change alts)
    suppress_cursor = true;
    
    //Press the button
    if menu_a_pressed{
        sound_play(asset_get("mfx_forward"));
        css_voice_button_press = true;
        css_voice_on = !css_voice_on;
        set_synced_var(player, css_voice_on);
        
        //Play a funny voice
        switch css_voice_on{
            case 0: cur_voice = happy_voice; break;
            case 1: cur_voice = sad_voice; break;
        }
        
        sound_play(sound_get(cur_voice[random_func(0, 2, true)]));
    }
    else{
        css_voice_button_press = false;
    }
    
}
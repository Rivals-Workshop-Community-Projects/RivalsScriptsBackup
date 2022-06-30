
if("css_open" not in self) exit;



if(css_open == false && (get_instance_x(cursor_id) >= x + 128 && get_instance_x(cursor_id) <= x + 212) && (get_instance_y(cursor_id) >= y + 113 && get_instance_y(cursor_id) <= y + 141)){
    suppress_cursor = true;
    if(menu_a_pressed){
        css_open = true;
        sound_play(asset_get("mfx_confirm"));
        
        for(var i = 0; i <= 3; i++){
            for(var j = 0; j <= 2; j++){
                specs_chosen[i, j] = true;  //determines what icons are drawn on the menu
            }
        }
        menu_dir = -1;                      //returns 0 for up, 1 for right, 2 for down, and -1 for left and idle
        prev_dir = -1;                      //used for input lockout so you pressing a direction once doesn't register every frame
        active_col = 0;                     //used for player selection
    }
}
if(css_open == true){
    suppress_cursor = true;
    //close menu
    if(menu_b_pressed){
        css_open = false;
        sound_play(asset_get("mfx_back"));
    }
    menu_close = true;
    if(up_down){
        menu_dir = 0;
    }else if(down_down){
        menu_dir = 2;
    }else if(right_down){
        menu_dir = 1;
    }else if(menu_y_down){ //random
        menu_dir = 69;
    }else{
        menu_dir = -1;
    }
    if(active_col < 4){
        if(menu_dir != -1 && menu_dir != 69 && menu_dir != prev_dir){
            specials[active_col] = menu_dir;
            sound_play(asset_get("mfx_change_color"));
            for(var i = 0; i < 3; i++){
                if(i != menu_dir){
                    specs_chosen[active_col, i] = false;;
                }
            }
            active_col++;
        }else if(menu_dir == 69 && menu_dir != prev_dir){
            var randomspec = floor(random_func( 0, 3, false ));
            //print_debug(string(randomspec));
            specials[active_col] = randomspec;
            sound_play(asset_get("mfx_change_color"));
            for(var i = 0; i < 3; i++){
                if(i != randomspec){
                    specs_chosen[active_col, i] = false;
                }
            }
            active_col++;
        }
        prev_dir = menu_dir;
    }
    if(active_col >= 4){
        css_open = false;
        //set synced number to our chunk
        synced_number = generate_specials_chunk(specials);
        
        set_synced_var(player, synced_number);
    }
}

#define generate_specials_chunk(spec_arr)
//generates the special chunk for synced var, code by supersonic

// chunk format:
// 2 bits per special, dd uu ff nn
// 8 bits total length
var chunk = 0;
//set specials from array, doing it backwards tho. i read it right to left in init
var len = array_length(spec_arr)-1
for (var i = len; i >= 0; i--) {
    //print(`${i} = ${spec_arr[i]}`); //debug print woo
    if (i != len)
        chunk = chunk << 2; //bitshift left 2 to make room for the next value
    chunk += (spec_arr[i] + 1); //add the special's value
}

return chunk;

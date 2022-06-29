var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "";
patch_day = "";
patch_month = "";
 
var num_alts = 12;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Swordfighter";
alt_name[2]  = "Gunner";
alt_name[3]  = "Matt";
alt_name[4]  = "Flying Man";
alt_name[5]  = "Team Rocket";
alt_name[6]  = "Martial Artist";
alt_name[7]  = "Spring Man";
alt_name[8]  = "Miiku";
alt_name[9]  = "Purple";
alt_name[10] = "Early Access";
alt_name[11] = "Mii Baller";
/*alt_name[12] = "woag";
alt_name[12] = "woag";
alt_name[13] = "woag";
alt_name[14] = "woag";
alt_name[15] = "woag";
*/

//Patch
 
draw_set_halign(fa_left);
 
//textDraw(temp_x + 2, temp_y + 34, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 //Alt

if(!css_open){
    rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
     
    for(i = 0; i < num_alts; i++){
        var draw_color = (i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * i;
        rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
    }
}
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);


//Hyuponia CSS cursor detection-------------------------------------------------
//this part does defining and debug display
var tmp_cur = 0;
var tmp_i = [0, 0, 0, 0, 0];
var tmp_x = [0, 0, 0, 0, 0];
var tmp_y = [0, 0, 0, 0, 0];
with(asset_get("cs_playercursor_obj")){
    tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4 //here i try to make it so that the number occupies the first possible empty slot
    tmp_i[tmp_cur] = 1
    tmp_x[tmp_cur] = get_instance_x( self )
    tmp_y[tmp_cur] = get_instance_y( self )
    //print_debug(string(get_instance_player( self ))) //this didnt work iirc
}
var tmp_pt = abs(player-5)-1 //basically, the order of the player cursor loaded is kinda weird. iirc it loads from the last player to the first. so in here i try to reverse the order, then use it to compare against the player number. what i mean by that, is that player 4 is loaded first, then player 3 is loaded second, etc.
//textDraw(temp_x + 2, temp_y - 100, "fName", c_red, 0, 1000, 1, true, 1, string(player));
//textDraw(temp_x + 2, temp_y - 80, "fName", c_white, 0, 1000, 1, true, 1, string(tmp_x[tmp_pt])+" "+string(tmp_y[tmp_pt]));

//------------------------------------------------------------------------------


shader_end();
//special nums
if(!css_open){
    draw_sprite(sprite_get("css_specslots"), 0, temp_x + 122, temp_y + 107);
    
    //textDraw(temp_x + 130, temp_y + 90, "fName", c_white, 0, 1000, 1, true, 1, string());
    
    textDraw(temp_x + 130, temp_y + 115, "fName", c_white, 0, 1000, 1, true, 1, string(specials[0] + 1) + "  " + string(specials[1] + 1) + "  "
         + string(specials[2] + 1) + "  " + string(specials[3] + 1) + "  ");
    
    if((tmp_x[tmp_pt] >= temp_x + 122 && tmp_x[tmp_pt] <= temp_x + 204) && (tmp_y[tmp_pt] >= temp_y + 107 && tmp_y[tmp_pt] <= temp_y + 135)){
        draw_sprite_ext(sprite_get("css_specslots_glow"), 0, temp_x + 122, temp_y + 107, 1, 1, 0, c_white, 0.4);
    }
}

if(initialized < 12 && initialized_loop > 0){
    draw_sprite(sprite_get("css_slotpulse"), floor(initialized/4), temp_x + 111, temp_y + 97);
    initialized++;
    if(initialized == 12 && initialized_loop > 0){
        initialized = 0;
        initialized_loop--;
    }
}


//menu open
if(css_open){
    draw_sprite(sprite_get("css_bg"), 0, temp_x + 1, temp_y + 1);
    draw_sprite_ext(sprite_get("css_arrows"), 0, temp_x + 1, temp_y + 1, 1, 1, 0, get_player_hud_color(player), 1.0);
    if(up_down){
        draw_sprite_ext(sprite_get("css_arrowglow"), 0, temp_x + 1, temp_y + 1, 1, 1, 0, c_white, 0.7);
    }else if(right_down){
        draw_sprite_ext(sprite_get("css_arrowglow"), 1, temp_x + 1, temp_y + 1, 1, 1, 0, c_white, 0.7);
    }else if(down_down){
        draw_sprite_ext(sprite_get("css_arrowglow"), 2, temp_x + 1, temp_y + 1, 1, 1, 0, c_white, 0.7);
    }
    
    var menuy = 28;
    var i;
    for(var menux = 35; menux <= 174; menux += 42){
        menuy = 27;
        switch (menux){
            case 35:
                var specstripname = "hud_nspecs";
                i = 0;
                break;
        
            case 77:
                specstripname = "hud_fspecs";
                i = 1;
                break;
        
            case 119:
                specstripname = "hud_uspecs";
                i = 2;
                break;
        
            case 161:
                specstripname = "hud_dspecs";
                i = 3;
                break;
        }
        for(var j = 0; j < 3; j++){
            if(specs_chosen[i, j] == true){
                draw_sprite(sprite_get(specstripname), j, temp_x + menux, temp_y + menuy);
            }
            menuy += 38;
        }
    }
    var width = 34 + (42 * (active_col + 1));
    draw_sprite_part_ext(sprite_get("css_blackout"), 0, width, 0, 200 - width, 142, temp_x + 1 + width, temp_y + 1, 1, 1, c_black, 0.5);
}
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
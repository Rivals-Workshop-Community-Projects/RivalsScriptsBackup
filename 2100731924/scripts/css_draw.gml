// This is an edit of Muno's CSS template: https://pastebin.com/uquifNY8
var temp_x = x + 8; // the base x position
var temp_y = y + 9; // the base y position

// the patch version of your character to be displayed [Edit necessary]
#macro PATCH_VER "3.14"
// the patch day of your character to be displayed [Edit necessary]
#macro PATCH_DAY "23"
// the patch month of your character to be displayed [Edit necessary]
#macro PATCH_MONTH "DEC"

// player is set to 0 online, but not in init_shader.gml, so I have to check it here
var onlineCSS = player == 0; // true if on the online CSS

var alt_cur; // the currently selected alt
if(onlineCSS){ // if on the online CSS
    alt_cur = get_player_color(player); // use the base game alt
} else{ // if on the offline CSS
    alt_cur = get_color_profile_slot_r(0, 8); // use the unlimited alt
}

// [Row jump feature] BUT ONLY PARTIALLY. YOU STILL NEED TO UPDATE THE b VALUE.
// Increment the row switch timer.
set_color_profile_slot(0, 9, get_color_profile_slot_r(0, 9)+1, get_color_profile_slot_g(0, 9), onlineCSS); // also, update whether you're on the CSS in the b color slot (the g value remains unchanged)

// You don't need this if you don't have a rainbow alt [Edit optional]
// rainbow alt
if(alt_cur == 32){ // check that you've selected the rainbow alt [Edit necessary]
    init_shader(); // run init_shader to update the hue
}

//Alt names [Edit necessary]
var alt_name;
alt_name[0]  = "Default"; // these are Joshua's alt names
alt_name[1]  = "Hime";
alt_name[2]  = "Liz";
alt_name[3]  = "Acid Rainbows";
alt_name[4]  = "Donyoku";
alt_name[5]  = "Pomme";
alt_name[6]  = "Abyss";
alt_name[7]  = "Early Access";
alt_name[8]  = "Contest One";
alt_name[9]  = "Sans";
alt_name[10]  = "Contest Three";
alt_name[11]  = "Contest Four";
alt_name[12]  = "Voidfox";
alt_name[13]  = "Classic";
alt_name[14]  = "Giik";
alt_name[15]  = "Kris";
alt_name[16]  = "Obama";
alt_name[17]  = "Wireframe";
alt_name[18]  = "Ellie";
alt_name[19]  = "Adam Carra";
alt_name[20]  = "Junior High";
alt_name[21]  = "Zircon";
alt_name[22]  = "Sakurai";
alt_name[23]  = "Lucy";
alt_name[24]  = "Starfy";
alt_name[25]  = "Yes, Indeed";
alt_name[26]  = "Smolburn";
alt_name[27]  = "Minicane";
alt_name[28]  = "Wrastiny";
alt_name[29]  = "MunchKragg";
alt_name[30]  = "Buch";
alt_name[31]  = "Feri";
alt_name[32]  = "Rainbow";
alt_name[33]  = "Random"; // Only put as many names as you have alts

//Patch (the patch information is displayed here)

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + PATCH_VER);

textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, PATCH_DAY + " " + PATCH_MONTH);



//Alt

// This offsets the alt name stuff when on the online CSS so that the picture thing doesn't cover it up. Set this to 0 if you don't like it. [Edit optional]
var bottomPartOffset = onlineCSS ? -10 : 0;

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

if(onlineCSS){ // on the online CSS
    for(var j = 0; j < 16; j++){ // only draw the rectangles for the base 16 alts
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + bottomPartOffset + 137 - 5*i, draw_x + 7, temp_y + bottomPartOffset + 140 - 5*i, draw_color);
    }
} else { // on the offline CSS
    for(var i = 0; i < ceil(array_length(alt_name)/16); i++){ // draw the rectangles for every unlimited alt
        for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
            var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
            var draw_x = temp_x + 2 + 10 * j;
            rectDraw(draw_x, temp_y + bottomPartOffset + 137 - 5*i, draw_x + 7, temp_y + bottomPartOffset + 140 - 5*i, draw_color);
        }
    }
}

draw_set_halign(fa_left);

//include alt. name
//include extra alts on online CSS (only keep what's in the else statement, offline, if you don't like this) [Edit optional]
// the vertical spave between the alt names when mutliple alts are displayed on the online CSS (change this to 18 if you don't want overlap with characters like 'y', 'g', 'p', 'q', ',', etc.) [Edit optional]
#macro ALT_NAMES_Y_OFFSET 14
if(onlineCSS){ // online CSS
    var j = 0;
    for(var i = alt_cur; i < array_length(alt_name); i += 16){ // loop through the alts in this column and display the names on top of each other
        textDraw(temp_x + 2, temp_y + bottomPartOffset + 124 - j++*ALT_NAMES_Y_OFFSET, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (i < 9 ? "0" : "") + string(i+1) + ": " + alt_name[i]);
    }
} else { // offline CSS
    // display the name of the currently selected alt
    textDraw(temp_x + 2, temp_y + bottomPartOffset + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);
}


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
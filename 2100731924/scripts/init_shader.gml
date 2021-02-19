// init shader

// set this to the number of color rows you use (Rivals has a max of 8)
#macro NUM_COLOR_ROWS 8
var NUM_ALTS = get_color_profile_slot_b(0, 8); // this holds the number of alts you have
var onCSS = "ping_color" in self; // this detects whether you're on the CSS or not

// [Random alt feature]
// variables for the random alt
var onSSS = "ss_page_swap" in self; // this detects whether you're on the SSS or not
// Set this to whichever alt is your random alt. Setting this to -1, or some number that isn't one of your alts, will make it so that you don't have a ranom alt. [Edit necessary]
#macro RANDOM_ALT 33
// Set this to whichever alt you want the random alt to default to if you somehow skipped the SSS. You are able to make this the random alt itself if you want.
#macro DEFAULT_RANDOM_ALT 0

// [Row jump feature]
// macros for allowing row jumping on the CSS
// Set this macro to the frame leeway recognizing a row jump. Set this to 0 if you don't want to allow row jumping. [Edit necessary]
#macro ROW_SWITCH_FRAME_LIMIT 0
// these are too macros used to keep track of whether you last increased or decreased your alt
#macro ALT_INCREASED 1
#macro ALT_DECREASED 2

// decide what the current alt is
var curRealAlt; // the variable that holds the alt that your character will look like
if(onCSS){ // if you're on the CSS
    var onlineCSS = get_color_profile_slot_b(0, 9); // whether you're on the online CSS (-1 = unknown/first frame of CSS, 0 = offline, 1 = online)
    
    if(onlineCSS == -1){ // initial character load
        curRealAlt = get_player_color(player); // just use whichever alt the character gets selected (this is always the default alt, 0)
        set_color_profile_slot(0, 8, curRealAlt, curRealAlt, get_color_profile_slot_b(0, 8)); // update the color slot to reflect the selected alt (the b value remains unchanged)
        /* [Select sound feature] [Edit optional]
        sound_play(sound_get("JoshuaParryUse")); // You can play a sound here to have it play only when you select the character
        */
    } else if(onlineCSS == 0){ // offline css
        // [Row jump feature]
        var rowSwitchTimer = get_color_profile_slot_r(0, 9); // this is the timer since you last switched alt
        var lastAltAction = get_color_profile_slot_g(0, 9); // this is whether you last increased or decreased your alt (or neither if you just selected the character)

        var curAlt = get_player_color(player); // the current base game alt
        curRealAlt = get_color_profile_slot_r(0, 8); // the current unlimited alt
        var prevAlt = get_color_profile_slot_g(0, 8); // the previous base game alt
        if(curAlt != prevAlt){ // you switched alt
            if((curAlt > prevAlt && curAlt < prevAlt + 8) || curAlt < prevAlt - 8){ // You increased your alt. This accounts for going from the highest alt to the smallest alt and skipping alts because of other players.
                curRealAlt++; // increase your unlimited alt
                if(curRealAlt == NUM_ALTS){ // if you've passed the number of unlimited alts you have
                    curRealAlt = 0; // reset your unlimited alt to the default alt
                }

                // [Row jump feature]
                // jump up a row
                if(lastAltAction == ALT_DECREASED && rowSwitchTimer < ROW_SWITCH_FRAME_LIMIT){ // if you last decreased your alt and you increased after quick enough
                    curRealAlt += 16; // go up a row
                    if(curRealAlt >= NUM_ALTS){ // if you pass the number of alts you have
                        curRealAlt = curRealAlt % 16; // go back to the first row
                    }
                }
                lastAltAction = ALT_INCREASED; // you just increased your alt so the last action you did was increase your alt
            } else{ // You decreased your alt. This accounts for going from the smallest alt to the highest alt and skipping alts because of other players.
                if(curRealAlt == 0){ // if you're the smallest unlimited alt
                    curRealAlt = NUM_ALTS; // set the current alt to the number of alts you have (this will get decreased since you start counting alts at 0)
                }
                curRealAlt--; // decrease your unlimited alt

                // [Row jump feature]
                // jump down a row
                if(lastAltAction == ALT_INCREASED && rowSwitchTimer < ROW_SWITCH_FRAME_LIMIT){ // if you last increased your alt and you increased after quick enough
                    curRealAlt -= 16; // go down a row
                    if(curRealAlt < 0){ // if you pass the smallest alt you have
                        while(curRealAlt+16 < NUM_ALTS){ // could not think of better math cause dumb
                            curRealAlt += 16; // go to the last row
                        }
                    }
                }
                lastAltAction = ALT_DECREASED; // you just decreased your alt so the last action you did was decrease your alt
            }
            // [Row jump feature]
            rowSwitchTimer = 0; // reset the switch timer since you just switched alt
            set_color_profile_slot(0, 9, rowSwitchTimer, lastAltAction, get_color_profile_slot_b(0, 9)); // update the switch timer and last action in their color slots (the b value remains unchanged)
        }
        set_color_profile_slot(0, 8, curRealAlt, curAlt, get_color_profile_slot_b(0, 8)); // update the unlimited alt and the previous base alt in their color slots (the b value remaiins unchanged) 
    } else if(onlineCSS == 1){ //online css
        curRealAlt = get_player_color(0); // the online CSS has you as player 0, but the player variable is not set to 0 while init_shader runs so this is necessary
        set_color_profile_slot(0, 8, curRealAlt, curRealAlt, get_color_profile_slot_b(0, 8)); // update the color slot to reflect the selected alt (the b value remains unchanged)
    }

    // [Random alt feature]
    set_color_profile_slot(0, 10, get_color_profile_slot_r(0, 10), get_color_profile_slot_g(0, 10), 0); // reset the SSS timer while you're on the CSS (the r and g values remain unchanged)

    /* [Alt sound feature] [Edit optional]
    // This sets up custom sound effects that play when you select an alt on the CSS. This is completely optional, you can just ignore this if you don't want to play any sounds
    var currentPlayingAltSfx = get_color_profile_slot_r(0, 10); // the alt which last had its sfx play (even if it didn't actually have anything play)
    var currentPlayingSfxId = get_color_profile_slot_g(0, 10); // the id of the last sfx that played so that it can be stopped (-1 if none was played)
    var altSpecificSfx = array_create(NUM_ALTS, 0); // set the indexes of this array to the sfx you want to play for the corresponding slot, if any (the rest will just be 0 and won't play anything) [Edit necessary]
    altSpecificSfx[0] = sound_get("JoshuaParryUse"); // some random examples
    altSpecificSfx[3] = sound_get("pencilTCO");
    altSpecificSfx[13] = sound_get("tauntMono");
    altSpecificSfx[26] = sound_get("textappearTAA");
    // play the sfx for your alt if it has one
    if(curRealAlt != currentPlayingAltSfx){ // the current unlimited alt doesn't match the alt that last had its sfx play
        if(currentPlayingSfxId){ // if there was a sound played that needs to be stopped (it might have played entirely already, but it will still count)
            sound_stop(currentPlayingSfxId); // stop the old sound
            currentPlayingSfxId = -1; // the the current sfx id to -1 since no sound is playing
        }
        if(altSpecificSfx[curRealAlt]){ // if this alt has a sound to play
            currentPlayingSfxId = sound_play(altSpecificSfx[curRealAlt]); // play that sound and update the last played sound id
        }
        set_color_profile_slot(0, 10, curRealAlt, currentPlayingSfxId, get_color_profile_slot_b(0, 10)); // update the color slots for the last alt to play a sound and last sound ID (the b value remains unchanged)
    }
    */
} else{ // if you're not on the CSS
    if(get_color_profile_slot_r(0, 8) == -1){ // you still don't have an unlimited alt selected
        var curAlt = get_player_color(player); // just use the current base game alt
        set_color_profile_slot(0, 8, curAlt, curAlt, get_color_profile_slot_b(0, 8)); // update the color slot to reflect the selected alt (the b value remains unchanged)
    }
    curRealAlt = get_color_profile_slot_r(0, 8); // the current unlimited alt

    // [Random alt feature]
    if(onSSS){ // on the stage selection screen
        set_color_profile_slot(0, 10, get_color_profile_slot_r(0, 10), get_color_profile_slot_g(0, 10), get_color_profile_slot_b(0, 10)+1); // Increment the SSS timer (the b value). The r and g values remain unchanged.
    } else { // in a match or playtesting
        if(curRealAlt == RANDOM_ALT && object_index != oTestPlayer){ // if you have the random alt selected and are not playtesting
            if(get_color_profile_slot_b(0, 10)){ // if you were on the stage selection screen for at least one frame
                curRealAlt = get_color_profile_slot_b(0, 10)%NUM_ALTS; // select an alt based on how long you were on the SSS
                if(curRealAlt == RANDOM_ALT){ // if the random alt got selected
                    set_color_profile_slot(0, 10, get_color_profile_slot_r(0, 10), get_color_profile_slot_g(0, 10), get_color_profile_slot_b(0, 10)+1); // Increment the SSS timer once (the b value). The r and g values remain unchanged.
                    curRealAlt = get_color_profile_slot_b(0, 10)%NUM_ALTS; // reselect the alt so that it isn't the random alt
                }
            } else { // you skipped the stage selection screen
                curRealtAlt = DEFAULT_RANDOM_ALT; // just use the default random alt
            }
        }
    }
}

// You can get rid of this part if none of your alts change the default shading [Edit optional]
// set the shading of the color slots
if(curRealAlt == 7 || curRealAlt == RANDOM_ALT){ // EA alt and the random alt (change this to check for whichever of your alts have no shading) [Edit necessary]
    // set shading to 0 for every color slot
    for(var i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
} else{ // normal alt
    // set shading to normal for every color slot
    for(var i = 0; i < 8; i++){
        set_character_color_shading(i, 1);
    }
}

//set the alpha color for the color rows (this can be specific to the row if you want, but it isn't by default in this template)
var alphaValue; // The variable that holds the alpha value for the color rows. You can just set this to 255 and get rid of the if statement stuff below if none of your alts mess with it.  [Edit optional]
if(curRealAlt == 17){ // Wireframe alt (change the 17 to whichever alts you want to be wireframe) [Edit necessary]
    alphaValue = 0; // invisible
} else { // normal alts
    alphaValue = 255; // fully visible
}

// Your alt's color rows are set here
switch(curRealAlt){ // this switch statement is just here in case you want specific behavior for certain alts
    default: // any row without a specfic case
        for(var i = 0; i < NUM_COLOR_ROWS; i++){ // this is where your current color is set to the alt you have selected according to the system
            set_character_color_slot(i, get_color_profile_slot_r(curRealAlt, i), get_color_profile_slot_g(curRealAlt, i), get_color_profile_slot_b(curRealAlt, i), alphaValue); // the character color slots are set according to the corresponding alt that you set up in colors.gml
            set_article_color_slot(i, get_color_profile_slot_r(curRealAlt, i), get_color_profile_slot_g(curRealAlt, i), get_color_profile_slot_b(curRealAlt, i), alphaValue); // the article (and everything other than the player) color slots are set according to the corresponding alt that you set up in colors.gml
        }
        break;
}

// You can get rid of this if you don't have a rainbow alt [Edit optional]
// rainbow alt
if(curRealAlt == 32){ // make this check for your rainbow alt [Edit necessary]
    var hue;
    var color_hsv;
    var color_rgb;
    var hue_speed = 1; // this is the speed of the hue shift
    for(var i = 0; i < NUM_COLOR_ROWS; i++){ // update the rainbow slots here
        if(i != 1){ // make sure you don't change the hue for the color rows that you don't want the rainbow effect on [Edit necessary]
            color_rgb = make_color_rgb(get_color_profile_slot_r(curRealAlt, i), get_color_profile_slot_g(curRealAlt, i), get_color_profile_slot_b(curRealAlt, i)); // make an rgb variable from the current color of this color row
            hue = (color_get_hue(color_rgb) + hue_speed) % 255; // finds the hue and shifts it
            color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb)); // creates a new gamemaker colour variable using the shifted hue
            set_color_profile_slot(curRealAlt, i, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv)); // update the alt's color slot to have the shifted hue (won't be used until the next time init_shader.gml runs)
        }
    }
}



// This code should go to the TOP of the script.
// The current alt palette, with a fix for the online CSS.
var alt_cur = get_player_color((room == 113 && object_index != oTestPlayer) ? 0 : player);

// Split the synced var. For more info on this function, see:
// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
if "__syncvar" not in self __syncvar = split_synced_var(1);
var tag_pal_value = __syncvar[0]; //change the 0 to the synced var index for the tag palette.
// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
var tag_pal = player_tag_palettes(12, tag_pal_value);

// This is your final alt value, which is the current alt palette the player has selected.
var real_alt = tag_pal != -1 ? tag_pal : alt_cur;

if real_alt == 0 {
    set_character_color_slot( 2, 65, 72, 99 )
}
//print(real_alt)
if real_alt == 21 {
      outline_color = [129, 87, 1];
}

if real_alt == 29 {
    //set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ring"));
}

if get_gameplay_time() != 0 {
  if object_index == oPlayer {
    if get_player_color( player ) == 14 {
        set_character_color_slot( 3, 0, 0, 0, 0 )
        set_character_color_slot( 4, 0, 0, 0, 0 )
        set_character_color_slot( 5, 0, 0, 0, 0 )
    }
    if get_player_color( player ) == 2 {
        set_character_color_slot( 0, 168, 116, 62, .6 )
        set_character_color_slot( 1, 203, 160, 117, .6 )
        set_character_color_slot( 2, 203, 160, 117, .6 )
    }
    if get_player_color( player ) == 5 {
    set_character_color_slot( 0, 36, 16, 48, .9 )
    set_character_color_slot( 1, 59, 37, 71, .8 )
    set_character_color_slot( 2, 105, 110, 133, .5 )
    set_character_color_slot( 3, 36, 16, 48, .9 )
    set_character_color_slot( 4, 59, 37, 71, .8 )
    set_character_color_slot( 5, 105, 110, 133, .5 )
    }
  }
}



switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    set_color_profile_slot( 19, 0, 51, 95, 255 ); //bodydark
    set_color_profile_slot( 19, 1, 112, 143, 255 ); //bodylight
    set_color_profile_slot( 19, 2, 112, 143, 255 ); //bodyshine
    set_color_profile_slot( 19, 3, 219, 144, 161 ); //pickdark
    set_color_profile_slot( 19, 4, 255, 255, 255 ); //pickmid
    set_color_profile_slot( 19, 5, 255, 255, 255 ); //picklight
    set_color_profile_slot( 19, 6, 161, 145, 12 ); //feet
    set_color_profile_slot( 19, 7, 227, 206, 25 ); //feetlight
    break;
  case 2: // summer
// Creamsicle
    set_color_profile_slot( 19, 0, 214, 103, 31 ); //bodydark
    set_color_profile_slot( 19, 1, 246, 151, 61 ); //bodylight
    set_color_profile_slot( 19, 2, 246, 216, 187 ); //bodyshine
    set_color_profile_slot( 19, 3, 184, 151, 83 ); //pickdark
    set_color_profile_slot( 19, 4, 245, 218, 164 ); //pickmid
    set_color_profile_slot( 19, 5, 245, 218, 164 ); //picklight
    set_color_profile_slot( 19, 6, 184, 169, 136 ); //feet
    set_color_profile_slot( 19, 7, 245, 236, 218 ); //feetlight
    break;
  case 3: // halloween   
    // Caramel
    set_color_profile_slot( 19, 0, 150, 45, 45 ); //bodydark
    set_color_profile_slot( 19, 1, 212, 62, 62 ); //bodylight
    set_color_profile_slot( 19, 2, 212, 62, 62 ); //bodyshine
    set_color_profile_slot( 19, 3, 133, 96, 57 ); //pickdark
    set_color_profile_slot( 19, 4, 240, 120, 56 ); //pickmid
    set_color_profile_slot( 19, 5, 247, 173, 99 ); //picklight
    set_color_profile_slot( 19, 6, 138, 97, 58 ); //feet
    set_color_profile_slot( 19, 7, 240, 127, 56 ); //feetlight
    break;
  case 4: // christmas
    // Minted
    set_color_profile_slot( 19, 0, 131, 166, 194 ); //bodydark
    set_color_profile_slot( 19, 1, 212, 235, 255 ); //bodylight
    set_color_profile_slot( 19, 2, 212, 235, 255 ); //bodyshine
    set_color_profile_slot( 19, 3, 209, 23, 23 ); //pickdark
    set_color_profile_slot( 19, 4, 230, 67, 67 ); //pickmid
    set_color_profile_slot( 19, 5, 230, 184, 184 ); //picklight
    set_color_profile_slot( 19, 6, 209, 23, 23 ); //feet
    set_color_profile_slot( 19, 7, 230, 67, 67 ); //feetlight
    break;
}



// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;
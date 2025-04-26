
//draw_debug_text(x , y-12, "get_synced_var( player) " + string(get_synced_var( player)));



var num_alts = 32;
var alt_cur = get_player_color(player);


// css_draw
 
var temp_x = x + 8;
var temp_y = y + 9;



//animation - character
if (css_anim_time < 140)
{
   
   init_shader()
   draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        temp_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)), //if css_anim time is under 60 it positions the character differently
        temp_y + 128,
        preview_scale, //so it is affected by small_sprites aswell
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1 //if css_anim_time is over 10 the sprite's transperency acts differently
    );
}



patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
 
 
 
//Alt name init. var doesn't work with arrays lol
 
 //First number alt number, 2nd number is extra alts. 0=default, 1=extras
 
alt_name[0,0]  = "Skeletal Warden";
alt_name[1,0]  = "Oceans Depths";
alt_name[2,0]  = "Blistering Dune";
alt_name[3,0]  = "Ominous Wood";
alt_name[4,0]  = "Toxic Cliff";
alt_name[5,0]  = "Elsewhere Flame";
alt_name[6,0]  = "Forgotten Classic";
alt_name[7,0]  = "Nihil Descent";
alt_name[8,0]  = "Lethal Protector";
alt_name[9,0]  = "Radiating Blaze";
alt_name[10,0] = "Jealous Rage";
alt_name[11,0] = "Thin Red Line";
alt_name[12,0] = "Black Monger";
alt_name[13,0] = "Labrynthian Shadow";
alt_name[14,0] = "Longing Immortal";
alt_name[15,0] = "Bud Saintess";
alt_name[16,0] = "Bottomless Jaws";
alt_name[17,0] = "Your Best Friend"
alt_name[18,0] = "Lord of the Night";
alt_name[19,0] = "Demonic Burrower";
alt_name[20,0] = "Floating Guardian";
alt_name[21,0] = "Long Shot Law";
alt_name[22,0] = "Swingin Serpent";
alt_name[23,0] = "Cursed Witch";
alt_name[24,0] = "Harbinger of Dirt";
alt_name[25,0] = "Spawn of Agony";
alt_name[26,0] = "Burdened Weaver";
alt_name[27,0] = "Molten Hermit";
alt_name[28,0] = "Uncontrollable Wrath";
alt_name[29,0] = "Inverted Soul";
alt_name[30,0] = "Endless Sunset";
alt_name[31,0] = "Better Off Together";

alt_name[0,1]  = "Garden Viper";
alt_name[1,1]  = "Lost in Void";
alt_name[2,1]  = "Warping Wheel";
alt_name[3,1]  = "Nightmare Ward";
alt_name[4,1]  = "Illusionary Fiend";
alt_name[5,1]  = "Radio Demon";
alt_name[6,1]  = "Horrid Screech";
alt_name[7,1]  = "Love Beyond Death";
alt_name[8,1]  = "Shambling Grin";
alt_name[9,1]  = "Stalking Specter";
alt_name[10,1]  = "Demonic Ruler";
alt_name[11,1]  = "Lost Child";
alt_name[12,1]  = "Entangled Remnant";
alt_name[13,1]  = "Lucky Survivor";
alt_name[14,1] = "Abyssal Eye";
alt_name[15,1] = "Lost King";
alt_name[16,1] = "Eldrich Hunger";
alt_name[17,1] = "Scapegoat Leader";
alt_name[18,1] = "Misty Grove";
alt_name[19,1] = "Bleeding Lust";
alt_name[20,1] = "Spectral Greeter"
alt_name[21,1] = "Deciever Lord";
alt_name[22,1] = "Corrupted Hero";
alt_name[23,1] = "Unassuming Terror";
alt_name[24,1] = "Artificial Hatred";
alt_name[25,1] = "Unspeakable Crimson";
alt_name[26,1] = "Familiar Face";
alt_name[27,1] = "A Swell Gift";
alt_name[28,1] = "Creeping Slasher";
alt_name[29,1] = "Gargantuan Wings";
alt_name[30,1] = "Revived Blade";
alt_name[31,1] = "Daughter of Web";

alt_name[0,2]  = "Monochrome Seafoam";
alt_name[1,2]  = "Bumbling Dead";
alt_name[2,2] = "Ambrosia Anomaly";
alt_name[3,2]  = "Shifting Giant";
alt_name[4,2] = "Valued Employee";
alt_name[5,2] = "Ghost Hunter";
alt_name[6,2] = "Fun is Infinite";
alt_name[7,2]  = "Lord of Time";
alt_name[8,2]  = "King of Horror";
alt_name[9,2]  = "Bloodshed Veteran";
alt_name[10,2]  = "Scary Maze";
alt_name[11,2]  = "Buried Linebacker";
alt_name[12,2]  = "Grim Idol";
alt_name[13,2]  = "Operator";
alt_name[14,2] = "Dream Walker";
alt_name[15,2] = "HATE HATE HATE";
alt_name[16,2] = "False Light";
alt_name[17,2] = "Bloodharbor Ripper";
alt_name[18,2] = "Gleaming Eyes";
alt_name[19,2] = "Rabid Infected";
alt_name[20,2] = "Stupid Dog"
alt_name[21,2]  = "SHADOW DIO???";
alt_name[22,2]  = "Ordinary Stop";
alt_name[23,2]  = "Grinning Killer";
alt_name[24,2]  = "False Mystery";
alt_name[25,2] = "Poisonous Megapede";
alt_name[26,2] = "Dimension Eater";
alt_name[27,2] = "Puppet Master";
alt_name[28,2] = "Goulish Trickster";
alt_name[29,2] = "Remnant of Ash";
alt_name[30,2] = "Lord of Bones";
alt_name[31,2] = "XBUDIJOH ZPV";




 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x - 10, temp_y - 25, "fName", c_white, 0, 1000, 1, true, 1, " " + patch_ver + patch_day + patch_month);
 
 
 
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
var draw_y = -1;
for(i = 0; i < num_alts; i++){
	var draw_x = temp_x + 2 + 10 * i;
	if(i < 16){
		draw_y = 4;
	} else {
		draw_x -= temp_x * 7 + 6;
		draw_y = -1;
	}
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    
    rectDraw(draw_x, temp_y + 137+draw_y, draw_x + 7, temp_y + 140+draw_y, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur,color_shift]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
//Button
if ((get_instance_x(cursor_id) >= x + button_cord[1,0] && get_instance_x(cursor_id) <= x + button_cord[1,0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1,1] && get_instance_y(cursor_id) <= y + button_cord[1,1] + 26)) {
    suppress_cursor = true;
    draw_sprite_ext(sprite_get("css_change"), 1, x + button_cord[1,0], y + button_cord[1,1], 1, 1, 0, c_white, 1);
} else {
    draw_sprite_ext(sprite_get("css_change"), 0, x + button_cord[1,0], y + button_cord[1,1], 1, 1, 0, c_white, 1);
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
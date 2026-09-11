//var alt_cur = get_player_color("alt_fix" in self? alt_fix: player)
//
//init_shader();
//
if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = alt_cur;

if ("prev_alt" not in self){
drawtime = 0
drawing = 1
introanim = 0
}

if ("info_inform" not in self) {
    info_inform = 0;
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawing = random_func(4, 4, true)
     drawtime = 0
     introanim = random_func(1,4,true)
}

drawtime += 1 

if drawtime == 1{
    // sound_play(sound_get("vc_taunt3"),false,noone,0.6,0.9 + random_func(1,3,true)/10)    
}

prev_alt = alt;
     
if drawing > 3 {
    drawing = 0
}
//
//
//
//
//
////define the palette names
//var palette_names = [
//  "Radiant", 
//  "Father",
//  "Calvary",
//  "Knight", 
//  "Mercenary",
//  "Priest",
//  "Veteran",
//  "Princess",
//  "General",
//  "Tipper",
//  "Hilt", 
//  "Mage", 
//  "Dragon",
//  "Leader",
//  "Professor", 
//  "Plains",
//  "Abyss",
//  "Early Access",
//  "Ranked", 
//  "Prince",
//  "Merchant",
//  "Salvation",
//  "Monado",
//  "Angel",
//  "Quest",
//  "Legend", 
//  "Wild", 
//  "Castle",
//  "Knowledge",
//  "Rune",
//  "Underacheiver",
//];
//var alt = alt_cur;
//draw the alt name and number. maybe not positioned well i didnt check
//if drawtime < 120 {
//    switch introanim {
//        default:
//        draw_sprite_ext(sprite_get("nspecial"),drawtime/4,temp_x,temp_y-44 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
//        break;
//    }
//
//draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
//
//sprite_change_offset("nspecial", 0, 0);
//}

//if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
//draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
//}



if drawtime < 15 {
    draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
    
    if drawtime < 12 {
         draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
    }
    
    if drawtime < 9 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
    }
    
    if drawtime < 6 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);   
    }
    
    if drawtime < 3 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
    }
    
}





// css yoinked from muno goku

if(!instance_exists(cursor_id)) exit;
//Button Location
if player == 0{ // player online
	var tmp_xl = 16
	var tmp_yl = 48
}else{
	if get_player_hud_color(player) == 8421504 { //if CPU offline
		var tmp_xl = 58
		var tmp_yl = 178
	}else{ //if player offline
		var tmp_xl = 74
		var tmp_yl = 178
	}

}
var tmp_bw = 30 // button width
var tmp_bh = 26
var tmp_xl1 = x+tmp_xl
var tmp_xl2 = tmp_xl1+tmp_bw
var tmp_yl1 = y+tmp_yl
var tmp_yl2 = tmp_yl1+tmp_bh
draw_set_halign(fa_left);

if get_synced_var("alt_fix" in self? alt_fix: player) > 2 {
	set_synced_var( "alt_fix" in self? alt_fix: player, 0)
}
if("cssframes" not in self){cssframes = 0;}
if("voiced" not in self){voiced = get_synced_var("alt_fix" in self? alt_fix: player);}
if("voicebutton" not in self){voicebutton = voiced * 3;}
if("voicebuttoncurrent" not in self){voicebuttoncurrent =  voiced * 3;}
if voicebutton == 2 || voicebutton == 5 || voicebutton == 8 {
	if cssframes == 0{
	sound_stop(sound_get("vc_taunt2"));
	sound_stop(sound_get("vc_ult_select"));
		if voicebutton == 2{
			sound_play(sound_get("vc_taunt2"));
			voiced = 1;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 5{
			sound_play(sound_get("vc_ult_select"), false, false, 1.2);
			voiced = 2;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 8{
			voiced = 0;
			voicebuttoncurrent = voicebutton;
		}

	}
	cssframes++;
	if cssframes == 5{
		cssframes = 0;
		voicebutton += 1;
		if voicebutton > 8 {
			voicebutton -= 9;
		}
		voicebuttoncurrent = voicebutton;
	}
}
var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if (x_temp>tmp_xl1 && x_temp<tmp_xl2 && y_temp>tmp_yl1 && y_temp<tmp_yl2){ 	
	if voicebutton == voicebuttoncurrent {
		if voicebutton == 0 || voicebutton == 3 || voicebutton == 6 {
			voicebutton += 1;
		}
	}
}else{
	if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 {
		voicebutton -= 1;
	}
	voicebuttoncurrent = voicebutton;
}
if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 {
	if menu_a_pressed{
		voicebutton += 1;
		voicebuttoncurrent = voicebutton;
	}	
}
set_synced_var("alt_fix" in self? alt_fix: player, voiced)
draw_sprite_ext(sprite_get("css_voice_button"), 0+voicebutton, x + tmp_xl, y + tmp_yl, 1, 1, 0, c_white, 1);





//#define rectDraw(x1, y1, width, height, color)
//draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);


















//css_draw.gml
//this script allows us to draw anything over the CSS - icons, text etc.
//NOTE: CSS is short for Character Select Screen

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

//outline colors - the set_outline function is similar to the outline_color array- the numbers are red, green and blue values
switch (alt_cur)
{
    case 17: set_outline(15, 56, 15); break; //early access
    default: set_outline(0, 0, 0); break;
}

shader_start();
//we need to draw over the portrait so the outline colors apply to it too
draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)), //if css_anim time is under 60 it positions the character differently
        preview_y + 128,
        preview_scale, //so it is affected by small_sprites aswell
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1 //if css_anim_time is over 10 the sprite's transperency acts differently
    );
}

shader_end();
prepare_shader(); //resets shader
//everything below this point shouldn't use shaders (which means it won't recolor with alts)


//alt icons
//alts 13(abyss) to 18(gold rank) reffer to the rivals time based/unlockable alts
//draw_sprite(sprite_get("alt_icons"), alt_cur-0, icon_x_pos, icon_y_pos);


//alt boxes
draw_set_halign(fa_left);
var thin = alt_total > 16; //if we have more than 16 alts, the box sizes change accordingly

rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? c_white : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}

var txt = "#" + string(alt_cur);
rectDraw(x + 76, y + 15, 42, 20, c_black);

textDraw(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt, false);


//animation - alt name text
//this is not in the same place as the character sprites because it shouldn't be affected by the shader (unless you want it to be)
if (css_anim_time < 140)
{
    textDraw(
        floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)), //if css_anim_time is under 10 the positioning work differently
        floor(y) + 43,
        "fName",
        c_white,
        0,
        1000,
        fa_left,
        1,
        true,
        css_anim_time < 10 ? css_anim_time * 0.1 : css_anim_time*-0.05+7, //if css_anim_time is under 10 the alpha works differently
        string(alt_name[alt_cur]),
        false
    );
}



//functions by supersonic
#define prepare_shader()
{
    //init_shader(); fails to generate these variables for some reason,
    //so we assign them to these completely equivalent values
    //this allows shader_start() to be run in css_draw.gml!!!
    static_colorB = colorB;
    static_colorO = colorO;
    static_colorT = colorT;
    static_colorI = colorI;
    init_shader();
}
#define set_outline(r, g, b)
{
    //we use this function to add custom outlines to our character's portrait
    var start = 8*4; //outline
    static_colorO[start] = r/255;
    static_colorO[start+1] = g/255;
    static_colorO[start+2] = b/255;
}

//functions by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}



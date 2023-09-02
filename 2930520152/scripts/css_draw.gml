var alt_cur = get_player_color("alt_fix" in self? alt_fix: player)

init_shader();

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





//define the palette names
var palette_names = [
  "Radiant", 
  "Father",
  "Calvary",
  "Knight", 
  "Mercenary",
  "Priest",
  "Veteran",
  "Princess",
  "General",
  "Tipper",
  "Hilt", 
  "Mage", 
  "Dragon",
  "Leader",
  "Professor", 
  "Plains",
  "Abyss",
  "Early Access",
  "Ranked", 
  "Prince",
  "Merchant",
  "Salvation",
  "Monado",
  "Angel",
  "Quest",
  "Legend", 
  "Wild", 
  "Castle",
  "Knowledge",
  "Rune",
  "Underacheiver",
];
var alt = alt_cur;
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
    switch introanim {
        default:
        draw_sprite_ext(sprite_get("nspecial"),drawtime/4,temp_x,temp_y-44 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
        break;
    }

draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));

sprite_change_offset("nspecial", 0, 0);
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}



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

// yoinked from plussle && minun
if (info_inform < 150) {
    info_inform++;
    var arrow_height = round(140 - (abs(sin(info_inform / 20)) * 10) );
    draw_sprite(sprite_get("point"), 0, temp_x + 101, temp_y + arrow_height);
    
    if (info_inform mod 40 < 20) {
        draw_sprite(sprite_get("select"), 0, temp_x + 96, temp_y + 164);
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





#define rectDraw(x1, y1, width, height, color)
draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);
var charuuid = string(sprite_get("idle"));

if ("css_char" not in self || css_char != charuuid) {
drawtime = 0
drawing = 1
    css_char = charuuid;
    sound_play(sound_get("hatoff1"),false,noone,.7,.6)
	sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1)
	cur_sound = sound_play(sound_get("v_taow"),false,noone,.8,1)
}

if ("prev_alt" not in self){
drawtime = 0
drawing = 1
soundlol = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawing = random_func(4, 4, true)
     drawtime = 0
     
     soundlol += random_func(1,2,true) + 1
sound_stop(cur_sound)

switch soundlol%7 {
     
    case 0 :
     cur_sound = sound_play(sound_get("v_daa"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 1 :
     cur_sound = sound_play(sound_get("v_shchk"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 2 :
     cur_sound = sound_play(sound_get("v_dah"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 3 :
     cur_sound = sound_play(sound_get("v_cha"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 4 :
     cur_sound = sound_play(sound_get("v_hoo"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 5 :
     cur_sound = sound_play(sound_get("v_heehee"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 6 :
     cur_sound = sound_play(sound_get("v_daow"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
}

}

drawtime += 1 


prev_alt = alt;


     
if drawing > 3 {
    drawing = 0
}





//define the palette names
var palette_names = [
  "codename[Blue Moon]", 
  "Track[Jean]",
  "Track[Beat]",
  "Track[Thriller]", 
  "Track[Bad]",
  "Track[Feel]",
  "Track[Smooth]",
  "Track[Together]",
  "Track[Care]",
  "Track[This]",
  "codename[Void]", 
  "codename[Blood Call]",
  "codename[Mr.Boa]",
  "codename[Guy]",
  "codename[BLW]",
  "codename[Lucky]",
];
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
draw_sprite_ext(sprite_get("idle"),drawtime/5,temp_x-10,temp_y+54 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}
sprite_change_offset("idle", 0, 0);




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
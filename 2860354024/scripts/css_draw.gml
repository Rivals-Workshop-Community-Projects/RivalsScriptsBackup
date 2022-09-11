if !("hue" in self) hue = 0;
if get_player_color(player) = 10 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(255 ,217 ,0 );
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(10, 1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
 
 
	color_rgb=make_color_rgb(255 ,217 ,0 );
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(10, 1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}
//Keep repeating for every slot
init_shader();

//Sai SS heh

if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

if ("prev_alt" not in self){
drawtime = 0
drawing = 1
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawing = random_func(4, 4, true)
     drawtime = 0
}

drawtime += 1 


prev_alt = alt;


     
if drawing > 3 {
    drawing = 0
}


 //gpu_set_blendmode(bm_add);
 //draw_sprite_ext(sprite_get("charselectbg"),drawtime/4,temp_x-2,temp_y-2,2,2,0,-1,0.2);
 //gpu_set_blendmode(bm_normal);
 
// if alt == 0 {
//   draw_sprite_ext(sprite_get("charselect"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
// } 
// else {
//   draw_sprite_ext(sprite_get("charselect"),1,temp_x-2,temp_y-2,2,2,0,-1,1);
// }


  
// if drawtime % 20 == 0 or drawtime % 50 < 1 {
//   draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1,0.6);
// }

// if drawtime % 30 < 20  {
//   draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1, (drawtime % 30)/30);
// }

// if drawtime % 30 >= 20 {
//   draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1, 1 - (drawtime % 30)/30);
// }


// if drawtime % 20 == 10 or drawtime % 40 < 3 {
//   draw_sprite_ext(sprite_get("charselect1"),1,temp_x-2,temp_y-2,2,2,0,-1,1);
// }

// if drawtime % 4 == 0 {
// draw_sprite_ext(sprite_get("charselect1"),1,temp_x-4 + random_func(1,6,true),temp_y-4 + random_func(2,6,true),2,2,0,-1,0.6);
// }

// if drawtime % 5 == 0 {
// draw_sprite_ext(sprite_get("charselect1"),0,temp_x-4 + random_func(1,6,true),temp_y-4 + random_func(2,6,true),2,2,0,-1,0.6);
// }

// if drawtime % 20 < 10 {
//   draw_sprite_ext(sprite_get("charselect1"),1,temp_x-2,temp_y-2,2,2,0,-1, (drawtime % 20)/20);
// }



gpu_set_blendmode(bm_normal);
//define the palette names
var palette_names = [
	"Hikari 
	Kurogane    ",
	"Blue",
	"Red",
	"Green",
	"Black",
	"White",
	"Creator",
	"Deadweight",
	"Chaos",
	"Pirate",
	"Goku Seifuku",
	"Kitsune",
	"Toxic",
	"Abyss",
	"Dead Apostle",
	"Eltnam",
	"Prince Detective",
	"Oomfie",
	"Treasure",
	"Bubbly Pink",
	"Cool Green",
	"SharQ",
	"Morbid",
	"Transcended",
	"Justice"

	];
	
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
draw_sprite_ext(sprite_get("idle"),drawtime/6,temp_x+232,temp_y+20 - floor(drawtime/2),-2,2,0,-1,2 - drawtime/60);

draw_text_outline(floor(x)+200, floor(y)+136 - floor(drawtime/2), string(palette_names[alt]), asset_get("fName"), fa_right, fa_top, c_white, c_black);

}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_text_outline(floor(x)+200, floor(y)+136 - floor(drawtime/2), string(palette_names[alt]), asset_get("fName"), fa_right, fa_top, c_white, c_black);
}
sprite_change_offset("idle", 0, 0);

// if drawtime < 15 {
//     draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
    
//     if drawtime < 12 {
//          draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
//     }
    
//     if drawtime < 9 {
//         draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
//     }
    
//     if drawtime < 6 {
//         draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);   
//     }
    
//     if drawtime < 3 {
//         draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
//     }
    
// }


if (alt == 7){
draw_sprite_ext(sprite_get("voice_button"),voice_button,temp_x+ 0,temp_y+32,2,2,0,-1,1);


}

#define draw_text_outline( text_x, text_y ,text, font, halign, valign, color, outline_color)

draw_set_font(font);
draw_set_halign( halign );
draw_set_valign( valign );

draw_text_color( text_x+2, text_y-2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x-2, text_y+2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x-2, text_y-2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x+2, text_y+2, text, outline_color, outline_color, outline_color, outline_color, 1);

draw_text_color( text_x, text_y+2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x, text_y-2, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x+2, text_y, text, outline_color, outline_color, outline_color, outline_color, 1);
draw_text_color( text_x-2, text_y, text, outline_color, outline_color, outline_color, outline_color, 1);


draw_text_color( text_x, text_y, text, color, color, color, color, 1);


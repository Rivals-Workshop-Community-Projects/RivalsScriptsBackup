/*
    SupersonicNK's css_draw.gml
    
    please don't take this without permission!
    you can ask me if you want to use it.
    discord: Supersonic#9999
*/
shader_end();
var charuuid = string(sprite_get("idle"));
if ("soupcss_char" not in self || soupcss_char != charuuid)
    css_init(charuuid)
    
current_alt = get_player_color(player); 
if current_alt != prev_alt { 
    swap_timer = 0;    
    
    __clr_p = prev_alt < array_length(alts) ? alts[prev_alt][1] : undefinedcolor; 
    __clr_c = current_alt < array_length(alts) ? alts[current_alt][1] : undefinedcolor;     
    if slide_timer > 20 && slide_timer <= 100 
    slide_timer = 20; 
    if slide_timer > 100 slide_timer = 120-slide_timer; 
    //if you want to play a sound, play it right under here
    
}
var css_hovered =  point_in_rect(get_instance_x(my_cursor),get_instance_y(my_cursor),x+10,floor(y)+10,x+210,floor(y)+151);
if swap_timer < 10 {
    __dclr = merge_color(__clr_p,__clr_c,swap_timer/10); 
} else {    
    __dclr = current_alt < array_length(alts) ? alts[current_alt][1] : undefinedcolor; 
}
if slide_timer < 120 { 
    draw_set_font(asset_get("fName")) //ensure correct font for text length measurement
    var text = (css_hovered ? `#${current_alt+1}: ` : "") + (current_alt < array_length(alts) ? alts[current_alt][0] : "undefined; add another alt");
    var max_s = max(80,string_width(text)+20);
    if slide_timer < 20 {
        slide_pos = ease_backOut(0,max_s,slide_timer,20,1);   
        text_pos = slide_pos;    
    } else if slide_timer < 100 { 
        slide_pos = lerp(slide_pos,max_s,0.5);  
        if abs(max_s-slide_pos) < 1 slide_pos = max_s; 
        text_pos = max_s; 
    } else {
        slide_pos = ease_sineIn(max_s,0,slide_timer-100,20); 
        text_pos = slide_pos;
    }
    var cssline_spr = sprite_get("css_line");
    var offs_y = 140;
    var offs_x = 10;
    draw_sprite_ext(cssline_spr,0,x+offs_x,y+offs_y,(1/sprite_get_width(cssline_spr))*slide_pos,2,0,__dclr,1);
    draw_sprite_ext(cssline_spr,1,x+offs_x+slide_pos,y+offs_y,2,2,0,__dclr,1);
    draw_set_alpha(text_pos/max_s);
    draw_debug_text(floor(x)+offs_x+floor(text_pos/max_s*6),floor(y)+offs_y-8,text);
    draw_set_alpha(1);
}
if css_hovered {
    if slide_timer > 100 slide_timer = 0;
    if slide_timer > 80 slide_timer--;
}

//draw_debug_text(floor(x)+12, floor(y)-14, `[Beta, see desc for details]`);

//draw_rectangle_color(x+10,y+10,x+210,y+151,c_white,c_white,c_white,c_white,false);

prev_alt = current_alt; 
css_timer++;
swap_timer += swap_timer < 10;
slide_timer += slide_timer < 120;
#define css_init(uuid)
print("init")
soupcss_char = uuid //unique identifier for your character, derived from your idle sprite index. 
undefinedcolor = c_lime; 
my_cursor = noone; 
with (asset_get("cs_playercursor_obj")) {
    if get_instance_player(self) == other.player {
        other.my_cursor = self;
    }
}
//the css y is 316.01. the change will literally not be visible, 
//so im just gonna floor it myself and never worry again
x = floor(x); 
y = floor(y); 
//set alt data 
alts = []; 
default_shade_slot = 3; //shade slot used for if a color is not defined in an alt. 
//add each alt here! in order from top to bottom.
add_alt("Rokesha"); 
add_alt("Hime");
add_alt("Sprite Star");
add_alt("Gummy");
add_alt("Santiana");
add_alt("Misato");
add_alt("Rox");
add_alt("Ольга");
add_alt("Анна");
add_alt("maki roll");
add_alt("Zetta");
add_alt("Reisen");
add_alt("Liz");
add_alt("Lumi");
add_alt("Abyss");
add_alt("Eltnum");
add_alt("Mori Calliope");
add_alt("Fio");
add_alt("BLM");
add_alt("Blueberry");
add_alt("Rat God");
add_alt("Cotton Candy..?");


css_timer = 0; 
swap_timer = 0; 
slide_timer = 0; 
slide_pos = 0; 
prev_alt = 0; 
__clr_p = alts[0][1]; 
__clr_c = alts[0][1]; 
#define add_alt
///add_alt(name, ?color) 
var name = argument[0], 
    color = argument_count > 1 ? argument[1] : make_color_rgb(         
        get_color_profile_slot_r(array_length(alts),default_shade_slot),        
        get_color_profile_slot_g(array_length(alts),default_shade_slot), 
        get_color_profile_slot_b(array_length(alts),default_shade_slot)
        );
array_push(alts,[name,color]);
#define point_in_rect(px,py,x1,y1,x2,y2)
return (px >= x1 && px <= x2) && (py >= y1 && py <= y2)
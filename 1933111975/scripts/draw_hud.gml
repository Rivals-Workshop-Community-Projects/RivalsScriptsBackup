//draw_hud - the x position of your HUD element is 48*(i-1)

draw_sprite_ext(spr_padlock, 0, temp_x+199, temp_y+43, 1, 1, 0, c_white, 1);



if !hidehud{

    if (beta && ((!practice && get_gameplay_time() > 140) || get_gameplay_time() > 360)){
        draw_debug_text(10,10,"Trummel & Alto Closed Beta Build");
        draw_debug_text(10,28,"For your eyes only!");
    }
    
    if (practice || is_ai){
        if godmode{
            var drawheight = 0;
            if (godmodeanimtimer < godmodemaxtimer * .5){
                drawheight = floor(ease_cubeOut(0, 20, godmodeanimtimer, godmodemaxtimer * .5))
            }
            else{
                drawheight = floor(ease_quartIn(20, -18, godmodeanimtimer - godmodemaxtimer * .5, godmodemaxtimer * .5))
            }
            if !practice{
                drawheight -= 36;
            }
            draw_debug_text(temp_x+46,temp_y-66-drawheight,"Godmode Enabled");
        }
        else if (godmodeanimtimer > 0){
            var drawheight = 0;
            if (godmodeanimtimer < godmodemaxtimer * .5){
                drawheight = floor(ease_cubeOut(-18, 20, godmodeanimtimer, godmodemaxtimer * .5))
            }
            else{
                drawheight = floor(ease_quartIn(20, 0, godmodeanimtimer - godmodemaxtimer * .5, godmodemaxtimer * .5))
            }
            draw_debug_text(temp_x+46,temp_y-66-drawheight,"Godmode Disabled");
        }
    }
    
    if (practice && !is_ai){
        if tournament_safe{
            draw_debug_text(temp_x+19,temp_y-48,"Practice Mode features");
            draw_debug_text(temp_x+14,temp_y-30,"disabled during Genesis 7.");
        }
        else{
            draw_debug_text(temp_x+12,temp_y-48,"Taunt for a how-to-play!");
            draw_debug_text(temp_x+26,temp_y-30,"(Hold UP: Patch Notes)");
        }
    }
    
    shader_start();
    
    if codec{
        draw_sprite(spr_textbox, textboxframe, temp_x + 102, temp_y - 4);
        
        if (textboxframe == 8){
        
            if (currentcodecline == 5){
                var warnframe = floor((codectimer2 mod 60) / 10);
                if (warnframe > 5){
                    warnframe = 3;
                }
                draw_sprite_ext(spr_cloudwarn, warnframe, temp_x+202, temp_y-19, 1, 1, 90, c_white, 1);
            }
        }
    }
    
    shader_end();
    
    if (codec && textboxframe == 8){
        draw_debug_text(temp_x+14,temp_y-78,codecprint[1]);
        draw_debug_text(temp_x+14,temp_y-60,codecprint[2]);
        draw_debug_text(temp_x+14,temp_y-42,codecprint[3]);
        draw_debug_text(temp_x+14,temp_y-24,codecprint[4]);
        var offset = 0;
        if (codecindex+1 >= 10){
            offset = 8;
        }
        var offset2 = 0;
        if (maxcodecindex+1 >= 10){
            offset2 = 8;
        }
        draw_debug_text(temp_x-26-offset-offset2, temp_y-36, (string(codecindex+1) + "/" + string(maxcodecindex+1)));
        
        if (codecindex == 0 && !is_ai){
            if practice{
                draw_debug_text(temp_x+220,temp_y-78,"Skip 10: Side + Taunt");
                draw_debug_text(temp_x+220,temp_y-60,"Next: Taunt");
                draw_debug_text(temp_x+220,temp_y-42,"Prev: Up + Taunt");
                draw_debug_text(temp_x+220,temp_y-24,"Exit: Down + Taunt");
            }
            else{
                draw_debug_text(temp_x+220,temp_y-24,"Exit: Taunt");
            }
        }
    }
    
    if (codec && textboxframe == 8){
        draw_sprite(speakers[speaker], expression + speakerframe, temp_x - 34, temp_y - 82);
    }
}



//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if (abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
var x/*:int*/ = argument[0], y/*:int*/ = argument[1], text/*:string*/ = argument[2], font/*:int*/ = argument[3];
var color = argument_count > 4 ? argument[4] : c_white;
if draw_get_font() != font {
    draw_set_font(font);
}
draw_text_color(x+2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y,text,color,color,color,color,1);
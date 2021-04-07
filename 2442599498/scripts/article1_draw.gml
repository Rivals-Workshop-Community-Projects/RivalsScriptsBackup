//

if text_type == 1 { //lower speech bubble
    draw_sprite(sprite_get("speechbubble_bottom"), 0, x, 545);
    
    var textx = x - 76;
    var texty = 562;
    var textscale = 0.75;
    var textwidth = 300;
    
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_black);
    draw_set_alpha(1);
} else if text_type == 2 { //left side speech bubble
    draw_sprite(sprite_get("speechbubble_left"), 0, x - 350, y);
    
    var textx = x - 340;
    var texty = y - 40;
    var textscale = 0.75;
    var textwidth = 300;
    
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_black);
    draw_set_alpha(1);
} else if text_type == 5 { //right side speech bubble
    if player_id.freeplay {
        var ymod = 100;
    } else {
        var ymod = 0;
    }
    draw_sprite(sprite_get("speechbubble_right"), 0, x + 150, y + ymod);
    
    var textx = x + 190;
    var texty = y - 40 + ymod;
    var textscale = 0.75;
    var textwidth = 300;
    
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_black);
    draw_set_alpha(1);
} else if text_type == 7 { //right side small speech bubble
    draw_sprite(sprite_get("speechbubble_right_small"), 0, x + 170, y);
    
    var textx = x + 190;
    var texty = y - 40;
    var textscale = 0.75;
    var textwidth = 300;
    
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_black);
    draw_set_alpha(1);
} else if text_type == 3 || text_type == 4 { //battle textbox flavour text
    var height = 200;
    var width = 800;
    var thickness = 10;
    
    //draw_rectangle_color(x+width/2, y+height/2, x-width/2, y-height/2, c_white,c_white,c_white,c_white,false);
    //draw_rectangle_color(x+width/2 - thickness, y+height/2 - thickness, x-width/2 + thickness, y-height/2 + thickness, c_black,c_black,c_black,c_black,false);
    draw_rectangle_width(x+width/2, y+height/2, x-width/2, y-height/2, thickness);
    
    var textx = x-width/2 + 70;
    var texty = y-height/2 + 30;
    var textscale = 1.5;
    var textwidth = width/textscale - 80;
    
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    
    draw_text_transformed(textx - 40, texty, "*", 2, 2, 0);
} else if text_type == 100 { //battle textbox in menu text
    var height = 200;
    var width = 800;
    var thickness = 10;
    
    var textx = x - 150;
    var texty = y - 30;
    var textscale = 1.5;
    var text_sepx = 190;
    var text_sepy = 30;
    
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    
    draw_rectangle_width(x+width/2, y+height/2, x-width/2, y-height/2, thickness);
    
    draw_text_transformed(textx - text_sepx - 40, texty - text_sepy, "*", 2, 2, 0);
    if !(player_id.phase == 1 && player_id.button_selected == "Act") {
        draw_text_transformed(textx + text_sepx - 40, texty - text_sepy, "*", 2, 2, 0);
        draw_text_transformed(textx - text_sepx - 40, texty + text_sepy, "*", 2, 2, 0);
        draw_text_transformed(textx + text_sepx - 40, texty + text_sepy, "*", 2, 2, 0);
    }
    
    draw_text_transformed(textx - text_sepx, texty - text_sepy, text_arr[0], textscale, textscale, 0);
    draw_text_transformed(textx + text_sepx, texty - text_sepy, text_arr[1], textscale, textscale, 0);
    draw_text_transformed(textx - text_sepx, texty + text_sepy, text_arr[2], textscale, textscale, 0);
    draw_text_transformed(textx + text_sepx, texty + text_sepy, text_arr[3], textscale, textscale, 0);
} else if text_type == 6 { //essay
    var height = 200;
    var width = 800;
    var thickness = 10;
    
    var textx = x - 140;
    var texty = y - 20;
    var textscale = 1.5;
    var text_sepx = 190;
    var text_sepy = 50;
    
    draw_set_font(asset_get("roaMBLFont"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    
    if timer > 300 {
        var essay = "TIME UP!!!"
    } else {
        var essay = "ESSAY PROMPT:
Why do you love most about Mettaton?"
    }
    
    draw_rectangle_width(x+width/2, y+height/2, x-width/2, y-height/2, thickness);
    draw_text_transformed(textx - text_sepx, texty - text_sepy, essay , textscale, textscale, 0);
    draw_text_transformed(textx - text_sepx, texty + text_sepy, text_current, textscale, textscale, 0);
}

if text_type != 100 && text_type != 6 {
    draw_text_ext_transformed(textx, texty, text_current, 30, textwidth, textscale, textscale, 0);
}

//button selection prompts
if text_type = 100 && !(player_id.phase == 1 && player_id.button_selected == "Act") {
    draw_text_transformed(textx - text_sepx + 195, texty - text_sepy, "(parry)", 1.5, 1.5, 0);
    draw_text_transformed(textx + text_sepx + 195, texty - text_sepy, "(strong)", 1.5, 1.5, 0);
    draw_text_transformed(textx - text_sepx + 195, texty + text_sepy, "(taunt)", 1.5, 1.5, 0);
    draw_text_transformed(textx + text_sepx + 195, texty + text_sepy, "(special)", 1.5, 1.5, 0);
}

//scrolling
if text_type = 100 && player_id.button_selected == "Item" {
    draw_text_transformed(x + 120, y + 50, "PAGE (dodge)", 1.5, 1.5, 0);
}

#define draw_rectangle_width(x1, y1, x2, y2, w)
var x1, y1, x2, y2, w;
x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];
w = argument[4];
draw_rectangle_color(x1+w/2, y1+w/2, x1-w/2, y2-w/2, c_white,c_white,c_white,c_white, false);
draw_rectangle_color(x2+w/2, y1+w/2, x2-w/2, y2-w/2, c_white,c_white,c_white,c_white, false);
draw_rectangle_color(x1+w/2, y1+w/2, x2-w/2, y1-w/2, c_white,c_white,c_white,c_white, false);
draw_rectangle_color(x1+w/2, y2+w/2, x2-w/2, y2-w/2, c_white,c_white,c_white,c_white, false);
//debug

/*
if (state == 0) {
    var alert_col = #ED1C24;
    
    var _w = 48;
    var _h = 80;
    
    drawOutline(x+(_w/2), y-2, x-(_w/2), y-_h, alert_col, 2);
    draw_sprite(sprite_get("alert_exclamation"), 0, x+(_w/4), y+(_h/4));
}
*/

/*
if (state == 1) {
    var soul_spr = -1;
    var arrow_spr = -1;
    with (sansID){
        soul_spr = sprite_get("blue_soul");
        arrow_spr = sprite_get("arrow");
        shader_start();
    }
    if (arrow_spr != -1)
        draw_sprite_ext(arrow_spr, 0, x-1, y, 1, 1, sansID.dspecJoyDir, c_white, 1);
        //draw_sprite(soul_spr, 0, x, y);
    with (sansID){
        shader_end();
    }
}
*/

#define sansAlert(_attack, _hb, _alertType)
var alert_col = /*#*/$241CED;
var hX = get_hitbox_value(_attack, _hb, HG_HITBOX_X);
var hY = get_hitbox_value(_attack, _hb, HG_HITBOX_Y);
var hW = get_hitbox_value(_attack, _hb, HG_WIDTH);
var hH = get_hitbox_value(_attack, _hb, HG_HEIGHT);
var hLeft = hX-(hW/2)
var hRight = hX+(hW/2);
var hBottom = hY+(hH/2);
var hTop = hY-(hH/2);

if (_alertType >= 1) {
    drawOutline(x+(hLeft*spr_dir), y+hBottom-3, x+(hRight*spr_dir)-1, y+hTop-1, 000000, 8);
    //drawOutline(x+((hLeft+2)*spr_dir), y+hBottom-6, x+((hRight-2)*spr_dir)-1, y+hTop+1, #000000, 8);
    drawOutline(x+((2+hLeft)*spr_dir), y+hBottom-5, x+((hRight-2)*spr_dir)-1, y+hTop+1, /*#*/$FFFFFF, 4);
} else {
    //the x2 of draw_rectangle is ever so slightly offset by one (1) pixel to the 
    //right which caused me to lose my mind before i implemented a caveman fix
    drawOutline(x+(hLeft*spr_dir), y+hBottom-3, x+(hRight*spr_dir)-1, y+hTop-1, alert_col, 2);
    draw_sprite(sprite_get("alert_exclamation"), 0, x+(hX*spr_dir), y+hY-1);
}

#define drawOutline(_x1, _y1, _x2, _y2, color, thickness)
for (var i = 0; i < thickness; i++) {
    draw_rectangle_color(
        _x1+(i*spr_dir), 
        _y1-i, 
        _x2-(i*spr_dir), 
        _y2+i, 
        color, color, color, color, 1);
}
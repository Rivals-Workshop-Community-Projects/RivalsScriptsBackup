var sad_x = -62;
var happy_x = -32;
var angry_x = 28;

var sad_y = 56;
var happy_y = 132;
var angry_y = 52;

if (menu_open){
    if (spr_dir == 1){
        draw_sprite( sprite_get("iconsad"), (sad_cooldown > 0), x + sad_x, y - sad_y);
        draw_sprite( sprite_get("iconhappy"), (happy_cooldown > 0), x + happy_x, y - happy_y);
        draw_sprite( sprite_get("iconangry"), (angry_cooldown > 0), x + 42, y - angry_y);
    }
    else{
        draw_sprite( sprite_get("iconsad"), (sad_cooldown > 0), x + sad_x - 12, y - sad_y);
        draw_sprite( sprite_get("iconhappy"), (happy_cooldown > 0), x + happy_x, y - happy_y);
        draw_sprite( sprite_get("iconangry"), (angry_cooldown > 0), x + angry_x + 4, y - angry_y);
    }
}
//DRAW HUD

if ("hasCharge" not in self) exit;

if (hasCharge){
    draw_sprite(sprite_get("gaugefull"), (floor(0)), temp_x - 2, temp_y - 16);
} else {
    draw_sprite(sprite_get("gauge"), (floor(chargeCounter/7.5)), temp_x - 2, temp_y - 16);
}
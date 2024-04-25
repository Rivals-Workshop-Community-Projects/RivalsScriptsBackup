

for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{

    var obj = afterimage_array[i];
    var spriteSize = obj.smallSprites;
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+spriteSize), 1+spriteSize, obj.rot, obj.col, 1-obj.timer/obj.timerMax);

}

if (get_local_setting(SET_HUD_SIZE) != 0){
    shader_end();
	draw_sprite_ext(asset_get("triangle_spr"), 0, x, y - 90 -((state == "cow") * 35), 1, 1, 0, get_player_hud_color(crateParriedPlayer), 1);
    with (player_id) shader_start();
}


//FIELD SYSTEM PRE_DRAW.GML (by Delta Parallax)
//ONLY WORKS IF YOU HAVE AFTERIMAGES ON.


if(battery_vis > 0){
    
var temp_x = x - 26;
var temp_y = y + 36;

shader_start();
draw_sprite_ext(sprite_get("hud"), 2, temp_x, temp_y - 12, 2, 2, 0, c_white, battery_vis);

draw_sprite_part_ext(sprite_get("hud"), 1, 0, 0, ceil((shield_health/shield_health_max) * 25), 8, temp_x, temp_y - 12, 2, 2, c_white, battery_vis);

if(hud_ping_timer > 0){
    draw_sprite_part_ext(sprite_get("hud"), 0, 0, 0, ceil((shield_health/shield_health_max) * 25), 8, temp_x, temp_y - 12, 2, 2, c_white, hud_ping_timer / 10);
}
shader_end();

}


//This is where all of the afterimage draw logic is.
//much color very woag

shader_end()

//Push the state of the gpu.
gpu_push_state()

//Make all of the afterimages silhouettes.
gpu_set_fog(1,player_field_vars.after_image_color,1,0)

//Loop through all afterimages and draw them.
for (var a = 0; a < ds_list_size(player_field_vars.after_images); a++)
{
    var after = player_field_vars.after_images[| a]
    draw_sprite_ext(after.sprite,after.frame,after.pos[0],after.pos[1],after.spr_face,2,0,-1,after.alpha);
}

//Return everything to the way it was.
gpu_pop_state();
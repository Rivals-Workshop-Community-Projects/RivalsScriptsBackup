//Draws the Turbine Max Charge Effect 

shader_start();

if (turbine_cont >= 110){
	draw_sprite_ext(sprite_get("charged_back"), get_gameplay_time()*.4, x, y, 2, 2, 0, c_white, .85);	
}

shader_end();

//Draws the Plat sprite
if (state == PS_RESPAWN){
    draw_sprite_ext(sprite_get("plat_sprite"), state_timer/2, x, y, 2, 2, 0, c_white, 1);
}


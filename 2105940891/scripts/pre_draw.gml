//post_draw
shader_start();

if (ncharge >= 1 && ncharge <= 59) {
	draw_sprite(sprite_get("Charge1Pre"), get_gameplay_time()*.15, x, y);
}

if (ncharge >= 30 && ncharge <= 59) {
	draw_sprite(sprite_get("Charge2Pre"), get_gameplay_time()*.15, x, y);
}

if (attack == AT_NSPECIAL && window == 2 && state == PS_ATTACK_GROUND) {
	draw_sprite(sprite_get("Ground1Pre"), get_gameplay_time()*.15, x, y);
}

if (ncharge >= 60 && ncharge <= 119) {
	draw_sprite(sprite_get("Charge3Pre"), get_gameplay_time()*.15, x, y);
}

if (instance_exists(obj_article1)){
	draw_sprite(sprite_get("Eye Health Empty"), 0, Minion.x, Minion.y + 15); 
	draw_sprite_part(sprite_get("Eye Health Full"), 0, 0, 100, 78 + Minion.health, 100, Minion.x - 100, Minion.y + 15);
}
shader_end();
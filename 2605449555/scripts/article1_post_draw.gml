//article1_post_draw

if (cannonball_BurningForm == true && state != 1 && cannoball_BurnStartFXFrame > 3 && cannonball_GrabbedFSpcInvis == false) {
	draw_sprite_ext(sprite_get("cannonballburned"), image_index, x, y, 1, 1, 0, -1, 1);
}

if (cannonball_BurningForm == true && cannoball_BurnStartFX == false && cannonball_GrabbedFSpcInvis == false) {
	draw_sprite_ext(sprite_get("burningboom"), cannoball_BurnStartFXFrame, x, y + 15, 1, 1, 0, -1, 1);
	
}
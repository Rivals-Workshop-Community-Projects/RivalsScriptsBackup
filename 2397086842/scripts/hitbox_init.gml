///
lighten = hit_fx_create( sprite_get( "lighten" ), 12);
bfx1 = hit_fx_create( sprite_get( "ballfx1" ), 12);
bfx2 = hit_fx_create( sprite_get( "ballfx2" ), 10);
bfx3 = hit_fx_create( sprite_get( "ballfx3" ), 7);
bfx4 = hit_fx_create( sprite_get( "ballfx4" ), 12);
bfx5 = hit_fx_create( sprite_get( "ballfx5" ), 21);
batted = 0
b4 = hit_fx_create( sprite_get( "ball4" ), 12);
sw2 = hit_fx_create( sprite_get( "shockwave2" ), 12);


sw = hit_fx_create( sprite_get( "shockwave" ), 8);


lockouttimer = 0

//Offscreen
if (attack == AT_NSPECIAL && type == 2 && kb_angle != 270 && !(hbox_num > 7 && hbox_num < 12)) {
	bouncing = false 
	uspecialHudY = 0 //Changes to the y of the projectile
	uspecialHudX = 0 //Changes to the x of the projectile
	uspecialNum = 0 //Changes based on location
	uspecialRot = 0 //Draw rotation
	uspecialShape = 0 //Draw shape
	// Values to edit. All values are based on distance before reaching the edge
	// Lower = Closer to the edge. Higher = farther from the edge
	uspecialMinX = 8 //Left
	uspecialMaxX = 8 //Right
	uspecialMinY = 8 //Up
	uspecialMaxY = 8 //Down
	//
}
//
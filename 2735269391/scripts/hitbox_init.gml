/// my_hitboxID.attack

//

fx_fstrong = hit_fx_create( sprite_get( "fx_fstrong" ),20);
fx_ustrong = hit_fx_create( sprite_get( "fx_ustrong" ),20);

pausing = 0



if (attack == AT_NSPECIAL && type == 2) {
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
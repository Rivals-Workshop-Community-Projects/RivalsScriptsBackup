///


            hpar2 = hit_fx_create( sprite_get( "hpar2" ), 20 );
            hpar3 = hit_fx_create( sprite_get( "hpar3" ), 20 );
            hpar1 = hit_fx_create( sprite_get( "hpar1" ), 18 );
            lockouttimer = 0
            
            fxspark1 = hit_fx_create( sprite_get( "fxspark1" ), 35 );
fxspark2 = hit_fx_create( sprite_get( "fxspark2" ), 35 );
fxspark3 = hit_fx_create( sprite_get( "fxspark3" ), 35 );
randox = (x % 4)*40	
randoy = (y % 6)*10	

sentrymode = 0

if attack == AT_EXTRA_1 {
plasma_safe = true

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

if attack == AT_DSPECIAL{
should_make_shockwave = false
}


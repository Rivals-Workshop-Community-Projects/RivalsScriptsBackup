//

if attack == AT_USPECIAL && hbox_num == 2 {
    for (var i = 1; i < 20; i++) can_hit[i] = true
    should_make_shockwave = false
    can_hit_self = true
}



//hitbox_init.gml
if attack == AT_USPECIAL && hbox_num == 1 {
	player_id.movex = 0
	player_id.movey = 0
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
	movex = 0
	movey = 0
}
//hitbox_init.gml
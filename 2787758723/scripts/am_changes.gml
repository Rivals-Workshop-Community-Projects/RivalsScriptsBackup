/*
-1.4
NOTE: This update is incompatable with AM 1.3 and below. Oh well...
Other than MARIO stuff being added, these were added too:

MAJOR CHANGES
	- The room size now dynamically changes depending on the maximum number of cells in a room.
	- Some Base cast jank fixed. 
		- This includes:
			- Forsburn/Custom clones now work, though their targeting might be funny.
			- Kragg's USPECIAL now works due to the room size being dynamic. Was funny before but this was a no-go.
			- Wrastor FSPECIAL now works due to the room size being dynamic. If the room size is too big it will cut off.
			- Etalus FSPECIAL now works due to the room size being dynamic.
			- Sein now almost immediately goes to Ori on stage start. Room start is a bit different and Sein might lag behind but Ori still works.
			- Certain projectiles (Orcane's drops, Pomme's notes) interact with the environment correctly.
		- These could not be fixed:
			- Olympia NSPECIAL destroys itself without the field when hitting an enemy.
			- Sylvanos grass does not work unless used on a platform
			- As usual, status effects will not work. Decided to keep this because of how other platform fighters seem to exclude this (Slap City etc). You may still use a custom hit event though.

	- Desyncs should not happen anymore. As it turns out instance IDs are different on every client so all client-only code that uses the id variable has been modified.
	- The camera now follows all players. This should make local games easier to play with multiple people and online games less prone to desyncs. Be nice, everyone!
	- Respawning has been changed to reset the room upon death by default. You may prevent this with a variable [put it here later lolo]
	- Player articles do not destroy themselves when leaving the room. Done to prevent always present articles from straight up now working (i.e. Ramlethal's swords)
	- Cell coordinates are now measured in [64, 32] squares. This is about 960x540, which is 1 screen. Grid size is also 32 pixels. This makes it easier to eyeball things from images instead
		of relying on the export function.

CODE CHANGES
	- Respawning uses cell coordinates instead of real coordinates. If you were using the real coordinates before they now need to be converted.
	- Anything using image_speed as an argument is now multiplied by 1 instead of 0.01.
	
	ROOMS:
		-Backgrounds used to be loaded with the room data at the same time as other articles. However due to the new article spawning system I needed to change that. 
			
		-Two new functions were added in user_event1 that change the way the background is created. The ground is now all placed automatically depending on the
			terrain's mask. I recommend creating a different image files with each collision type blocked out seperately. This makes backgrounds interact with projectiles better.
			
			room_add_terrain(room_id, [terrain_data])
				Note: Terrain always spawns at the top coodinate of the cell. 

				room_id: The unique numerical ID of the room.
				terrain_data: The terrain data of the room.
				Terrain data follows this format:
					[cell position, terrain_sprite, image_speed, terrain type, depth]
					
					cell_posision = The cell coordinate, in an array
					terrain_sprite = The terrain sprite, which should be the size of the cell.
					image_speed = The speed to animate the ground.
					terrain_type = The type of terrain.
						0 = Decoration
						1 = Platform
						2 = Solid

			room_add_background(room_id, [background_data])
				Note: Backgrounds always spawn at cell [0, 0]. 
				
				room_id: The unique numerical ID of the room.
				background_data: The background data of the room.
				Background data follows this format:
					[background_sprite, anim_spd, x_off, y_off, tiling_type, [parallax_x, parallax_y], [hsp, vsp], depth, alpha=1, blend=c_white]
					The parallax and speed arguments are put in nested arrays
					tiling_type = How the background should be tiled.
						0 = None
						1 = Horizontally
						2 = Vertically
						3 = Both
					The alpha and blend arguments are optional

	ARTICLES:
		- Article loading now uses chunk loading. This is way faster than spawning everything at once!
		- Articles also have some new variables for this change:
			-destroyed: Used for custom destroy calls, use this if something needs to do something before destroying itself.
			-dont_respawn: If an article leaves the view, should it despawn?
		- Article 4 (Trigger Zone) now has a trigger_shape of 3, which triggers based on camera position.
		- Article 14 (Particle Emitter) can spawn objects now.
			-Simply replace argument 5 with an object array!
			-Note, the X and Y values here are relative and in base cast space!
		- Article 16 (Global Point) can spawn text in absolute world space.
		- Article 24 (Mass Object Placer) added. All it does is place objects in a square. Not really recommended for heavier objects and is prone to slowdown.
		
		-Article 10 (Items) now have a DROPPED state, which checks when an item is sitting out in the open. Use this to set variables and give the item custom movement behavior.
		-Article 10 (Items) have 2 new use_types
			- -1 = Item does not suck into the player. Needs custom grab code.
			- 2 = Item is a status based item. Persists between rooms and does not destroy itself when picking up another item.
		-Artcile 6 (Enemies) recieved an overhaul to try to lessen the overhead.
			-Enemies now destroy themselves off screen and respawn when their spawn position leaves and reenters the screen (Mega Man anyone?). You may use dont_despawn to prevent despawning though.
			-Hitboxes spawned from enemies are now handled by the stage object, making spawning hitboxes less resource heavy. (You still need hit_owner and team in the hitbox's variables somewhere)
			-is_free is now deprecated and free can be used.
			-art_state is also deprecated and state can be used.
			-hitstop variable is now equal to hitpause variable.
			-Enemy knockback behaves more like player knockback. This includes ground bouncing and force flinching.
			-AI can now DI in different ways depending on the di_level variable. They follow base CPU level AI's logic and go as follows:
				- 1 = Always bad DIs. Use this for doodoofart enemies.
				- 2 = Always DIs in no direction.
				- 3 = Only DIs in a cardinal direction (0, 90, 180, 270)
				- 4 = Randomly switches between normal DI and no DI
				- 5-8 = DIs depending on the situation. Has a random chance to perfect DI and bad DI depending on the level (higher = better)
				- 9 = Always perfect DIs. Use this for literal gods.
			-user_event7 is recommended for setting attacks seperately from the enemy's logic. Does not make a difference but you will thank me later.
		
		NOTE: I did not check Articles 12 and 13 so they most likely will not work!

	ACTIONS:
		- The CHECK action now has a global variable checker when argument 0 is -1.
		- The TRANS_MUSIC action now correctly assigns music.
		- The CHECK and SET actions now work with solid and platform articles
		
	DEBUG MODE:
		- Now counts solid and platform articles seperately on the HUD.
		- NOTE: Exporting spawn data might not work anymore! However the position markers should still be OK.
*/
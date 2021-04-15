//Make NSpecial's hitbox only active between frames 31-35. If the animation speed gets adjusted, the hitbox_timer values will need to be adjusted to match the swing frames.
if(attack == AT_NSPECIAL){
	if(hitbox_timer < 24 || hitbox_timer > 27){
		image_xscale = 0;
		image_yscale = 0;
	} else {
		image_xscale = 0.46;    //width 92
		image_yscale = 0.3;        //height 60
		
    }
		if(hitbox_timer == 24) sound_play(asset_get("sfx_swipe_medium1"));
}

if(attack == AT_DSPECIAL){
    if(hitbox_timer < 24 || hitbox_timer > 27){
        image_xscale = 0;
        image_yscale = 0;
    } else {
        image_xscale = 0.47;    //width 94
        image_yscale = 0.32;        //height 64
		
    }
	if(hitbox_timer == 24) sound_play(asset_get("sfx_swipe_medium1"));
	
	}
	
if(attack == AT_FSPECIAL){
    if(hitbox_timer < 24 || hitbox_timer > 27){
        image_xscale = 0;
        image_yscale = 0;
    } else {
        image_xscale = 0.45;    //width 90
        image_yscale = 0.55;        //height 110
		
    }
	if(hitbox_timer == 24) sound_play(asset_get("sfx_swipe_medium1"));
	
	}
	
	
//DSTRONG
	
/*
 if(attack == AT_DSTRONG){
     if(hitbox_timer < 22 || hitbox_timer > 26){
         image_xscale = 0;
         image_yscale = 0;
     } else {
         image_xscale = 0.15;    //width 30
         image_yscale = 0.47;        //height 94

     }
 	if(hitbox_timer == 19) sound_play(asset_get("sfx_swipe_medium1"));
 }
*/	

//above code ended up not being needed, but still here if you want it for any reason

if attack == AT_DSTRONG {
	/*
	instance_place changed to position_meeting, since the first frames of the hitbox were empty,
	the game was trying to snap the hitbox to the ground but there was no visual thing there to snap to the ground 
	so it just yeeted the hitbox placement into the middle of nowhere in a blastzone
	y+50 changed to just y 
	*/
	while !position_meeting(x, y, asset_get("par_block")) and !position_meeting(x, y, asset_get("par_jumpthrough")){
		y += 1;
		if y > room_height {
			instance_destroy()
			exit;
		}
	}
	/*
	added a print line to all the different places so I could see when it was 
	calling the next hitboxes, you can view debug stuff with ctrl + 8, or remove the print lines if ya want
	*/
	if hbox_num == 1 and hitbox_timer = 16 {
		create_hitbox( AT_DSTRONG, 2, x+58*spr_dir, y )
		sound_play(asset_get("sfx_kragg_spike"))
	}
	if hbox_num == 2 and hitbox_timer = 16 {
		create_hitbox( AT_DSTRONG, 3, x+62*spr_dir, y )
		sound_play(asset_get("sfx_kragg_spike"))
	}
	//extra SFX added so spike 3 has a sound too! (without this it doesn't) final spike, so no spawning any hitbox here
	if hbox_num == 3 and hitbox_timer = 16 {
        sound_play(asset_get("sfx_kragg_spike"))
    }
}

//Projectiles don't kill specials


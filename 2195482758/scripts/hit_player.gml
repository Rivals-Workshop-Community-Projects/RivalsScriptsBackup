//hit_player - called when one of your hitboxes hits a player

// Disable firecracker damage if close
if(my_hitboxID.attack != AT_NSPECIAL)
{
	var tempArticle = collision_circle(
	x,
	y, 
	50, 
	asset_get("obj_article2"), 
	true,
	true );
	
	if(tempArticle != noone)
	{
		expl_can_hit = false;
	}
	
	
}

// Var for whifflag turn around times
if(my_hitboxID.attack == AT_DSPECIAL)
{
	whiffspin = true;
}



if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1)
{
	
	move_cooldown[AT_NSPECIAL] = max(move_cooldown[AT_NSPECIAL],1);

    // Find what slot this is in
    for (var i = 0; i < 10; i++;)
    {
        if(my_hitboxID.id == fc_array[i])
        {
            my_slot = i;
            break;
        }
    }
    
    // Clear it
    fc_array[my_slot] = 0;
    last_fc_vsp[my_slot] = 0;
    last_fc_hsp[my_slot] = 0;
    
    //var expl = create_hitbox(AT_NSPECIAL, 2, my_hitboxID.x , my_hitboxID.y );
    
    // My efforts to remove jank know no bounds
    var hitPlayer = other;
    
    // Create explosion
    with(pHitBox)
    {
    	if(player_id == other.id && (attack == AT_NSPECIAL) && hbox_num == 1)
    	{
			var expl = instance_create(floor(x), floor(y), "obj_article2");
		   	
		   	// Parried code
			if(reflected)
			{
				expl.parried = 0;
			}
			
			// Extra hitpause on throw
			if(transcendent == true)
			{
				expl.fc_timer = 6; //12
				sound_play(asset_get("sfx_blow_heavy1"));
			}
			else
			{
		    	expl.fc_timer = 0;
			}
		    
		    expl.explosions_to_do = num_fc;
		    expl.img_ind = image_index;
		    expl.sprite_index = sprite_index;
        	expl.image_index = image_index;
    	}
    }
}
else if(my_hitboxID.attack == AT_NSPECIAL)
{
	
  // Parried code
  if(other == id)
	{
		expl.parried = 0;
	}
	
}

// Disable galaxy with firecrackers
if(my_hitboxID.attack == AT_NSPECIAL) hit_player_obj.should_make_shockwave = false;

// Fspecial grab
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	if(hit_player_obj.state_cat == SC_HITSTUN)
    if ((window == 3 || window == 4) && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
        last_grabbedid = grabbedid;
	    grabbedid.ungrab = 0;
	    
	    vsp = 0;
	    
	    sound_play(sound_get("tenru_grab"));
	    window = 5;
	    window_timer = 1;
	    grabbedid.x = x + (spr_dir * 80);
	     grabbedid.y = y-5;
    }
}

// Uspecial grab
if (my_hitboxID.attack == AT_USPECIAL){
	if(hit_player_obj.state_cat == SC_HITSTUN)
    if ((window == 2 || window == 3 || window == 4 || window == 5 || window == 6 || window == 7) && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
        last_grabbedid = grabbedid;
	    grabbedid.ungrab = 0;
	    
	    if(window > 2)
	    {
		    sound_play(sound_get("tenru_grab"));
		    window_timer = 1;
		    grabbedid.x = my_hitboxID.x;
		    grabbedid.y = my_hitboxID.y;
		}
		
	    GrabEasingTimer = 0;
	    
	    var max_moves = 30;
	    with(grabbedid) while(collision_line(x + (5*other.spr_dir),y,x + (5*other.spr_dir),y+30,asset_get("par_block"),false,true) && max_moves > 0){
	    	x-= other.spr_dir;
	    	max_moves--;
	    }
    }
}


// Dspecial "grab"
if (my_hitboxID.attack == AT_AIR_DSPECIAL){
	// If in hitstun, smaller hop
	if(hit_player_obj.prev_state == 12) from_dspecial = true;
	
	if(hit_player_obj.state_cat == SC_HITSTUN)
    if ((window == 2) && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
        last_grabbedid = grabbedid;
	    grabbedid.ungrab = 0;
	    
		window = 4;
	    window_timer = 1;
	    x = grabbedid.x;
	    y = grabbedid.y-50;
	    
	    // Delete falling hitbox
		with(pHitBox)
		{
			if((attack == 30) && player_id == other.id && (other.attack == other.AT_AIR_DSPECIAL))
			{
				hitbox_timer = 99;
			}
		}
    }
}
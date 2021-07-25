//articlesolid_update
timer++;

if (init == 0) {
    init = 1;
   // looks at the asset
    with (asset_get("obj_article_solid")) {
            state = 2;
            timer = 0;
            image_index = 0;
            // Loads the sprite
            sprite_index = sprite_get("table");
            // mask_index = sprite_get("table_mask");
        
       
    }
}


// sprite_index = sprite_get("table");
// image_index = 0;

//Has the table fall when it is in the air.
if(tabletech == 1){
	vsp = 0;
	invinc = 60;
	hsp = 4 *spr_dir;
}
else if(free){
    vsp += 0.2;
}else{
    vsp = 0;
}


if(tabletech == 0){
	


//Allows the table to be pushed.
collidingplayerleft = instance_place(x-4, y, asset_get("oPlayer"));
collidingplayerright = instance_place(x+4, y, asset_get("oPlayer"));

 if(collidingplayerleft != noone and invinc <= 0){
     if(collidingplayerleft.spr_dir == 1 and (collidingplayerleft.state == PS_WALK or collidingplayerleft.state == PS_DASH
     or collidingplayerleft.state == PS_DASH_START)){
         
         hsp = 2;
     }else if(collidingplayerright == noone){
         if(abs(hsp) > 0.5){
		hsp = hsp / 1.1;
	 }else{
	 	hsp = 0;
	 	tablehit = 0;
	 }
     }
    
 }
 
 if(collidingplayerright != noone and invinc <= 0){
     if(collidingplayerright.spr_dir == -1 and (collidingplayerright.state == PS_WALK or collidingplayerright.state == PS_DASH
     or collidingplayerright.state == PS_DASH_START)){
        hsp = -2;
     }else if(collidingplayerleft == noone){
         if(abs(hsp) > 0.5){
		hsp = hsp / 1.05;
	 }else{
	 	hsp = 0;
	 	tablehit = 0;
	 }
     }
    
 }
 
 
 
 if(collidingplayerleft == noone and collidingplayerright == noone and invinc <= 0){
     if(abs(hsp) > 0.5){
		hsp = hsp / 1.05;
	 }else{
	 	hsp = 0;
	 }
 }else{
 	if(abs(hsp) > 0.5){
		hsp = hsp / 1.02;
	 }else{
	 	hsp = 0;
	 	tablehit = 0;
	 }
 }
 
 
 hit = instance_place(x, y, asset_get("pHitBox"));
 //Has the table respond to damage.
 if(hit != noone and !free){
     if(invinc == 0){
         spawn_hit_fx(x, y-30, 135);
         
         
         
         if(hit.type == 1){
         	if(hit.player_id == player_id and hit.attack == AT_DAIR){
         		hit.player_id.old_hsp = hit.player_id.spr_dir * 6;
         	hit.player_id.old_vsp = -10;
         	}else if(hit.player_id == player_id and hit.attack == AT_FAIR){
         		hit.player_id.old_hsp = hit.player_id.spr_dir * -5;
         	hit.player_id.old_vsp = -10;
         	}
         	else{
         		hit.player_id.old_hsp = hit.player_id.hsp;
         	hit.player_id.old_vsp = hit.player_id.vsp;
         	}
         	
         	
         	hit.player_id.hitpause = true;
         hit.player_id.hitstop = hit.hitpause;
         }
         
         if(hit.player_id == player_id and hit.attack == AT_FSPECIAL_AIR){
         	player_id.tablehealth = health;
         	player_id.hittable = 1;
         	player_id.tablecount -= 1;
			player_id.table = noone;
        	instance_destroy();
         }
         
         //hit.player_id.hitstop_full = hit.hitpause;
         health -= hit.damage;
         launch_knock = hit.kb_value;
        
         
         tablehit = 1;
         launch_player = hit.player;
         
         if(hit.kb_angle == 361){
             launch_angle = 45;
         }else{
             launch_angle = hit.kb_angle;
         }
         if(hit.player_id.x < x){
         	spr_dir = 1;
         	hsp = lengthdir_x(hit.kb_value,launch_angle)
         }else if(hit.player_id.x > x){
         	spr_dir = -1;
         	hsp = lengthdir_x(hit.kb_value,180-launch_angle)
         }
         
         
         
         
         sound_play(hit.sound_effect);
         if(health <= 0){
         		destroyed = true;
         		invinc = 2;
         }else{
         	invinc = 15 + hit.hitpause;
         }
         
         
         
     } 
     
     
     
 }
} 
 
 
 if(invinc > 0){
     invinc--;
     sprite_index = sprite_get("table_hit");
 }else{
     
     
     
     sprite_index = sprite_get("table");
 }


if (abs(x) > room_width) {
	player_id.tablehealth = 18;
	player_id.move_cooldown[AT_FSPECIAL] = 300;
	if tabletech == 1{
		player_id.move_cooldown[AT_FSPECIAL] = 120;
	}

	
	sound_play(sound_get("tablebreak"));
    player_id.table = noone;
    player_id.tablecount -= 1;
        instance_destroy();
}
if(abs(y) > room_height){
	player_id.tablehealth = 18;
	player_id.move_cooldown[AT_FSPECIAL] = 300;
	if tabletech == 1{
		player_id.move_cooldown[AT_FSPECIAL] = 120;
	}
	sound_play(sound_get("tablebreak"));
    player_id.table = noone;
    player_id.tablecount -= 1;

    instance_destroy();
}
if(health <= 8){
    image_index = 2;
}else if(health <= 16){
    image_index = 1;
}else{
	image_index = 0;
}




if(health <= 0 and invinc <= 0){

	//mask_index = asset_get("empty_sprite");
	//var launch = create_hitbox(AT_FSPECIAL, 3, x+20*spr_dir, y-30);
	//launch.hsp = lengthdir_x(5,launch_angle);
	//launch.vsp = lengthdir_y(5,launch_angle);
    //launch.player_id = launch_player;
    player_id.move_cooldown[AT_FSPECIAL] = 300;
    if tabletech == 1{
		player_id.move_cooldown[AT_FSPECIAL] = 120;
	}
	player_id.tablecount -= 1;

	
    player_id.tablehealth = 18;
    sound_play(sound_get("tablebreak"));
    spawn_hit_fx(x, y-30, 134);
    player_id.table = noone;
    instance_destroy();
}

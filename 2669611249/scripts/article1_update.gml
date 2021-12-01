state_timer++

// if free && state = 1  {
//   vsp = 3
// }

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state == 0) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	state = 1
    state_timer = 0
}

//check if the article has seen too many copies of itself to have the will to continue living
if (acid_count > acid_num) && state != 1{
    state = 1
    state_timer = 0
}

//aligns the puddle with the stage! kinda.
// if (state == 0 || state == 3) && state_timer = 1{
// 	if (!position_meeting(x - 24, y, asset_get("par_block"))) && (!position_meeting(x - 16, y, asset_get("par_jumpthrough"))){
// 		x += 12
// 		x = round(x)
// 		print("yahoy")
// 	}
// 	if (!position_meeting(x + 24, y, asset_get("par_block"))) && (!position_meeting(x + 16, y, asset_get("par_jumpthrough"))){
// 		x -= 12
// 		x = round(x)
// 		print("argo")
// 	}
// }

//... man, i give up

//poison! yay!
// if state == 0{
//     with oPlayer{
//         if place_meeting(x,y, other){
//             take_damage(player, other.player_id, 1)
//             print("eyy")
//         }
//     }
// }

// if state == 0 && state_timer mod 15 = 0{
//     var rand_x = -15 + random_func(69, 32, true)
//     create_hitbox(AT_DSPECIAL, 2, x + rand_x, y)
// }

if state == 0{
    with pHitBox {
        if other.player_id != player_id && type == 1 && damage > 0 && place_meeting(x,y,other){
            other.state = 1
            other.state_timer = 0
        }
    }
    var timing = state_timer mod 120
    //creates a bubble projectile every 30 frames, in a pattern that loops every 2 seconds
    switch(timing){
        case 0:
            create_hitbox(AT_DSPECIAL, 2, x - 16, y - 6)
            break;
        case 30:
            create_hitbox(AT_DSPECIAL, 2, x + 8, y - 6)
            break;
        case 60:
            create_hitbox(AT_DSPECIAL, 2, x - 8, y - 6)
            break;
        case 90:
            create_hitbox(AT_DSPECIAL, 2, x + 16, y - 6)
            break;
    }
}

//puddle is dying, this is so sad
if state == 1{
    if state_timer > die_time {
        state = 2
    }
}
//destroys the thing
if state == 2{
	with oPlayer{
        if other.orig_player == player{
        move_cooldown[AT_DSPECIAL] = 120
        }
    }
    instance_destroy();
    exit;
}

//starts up the thing
if state == 3{
    if state_timer > 8 {
        state = 0
        state_timer = 0
    }
}

//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("gastro_acid");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("gastro_acid_disappear");
        animation_type = 2;
        break;
    case 2:
        new_sprite = sprite_get("gastro_acid_disappear");
        animation_type = 1;
        break;
    case 3:
    	new_sprite = sprite_get("gastro_acid_forming");
        animation_type = 3;
        break;
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("your_sprite4")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
    case 3: //Increment image_index at the rate determined by idk_rate
        if (state_timer mod idk_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}
//Makes the camera shake for 6 frames when the player lands.
if (state == PS_LAND or state == PS_LANDING_LAG or state == PS_PRATLAND) && state_timer == 1 {
shake_camera( 2, 4 ) sound_play(asset_get("sfx_pillar_crumble")) sound_play(asset_get("sfx_land_heavy")) 
}

if (state == PS_DASH ) && (image_index % 11 == 3 || image_index % 11 == 9) && shaken == false {
    shaken = true;
    shake_camera( 1, 3 ) sound_play(asset_get("sfx_pillar_crumble")) sound_play(asset_get("sfx_land_heavy"))
}else if shaken == true && state == PS_DASH && image_index % 11 != 3 && image_index % 11 != 9{
    shaken = false;
}

if (state == PS_WALK ) && state_timer % 60 == 40 {
shake_camera( 3, 6 ) sound_play(asset_get("sfx_pillar_crumble")) sound_play(asset_get("sfx_land_heavy"))
}


if (state == PS_DASH_STOP ) && state_timer == 1 {sound_play(asset_get("sfx_pillar_crumble"))
}

if (state == PS_DASH_STOP ){
    if state_timer % 1 == 3 { shake_camera( 2, 2 ) sound_play(asset_get("sfx_pillar_crumble")) }
    
}

//crawling
if(state == PS_CROUCH){
    hurtboxID.image_yscale = 0.7;
    can_move = true;
    
    var dir_crawl = -left_down + right_down;
    
    if is_crawling == true && (image_index % 18 == 2 || image_index % 18 == 12) && shaken == false {
        shaken = true;
    shake_camera( 1, 3 ) sound_play(asset_get("sfx_pillar_crumble")) sound_play(asset_get("sfx_land_heavy"))
    }else if shaken == true && state == PS_CROUCH && image_index % 11 != 3 && image_index % 11 != 9{
        shaken = false;
    }
    
    if((dir_crawl) == 0){ // making sure you don't move while you aren't crawling
        hsp = 0;
        is_crawling = false;
    }
    
    if(is_crawling){
        crawling_timer++;
    }else{
        crawling_timer = -1;
    }
    
    if(dir_crawl != 0){  // moving
        spr_dir = dir_crawl;
        if(image_index % 18 >= 6 && image_index % 18 <= 10){
            hsp = dir_crawl*0.7;
        }else if (image_index % 18 >= 15 && image_index % 18 <= 17){
            hsp = dir_crawl*1.5;
        }
        is_crawling = true; 
    }
    
    
}
else{
    hurtboxID.image_yscale = 1;
    is_crawling = false;
}

if (attack == AT_FSPECIAL && window == 7 && window_timer == 1) {
spawn_dust_fx( x, y, sprite_get("hfx_dirt"), 26 );
}

if (attack == AT_DSTRONG && window == 2 && window_timer == 11) {
spawn_dust_fx( x, y, sprite_get("hfx_dirt"), 26 );
}

if(state != PS_WALL_JUMP){

	can_cling = has_walljump and !(attack == AT_EXTRA_1 and window > 0);
	
}else{
  if(can_cling and jump_down){
     doCling()
  }
}

if(state == PS_ATTACK_AIR or state == PS_PRATFALL){
	if(can_wall_jump and has_walljump and can_cling and jump_down){
		if(place_meeting(x + hsp, y, solids)){
			spr_dir = sign(-hsp)
			doCling()
		}
	}
}
// var ls = ds_list_create()
// variable_instance_get_names(id,ls)
// var s = 9
// for (var i = 0; i < ds_list_size(ls); i += s){
//   	var strings = "";
//   	for(var j = 0; j < s; j++){
//   		if(ls[| i + j] == undefined or string_pos("cling", ls[| i + j]) == 0) continue;
//   		strings += ls[| i + j] + " ";
//   	}
//   	if(string_length(strings) > 0) print(strings);
  
  
// } 
// ds_list_destroy(ls);

// if state != PS_WALL_JUMP{
// 	clinging = false;
// 	clinging_timer = 0;
// 	sound_stop(sound_get("knight_wall_slide"));
// }else{
// 	if (clinging){
// 		if clinging_timer == 0 { sound_play(sound_get("knight_mantis_claw")); }
// 		if clinging_timer == 1 { sound_play(sound_get("knight_wall_slide")) }


// 		vsp = clinging_timer * 0.1;
// 		if vsp > max_fall { vsp = max_fall; }
// 		clinging_timer++;
// 	}else{

// 		sound_stop(sound_get("knight_wall_slide"));
// 		if clinging_timer == state_timer - 1 { sound_play(sound_get("knight_wall_jump")); }

// 	}
// }

#define doCling()

clear_button_buffer(PC_JUMP_PRESSED);
can_let_go_jump = false;
walljump_charge = -1;
hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
set_attack(AT_EXTRA_1);
can_cling = false;

//other_post_draw

if(!instance_exists(other_player_id)){
    return;
}


if ("electric_buff_water_attack_threshold" not in other_player_id){
     return;
}

/*
if(buildup_electric_fx == 0 && buildup_water_fx == 0){ // Gate this with an if statement so it doesn't run every loop
    //Load Sprites from Daora
    var buildup_electrical_sprite;
    var buildup_water_sprite;
    var buildup_electrical_meter;
    var buildup_water_meter;
    
    with(other_player_id){
        buildup_electrical_sprite = sprite_get("buildup_electricity");
        buildup_water_sprite = sprite_get("buildup_water");
        buildup_electrical_meter = sprite_get("meter_electricity");
        buildup_water_meter = sprite_get("meter_water");
    }
    
    // Create Hitfx for element build up
    buildup_electric_fx = hit_fx_create(buildup_electrical_sprite, buildup_electric_fx_initial_timer);
    buildup_water_fx = hit_fx_create(buildup_water_sprite, buildup_water_fx_initial_timer);
}

//#region Element_Draw

    if(buildup_electric_fx_timer == 0 || buildup_water_fx_timer == 0){
        if(status_effect_electric > other_player_id.electric_buff_water_attack_threshold && buildup_electric_fx_timer == 0){
            //draw_sprite_ext(buildup_electrical_sprite,build_up_animation_speed,x,y,1,1,0,c_white,.5);
             electric_fx_object = spawn_hit_fx( x, y - char_height, buildup_electric_fx);
             sound_play(asset_get("sfx_absa_singlezap1"),false,noone,.25,2);
             buildup_electric_fx_timer = buildup_electric_fx_initial_timer; // Set Timer
        }
        
        if(status_effect_water > other_player_id.water_buff_electric_attack_threshold && buildup_water_fx_timer == 0){
            //draw_sprite_ext(buildup_water_sprite,build_up_animation_speed,x,y,1,1,0,c_white,.5);
            sound_play(asset_get("sfx_bubblepop"),false,noone,.25,1);
            water_fx_object = spawn_hit_fx( x, y - char_height - 30, buildup_water_fx);
            buildup_water_fx_timer = buildup_water_fx_initial_timer; // Set Timer
        }
    }
    
    //Update fx location
    var temp_x = x;
    var temp_y = y;
    var electric_fx_object_temp = electric_fx_object;
    var water_fx_object_temp = water_fx_object;
    var temp_depth = depth;
    with(asset_get("hit_fx_obj")){
        if(self == electric_fx_object_temp){
            x = temp_x;
            y = temp_y;
            depth = temp_depth - 1;
        }
        if(self == water_fx_object_temp){
            x = temp_x;
            y = temp_y;
            depth = temp_depth - 1;
        }
    }
//#endregion
*/
//#region Meter_Draw

var image_index = get_gameplay_time() / 10;
var temp_x = x;
var temp_y = y;
var temp_char_height = char_height;
// Electric
// y = x/4, 0 to 30
if(status_effect_electric > 0){
    // Meter
    var electric_meter_state = floor((status_effect_electric / 3.33) - 1);
    if(status_effect_electric > 20){electric_meter_state = 5;}
    if(status_effect_electric < 4){electric_meter_state = 0;}
    var temp_x_meter = x + 18;
    var temp_y_meter = y - (char_height / 2);
   /* with(other_player_id){
        draw_sprite_ext(sprite_get("meter_electricity"),electric_meter_state,temp_x_meter,temp_y_meter,1,1,0,c_white,.5);
    }
    */
    if(status_effect_electric > other_player_id.electric_buff_water_attack_threshold){
        with(other_player_id){
        draw_sprite_ext(sprite_get("buildup_electricity"),image_index,temp_x, temp_y,1,1,0,c_white,1);
        }
    }
}
// Water
if(status_effect_water > 0){
    var water_meter_state = floor((status_effect_water / 5.33) - 1);
    if(status_effect_water > 30){water_meter_state = 5;}
    if(status_effect_water < 6){water_meter_state = 0;}
    var temp_x_meter = x - 18;
    var temp_y_meter = y - (char_height / 2);
    /*with(other_player_id){
        draw_sprite_ext(sprite_get("meter_water"),water_meter_state,temp_x_meter,temp_y_meter,1,1,0,c_white,.5);
    }*/
    
    if(status_effect_water > other_player_id.water_buff_electric_attack_threshold){
        with(other_player_id){
        draw_sprite_ext(sprite_get("buildup_water"),image_index,temp_x,temp_y + 20,1,1,0,c_white,1);
        }
    }
}


//#endregion

// Unused Code
/*
{
    //Dthrow
    //Draws her arms in front Paired with code in other_pre_draw
    if(other_player_id.attack == AT_DTHROW && 
    other_player_id.state == PS_ATTACK_GROUND &&
    other_player_id.window == 3){
    
        var daora_sprite;
        var daora_spr_dir; // Store spr_dir following Daora's spr_dir
        with(other_player_id){
            daora_sprite = sprite_get("dthrow_post_draw");
            daora_spr_dir = spr_dir;
        }
        draw_sprite_ext(daora_sprite,other_player_id.image_index,x - (20*daora_spr_dir),y,daora_spr_dir,1,0,c_white,1);
    }
    
    //Uthrow L:ogic
    //Draws her arms in front Paired with code in other_pre_draw
    if(other_player_id.attack == AT_UTHROW &&
    other_player_id.state == PS_ATTACK_AIR &&
    other_player_id.window == 2){
        var daora_sprite;
        var daora_spr_dir; // Store spr_dir following Daora's spr_dir
        with(other_player_id){
            daora_sprite = sprite_get("uthrow_post_draw");
            daora_spr_dir = spr_dir;
        }
        draw_sprite_ext(daora_sprite,other_player_id.image_index,x - (20*daora_spr_dir),y,daora_spr_dir,1,0,c_white,1);
    }
}
*/

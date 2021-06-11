x = lerp(x, player_id.waluigi_x, 0.3)
y = lerp(y, player_id.waluigi_y, 0.3)
hsp = 15 * spr_dir;       
        
        
	if(player_id.window_timer % 4 == 0){
		spawn_hit_fx(x, y, player_id.waluigi_afterimage);
	}        
        
    if(player_id.waluigi_explode == true){
        Explode();
    }       
    if(instance_exists(obj_article1)){
    if(hit_wall){
        Explode();    
    } 
    }

#define Explode
        create_hitbox(49, 2, floor(x), floor(y));
        sound_play(asset_get("sfx_abyss_explosion_big"))
        player_id.waluigi_explode = false;
        player_id.window = 3;
        player_id.window_timer = 0;        
        instance_destroy();



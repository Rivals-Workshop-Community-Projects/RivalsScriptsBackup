//SWORD PROJECTILE

if (init == 0){
    init = 1;
}

state_timer++;

if (state == 0){ //Moving

    var spin_time = 24;
    lifetime -= 1;
    image_index = state_timer * 6 / spin_time;

    if (state_timer < 15 && v_dir == 0){ //short window to control the angle of the projectile
        if (player_id.up_down){
            v_dir = -1;
        } else if (player_id.down_down){
            v_dir = 1;
        }
    }

   if (state_timer%4 == 0 && state_timer > 10){
       proj_speed = (lerp(proj_speed, 0, .5)); //ease projectile speed from starting number to 0
   } 
    
    hsp = proj_speed*dir;
    vsp = (proj_speed*v_dir)/3;
    
    
    if (state_timer%7 == 0){
        if (state_timer > 21){
            var proj_hit = create_hitbox(AT_NSPECIAL, 2, x, y);
        } else {
            var proj_hit = create_hitbox(AT_NSPECIAL, 1, x, y);
        }
        
        
    }

    if (player_id.special_down && !create_field && state_timer > 10){
        
        create_field = 1;
        lifetime = 0;
        
    }
    
    
    if (lifetime <= 0){
        
        if (!create_field){
            player_id.move_cooldown[AT_NSPECIAL] = 34;
         }
        
        if (create_field && !hitpause){
            create_field = 0;
            var field = instance_create(x, y,"obj_article2");
            field.sprite_index = sprite_get("field_spawn");
        }
        
        if (hit_create && !hitpause){
            var field = instance_create(x, y,"obj_article2");
            field.sprite_index = sprite_get("field_spawn");
        }
        
        
        //sound_play(asset_get("sfx_oly_taunt"));
        state = 1;
        state_timer = 0;
        hsp = 0;
        vsp = 0;
        proj_speed = 0;
        sprite_index = sprite_get("nspecial_proj_destroy");
    }
    
}

if (state == 1){ //Destroyed

    var destroy_time = 24;
    image_index = state_timer * 6 / destroy_time;

    
    if (state_timer == destroy_time){
        
        instance_destroy();
        exit;
    }
    
}
//hitbox_update

// Bullet Logic
if (attack == AT_FSPECIAL) {
    
    //if (!free) destroyed = true;                                                // Destroy bullets when they hit the ground.
    //if ((place_meeting(x, y + 1, asset_get("par_block")) || (place_meeting(x, y + 1, asset_get("par_jumpthrough")) && (vsp > 0))))
    
    /*if (place_meeting(x, y, asset_get("par_block")))                            // TODO: Add proper platform collision; Old collision was kinda buggy. :(
        destroyed = true;*/
    
    // Solid Article Collision
    var _colliding_with_cover = false;                                          // Is this hitbox colliding with cover?
    var _solid_hit = instance_place(x, y, asset_get("obj_article_solid"));      // Check for solid articles first.
    if (instance_exists(_solid_hit)) {                                          // If a solid article was detected...
        if (player_id.sna_cover_obj == _solid_hit) {                            // If this article is Snake's cover...
            _colliding_with_cover = true;                                       // Tell the code that the hitbox is colliding with cover.
        }
        else {                                                                  // If this article is NOT Snake's cover...
            destroyed = true;                                                   // Destroy the hitbox.
        }
    }
    
    // Generic Solid Collision
    if (!_colliding_with_cover) {                                               // If NOT colliding with cover...
        _solid_hit = instance_place(x, y, asset_get("par_block"));              // Get any solid collision.
        if (instance_exists(_solid_hit)) {                                      // If a collision was detected...
            destroyed = true;                                                   // Destroy the hitbox.
        }
    }
    
    // Destroyed Sound Effects
    if (destroyed && !in_hitpause) {
    
        var _rand = random_func(0, 2, true);
    
        switch (_rand){
            case 0:
                sound_play(sound_get("sfx_hit_bullet_wall_01"));
            break;
            case 1:
                sound_play(sound_get("sfx_hit_bullet_wall_02"));
            break;
        }
        
    }
    
}
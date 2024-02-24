//article1_update

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

timer++
state_timer++

switch state {
    case 0: //spawn
    if state_timer == 1 {
        var fx = spawn_hit_fx(x, y, vfx_spawn)
            fx.depth = 0
            
        sound_play(sound_get("SpiritBlessingAppear"))
    }
    if state_timer >= 15 {
        state = 1
        state_timer = 0
    }
    break;
    
    case 1: //idle
    switch element {
        case MOON:      sprite_index = sprite_get("orb_wolf") break;
        case FIRE:      sprite_index = sprite_get("orb_fire") break;
        case EARTH:     sprite_index = sprite_get("orb_earth") break;
        case ICE:       sprite_index = sprite_get("orb_ice") break;
        case WATER:     sprite_index = sprite_get("orb_water") break;
        case LIGHTNING: sprite_index = sprite_get("orb_lightning") break;
        case SHADOW:    sprite_index = sprite_get("orb_shadow") break;
    }
    image_index = floor(timer/6)
    
    if state_timer >= 900 {
        state = 2
        state_timer = 0
    }
    break;
    
    case 2: //dissipate
    image_index = floor(timer/6)
    if state_timer == 1 {
        player_id.essence_consume_timer = 0
        sound_play(sound_get("SpiritBlessingInteract"))
        //spawn_hit_fx(x, y, 301)
    }
    if state_timer == 6 {
        sprite_index = asset_get("empty_sprite")
        mask_index = asset_get("empty_sprite")
    }
    if state_timer >= 40 {
        state = 3
        state_timer = 0
    }
    break;
    
    case 3: //die
    instance_destroy();
    exit;
    break;
}
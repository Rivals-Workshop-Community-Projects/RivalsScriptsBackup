///detele all your walk and dash related strip (minus turning, unless you want) and just keep one, name that one "move_stripX"
///put this in animation.gml

switch (state) {
    case PS_WALK :
    case PS_DASH_START :
    case PS_DASH :
    case PS_DASH_STOP :
        sprite_index = sprite_get("walk")
        image_index = (get_gameplay_time() * walk_anim_speed) % image_number;
    break; 
    case PS_RESPAWN :
        sprite_index = sprite_get("idle_plat")
        image_index = (get_gameplay_time() * idle_anim_speed) % image_number;
    break; 
}
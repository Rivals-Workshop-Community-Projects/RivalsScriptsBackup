//hitbox_update

switch(attack){
    case AT_FSPECIAL:
        through_platforms = 5;
        if hitbox_timer == 1{
            if player_id.azelf_futureready && player_id.azelf_psybeam_ready{
                with(obj_article1){
                    if player_id == other.player_id{

                                var pounce_dir = point_direction(other.x, other.y, x, y);
                                // print(string(pounce_dir))
                                other.hsp = lengthdir_x(25,pounce_dir);
                                other.vsp = lengthdir_y(25,pounce_dir);
                                other.length = 40
                                other.azelf_psychase = self;
                                other.proj_angle = pounce_dir
                                if other.hsp < 0 other.proj_angle += 180
                                other.image_index = 1
                                other.damage = 9
                                other.kb_value = 7
                                other.kb_scale = 0.6
                                other.hitpause = 8
                                other.hitpause_growth = 0.7
                                other.sound_effect = asset_get("sfx_clairen_hit_strong")
                                other.hit_effect = 112

                    }
                }
            }
        }
        if hitbox_timer == 6 image_index++
        if azelf_psychase != null && instance_exists(azelf_psychase){
            if point_distance(x, y, azelf_psychase.x, azelf_psychase.y) < 16{
                azelf_psychase.state = 1;
                azelf_psychase.state_timer = 0;
                // destroyed = true;
            }
        }
        if !free destroyed = true;
        break;
}
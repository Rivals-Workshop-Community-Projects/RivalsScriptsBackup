//hitbox_init

if attack == AT_FSPECIAL{
    through_platforms = 5;
    azelf_psychase = null;
    psybeam_vsp = 0;
    with obj_article1{
        if player_id.azelf_futureready && player_id.azelf_psybeam_ready{
            if player_id == other.player_id{
                psybeam = other;
                other.azelf_psychase = self;
                var pounce_dir = point_direction(other.x, other.y, x, y);
                other.hsp = lengthdir_x(25,pounce_dir);
                other.vsp = lengthdir_y(25,pounce_dir);
                other.length = 40;
                other.proj_angle = pounce_dir;
                if other.hsp < 0 other.proj_angle += 180;
                other.image_index = 1;
                other.damage = 9;
                other.kb_value = 7;
                other.kb_scale = 0.6;
                other.hitpause = 8;
                other.hitpause_growth = 0.7;
                other.sound_effect = asset_get("sfx_clairen_hit_strong");
                other.hit_effect = 112;
                other.psybeam_vsp = other.vsp;
            }
        }
    }
}
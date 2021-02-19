//Override color change on parry and rolls

if (state == PS_PARRY && (image_index == 1 || image_index == 2)){
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

shader_start();

switch(state){
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
    case PS_TECH_FORWARD:
    case PS_TECH_BACKWARD:
        draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, 1);
        break;
}



//Draw bullet trail

with (asset_get("pHitBox")){
    if (player_id == other.id && attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer < 9 && !hitplayer){
        with player_id{
            draw_sprite_ext(spr_bullettrail, other.image_index, (other.x - 60 * other.spr_dir), (other.y + (other.proj_angle != 0 ? (other.shoot_direction == "up" ? 20 : -20) : 0)), other.spr_dir, 1, other.proj_angle, c_white, 1);
        }
    }
}



//Up Strong sweetspot

if (attack == AT_USTRONG && window == 3 && window_timer < 4 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite(spr_sweetspot, 0, x, y - 170);
}

shader_end();
timer++;
image_index = floor(timer/4);
if(state < 4){


if(timer >= 51){
    var wall = instance_create(x, y, "obj_article_solid");
    wall.state = 2;
    wall.sprite_index = sprite_get("wall_loop");
    wall.spr_dir = spr_dir;
    player_id.fspecial_wall = wall;
    create_hitbox(AT_FSPECIAL, 4, x, y+64);
    instance_destroy(self);
}

} else if (state == 4){
    life++;
    if(life >= 16){
    instance_destroy(self);
    }
}
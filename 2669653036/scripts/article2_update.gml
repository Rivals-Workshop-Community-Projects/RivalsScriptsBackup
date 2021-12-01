//article1_update.gml
image_index += article_anim_speed;
/*
if (free) {
vsp = min(vsp + article_gravity, article_max_fall_speed);
hsp = Initial_Speed;
}
*/
//destroy article1 after 200 in-game ticks.

if ReadyToExplode = true {
    instance_destroy();
var new_article = instance_create(x, y, "obj_article2");
new_article.player_id = player_id;
}

//article1_update.gml
lifetime++;
if (lifetime >= 16) {
instance_destroy();
exit;
}

if (hit_wall = true) {
    instance_destroy();
    //array_push(phone_dust_query, [x, y, "dash", spr_dir]);
    exit;
}
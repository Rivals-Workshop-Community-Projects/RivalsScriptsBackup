var deep = depth;
with(oPlayer){
    if(depth <= deep){
        deep = depth - 1;
    }
}
depth = deep;

image_index += .25;
if(self != player_id.throw_plat){
    instance_destroy();
    exit;
}

if(/*!player_id.free && !player_id.freemd && */y == player_id.y && point_distance(x, y, player_id.x, y) <= 70){
    player_id.on_throw_plat = true;
} else {
    player_id.on_throw_plat = false;
}

// if(((player_id.attack == AT_NTHROW || player_id.attack == AT_FTHROW || player_id.attack == AT_UTHROW) && player_id.has_hit) || (player_id.attack == AT_EXTRA_1 && player_id.window == 2)){
//     // var hfx = spawn_hit_fx(x + 30 * spr_dir, y, 303);
//     // hfx.spr_dir = spr_dir;
//     // hfx.pause = 6;
    
//     // var hfx = spawn_hit_fx(x - 30 * spr_dir, y, 303);
//     // hfx.spr_dir = spr_dir * -1;
//     // hfx.pause = 6;
//     instance_destroy();
//     exit;
// }
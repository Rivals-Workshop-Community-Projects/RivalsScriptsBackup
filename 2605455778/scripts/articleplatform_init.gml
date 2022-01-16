if(player_id.stageplatcreate){
    sprite_index = player_id.stagePlattotem;
    print_debug("stage");
    spr_dir = player_id.spr_dir;
}else{
    sprite_index = player_id.wallPlattotemSpawn;
    spr_dir = -player_id.spr_dir;
    print_debug("wall");
    with(obj_article1){
        if(self.player_id == other.player_id){
            destroy = true;
        }
    }
}
mask_index = player_id.stagePlattotemMask;

destroy = false;
player_id.has_dinoplat = false;
jumpcount = 0;
standed = false;
amStage = false;
platanimcounter = 0;
platlifetimer = 0;
xMag = x;
offscreen = false;
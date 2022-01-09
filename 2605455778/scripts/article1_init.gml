sprite_index = player_id.totemSpawnAnim;
mask_index = player_id.totemIdle;
spr_dir = player_id.spr_dir;
destroy = false;
totemAnimCounter = 0;
fspecialHit = false;
can_be_grounded = true;

with(obj_article_platform){
    if(self.player_id == other.player_id){
        destroy = true;
    }
}
//print_debug("Alive")
/*
x = target.x+target.hsp;
y = target.y+target.vsp;
sprite_index = target.sprite_index;
image_index = target.image_index;
small_sprites = target.small_sprites;*/
if(player_id.lightning_counter > 0){
    image_alpha = (player_id.lightning_counter)/80;
} else {
    image_alpha = 0;
}
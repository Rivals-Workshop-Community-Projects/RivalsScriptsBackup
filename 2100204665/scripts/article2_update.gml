//article1_update

//animation
image_index = article_animation_frame;
if (article_animation_frame < image_number && article_animation_frame != 0) article_animation_frame += article_animation_speed;
else article_animation_frame = 0;

if (article_animation_frame == 6){
    var hitbox = create_hitbox(AT_EXTRA_1, 1, floor(x+5), floor(y-20));
    spawn_hit_fx( floor(x+5), floor(y-20), 126 );
    sound_play(asset_get("sfx_clairen_tip_strong"));
    instance_destroy();
}

x=host.x-(16*spr_dir)+host.hsp;	
y=host.y-(host.char_height-18)+host.vsp;

//if (article_animation_frame > 3 && article_animation_frame < 6 && !("made_hitbox" in self)){
//    var hitbox = create_hitbox(AT_EXTRA_1, 2, floor(x+5), floor(y-20));
//    made_hitbox = true;
//}

if host != noone {
    if(host.state==PS_RESPAWN)
    {
        instance_destroy();
        exit;
    }
}
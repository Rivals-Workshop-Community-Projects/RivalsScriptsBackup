//Red Bridge

state_timer++;
bridge_life--;

var current_sfx = bridge_sfx[bridge_current_length mod 5];

//Play Sound
if state_timer == 1{
    sound_play(current_sfx);
    var bridge_cloud = create_hitbox(AT_JAB, 1, x, y+8);
    bridge_cloud.length = 28;
    bridge_cloud.img_spd = 0.25;
}

if state_timer == 8{
    //Become Visible
    visible = true;
    
    //Spawn Next Bridge Piece
    if bridge_current_length < bridge_length{
    sound_stop(current_sfx);
    bridge_next = instance_create(x+(32*spr_dir), y, "obj_stage_article_platform", 5);
    bridge_next.spr_dir = spr_dir;
    bridge_next.bridge_current_length = bridge_current_length+1;
    bridge_next.bridge_life = bridge_life;
    }
}

//Kill the Bridge

if bridge_life <= 60{
    image_alpha = ((-sin(bridge_life))/2)+0.5;
}

if bridge_life <= 0{
    instance_destroy();
}
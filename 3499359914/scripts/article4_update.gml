state_timer++;
leaf_lifetime -= 1;

//Animate Leaf
if state_timer < 8{
    current_anim_frame = ((state_timer/8)*2);
}
else{
    current_anim_frame = 2;
}

//Leaf Dies
if leaf_lifetime <= 60{
    current_opacity = ((-sin(leaf_lifetime))/2)+0.5;
}

if leaf_lifetime <= 0{
    instance_destroy();
}
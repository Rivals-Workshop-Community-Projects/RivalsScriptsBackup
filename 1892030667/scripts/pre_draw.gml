// pre-draw
//draw_set_alpha(.1);
offsetx = 30;
drawitx = x-30*spr_dir;

if y < 420 { 
    offsety = y+60;
    drawity = 2*y+60-120;
}
else {
    offsety = y-view_hview-60;
    drawity = 2*y-view_hview-60-120;
}
//sprite_change_offset("idle", offsetx, offsety);
//sprite_change_offset("walk", offsetx, offsety);
//sprite_change_offset("jump", offsetx, offsety);

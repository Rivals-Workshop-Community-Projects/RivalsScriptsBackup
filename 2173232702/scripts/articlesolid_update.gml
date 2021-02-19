
lifespan--;
if (lifespan < 1){
    instance_destroy();
}

// if (turnaround_timer > 0){
//     turnaround_timer--;
// } else{
//     hsp *= -1;
//     turnaround_timer = 120;
// }

if (free){
    vsp += 0.3;
}
if (!collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_block"), 0, 1)
&& !collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_jumpthrough"), 0, 1)
&& !free){
    hsp *= -1;
    spr_dir *= -1;
}


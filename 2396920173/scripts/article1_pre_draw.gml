//article1_pre_draw

//after images
for (var i = array_length(uspec_afterimages) - 1; i >= 0; i--) {
    if uspec_afterimages[i,2] > 0 {
        draw_sprite_ext(piece == "P" ? sprite_get("idle") : sprite_get(piece + "idle"),0,uspec_afterimages[i,0],uspec_afterimages[i,1],spr_dir,1,0,c_white,uspec_afterimages[i,2]*0.05)
    }
}

//rook cannon
if rook_cannon != undefined {
    draw_sprite_ext(sprite_get("Rfspecial_barrel"), rook_cannon[3], rook_cannon[0], rook_cannon[1], spr_dir, 1, rook_cannon[2], c_white, 1);
}
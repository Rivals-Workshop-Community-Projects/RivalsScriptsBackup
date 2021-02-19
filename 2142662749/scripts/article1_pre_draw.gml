
if (chainActive) {
    draw_sprite_ext(sprite_get("chain_end"), 0, chainEndX, chainY, chainSprDir, 1, 0, c_white, 1);
    
    var linkDist = 14; //distance between links
    var numLinks = floor(abs((chainEndX - chainOriginX)/linkDist)) + 1;
    
    for (var i = 0; i < numLinks; i++) {
        draw_sprite(sprite_get("chain"), 0, chainEndX - spr_dir*(linkDist*i + 13), chainY);
    }
}
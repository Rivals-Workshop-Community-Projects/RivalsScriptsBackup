if nspec_ai_cur > 0 {
    shader_start();
    for (var i = nspec_ai_cur; i >= 0; i -= 1) {
        var ind = (nspec_ai_tot + nspec_ai_ind - i) % nspec_ai_tot;
        var ai = nspec_afterimages[ind];
        var alpha = ai.alpha * (1 - i / (nspec_ai_cur + 1) * 0.85);
        draw_sprite_ext(
            ai.sprite, ai.subimg,
            ai.x, ai.y,
            ai.xscale, ai.yscale,
            ai.rot, ai.col,
            alpha
        );
    }
    shader_end();
}
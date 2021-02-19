
 //draw_debug

//draw_debug_text(x - 30, y - 80, "nspec_charge: "+string(floor(nspec_charge)));
//draw_debug_text(x - 30, y - 100, "Ustrong_mine: "+string(Ustrong_mine))
//draw_debug_text(x - 30, y - 80, "window_timer: "+string(floor(window_timer)));

/*
if(limitshow < 60 ){
    if(bomb_limit = 2){
        draw_debug_text(x - 30, y - 60, "Bomb_limit = 2");
    }
    if(bomb_limit = 5){
        draw_debug_text(x - 30, y - 60, "Bomb_limit = 5");
    }
    if(bomb_limit = 99){
        draw_debug_text(x - 30, y - 60, "Bomb_limit = 99!");
    }
    
}

draw_debug_text(x - 30, y - 80, "Ustrong: "+string(floor(Ustrong_mine)));
//draw_debug_text(x - 30, y - 80, "fuse: "+string(floor(fuse)));
//draw_debug_text(x - 30, y - 80, "lowfuse: "+string(floor(lowfuse)));
//draw_debug_text(floor( x - 30), floor(y -60), "ovenhands: "+string(floor(ovenhands)));
//draw_debug_text(x - 30, y - 60, "superjump: "+string(floor(superjump)));
//draw_debug_text(x - 30, y - 100, "window_timer: "+string(floor(window_timer)));
//draw_debug_text(x - 30, y - 100, "handx: "+string(floor(handsx)));
//draw_debug_text(x - 30, y - 80, "handy: "+string(floor(handsy)));

        //draw_debug_text(x - 30, y - 80, "Bomb_limit ="+string(floor(bomb_limit)));
        
with(obj_article1){
    if(player_id == other.id){
        
        draw_debug_text(x - 30*spr_dir, y - 120, "speed: "+string(bomb_sp));
        //draw_debug_text(x - 30, y - 80, "Loose: "+string(floor(loose)));
        //draw_debug_text(x - 30, y - 80, "Fuse: "+string(floor(fuse)));
        
    }
}        
/*with(obj_article2){
    if(player_id == other.id){
        draw_debug_text(x - 30, y - 80, "fuse: "+string(floor(loose)));
        
    }
}*/

//draw_debug_text(x - 30, y - 80, "fuse: "+string(floor(fuse)));
//draw_debug_text(x - 30, y - 100, "prime: "+string(floor(prime)));
//draw_debug_text(x - 30, y - 100, "activated_kill_effect: "+string(floor(activated_kill_effect)));
//draw_debug_text(x - 30, y - 100, "fuse_pause: "+string(floor(fuse_pause)));
//draw_debug_text(x - 30, y - 100, "handsoff_tumble: "+string(floor(handsoff_tumble)));
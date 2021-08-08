//draw_debug_text(x,y, "window: "+string(window));
//draw_debug_text(x,y+20, "window_timer: "+string(window_timer));


//draw_debug_text(x,y+20, "remaining Sl: "+string(slTimer-miniSL_timer));

//draw_debug_text(x,y+20, "FtoU true: "+string(FtoU));
//draw_debug_text(x,y+20, "dair_detect: "+string(dair_detect));
//draw_debug_text(x,y+40, "FtoU_timer: "+string(FtoU_timer));
//draw_debug_text(x,y+40, "fspec_wall: "+string(fspec_wall));
/*
with(oPlayer){
    if(id != other.id){
        
        draw_debug_text(x,y+20, "ustrong_vic: "+string(ustrong_vic));
    }
}

*/
if(spark_timer < 90){
    draw_debug_text(x, y - 90, "Sparks: " +string(spark_articles))
}

var hit;
hit = fspec_hit ? "YES" : "NO";

//draw_debug_text(x, y - 10, "Hit fspecial: "+hit);
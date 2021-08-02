/*
    other_update.gml!!
*/

with (oPlayer) {
    
    // empty marks on death.
    // will be redundant if another rokesha is in the match and it's not a 1v1, 
    // but I Do Not Care, it will not cause problems.
    if (state == PS_RESPAWN || state == PS_DEAD) && roke_mark > 0 {
        roke_mark = 0;
        ds_list_clear(roke_mark_id);
        ds_list_clear(roke_mark_anim);
        roke_mark_destroytimer = 0;
    }
    
    //process mark lifetime
    if roke_lastmark == other && roke_mark > 0 {
        if roke_mark_destroytimer == 0 {
            roke_mark_destroytimer = other.roke_mark_destroytime2;
            roke_mark--;
            ds_list_delete(roke_mark_id,roke_mark);
            ds_list_delete(roke_mark_anim,roke_mark);
        }
        roke_mark_destroytimer--;
        //drone animations
        var i = 0;
        var c_anim = -1;
        repeat(ds_list_size(roke_mark_anim)) {
            if roke_mark_id[| i] != noone {
                c_anim = roke_mark_anim[| i++];
                
                if c_anim[0] == 0 {
                    c_anim[1]+=0.25;
                    if c_anim[1] >= 10 {
                        c_anim[0] = 1;
                        c_anim[1] = 0;
                    }
                } else {
                    c_anim[1]+=0.25;
                }
                
            }
        }
    }
    
}
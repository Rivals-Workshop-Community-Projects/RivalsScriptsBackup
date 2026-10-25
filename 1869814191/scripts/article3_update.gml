//article1_update
// DSTRONG PAPERS

#macro GR_ALERT 0
#macro GR_STARTUP 1
#macro GR_ACTIVE 2
#macro GR_END 3

switch(state) {
    case GR_ALERT:
    //var distance = (34 + player_id.strong_charge) { 
    //for (var i = 0; i < dist; i += 1) {
        var _offset = (12*spr_dir)
    
        if (position_meeting(x+spr_dir, y+1,asset_get("par_block")) || position_meeting(x+spr_dir, y+1,asset_get("par_jumpthrough"))) {
            print_debug("move fuckhead");
            x += 1;
        }
    /*
        if (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_block"),false,true)) or (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_jumpthrough"),false,true)) {
            //if (!collision_rectangle(x - 1, y -1, x + 1,y - 1, asset_get("par_block"),false,true)) {
                print_debug("move fuckhead");
                x += 1;
                //x += 1 + (i % 2 == 0);
            //}
        }
    //}
    */
    break;
    
    
    
    
}



// called when the character gets KO'd

with(asset_get("obj_article1")){
    if(player_id.url==other.url){
        for(var i=0;i<length_total;i++){
            if(ice[i,1]==other){
                ice[i,0]=-die_start;
            }
        }
    }
}
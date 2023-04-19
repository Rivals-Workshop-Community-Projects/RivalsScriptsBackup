//CALLED WHEN PARRIED

if (!wings_fading && has_wings){
	wings_fading = 1;
}

with(obj_article2) {
    if (player_id == other.id){
        lifetime = 10;
    }

}
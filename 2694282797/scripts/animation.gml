// ------------------- fuck you sai to the shadow realm you go -----------------
// check for msai url
if get_gameplay_time() == 3 {
    //sprite_index = sprite_get("walk")
    visible = false;
    with(oPlayer) {
        if url == 2432114154 {
            other.fuck_intro =  true; 
            other.msai = self;
        }
    }
} else if get_gameplay_time() == 5 {
    visible = true;
}
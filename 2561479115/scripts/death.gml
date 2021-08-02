with oPlayer {
    if id != other.id {
        if ds_list_size(roke_mark_id) > 0 {
            var ind = ds_list_find_index(roke_mark_id,other.id);
            while ind != -1 {
                ds_list_delete(roke_mark_id,ind);
                roke_mark--;
                ind = ds_list_find_index(roke_mark_id,other.id);
            }
        }
    }
}

move_cooldown[AT_DSPECIAL] = 0;

//"Greater love hath no man than this, that a man lay down his life for his friends." John 15:13
//...
//It's not like I really want to do this.
//I'm not stupid.
//But if it's a choice between one innocent target
//And my family, everyone she left behind...
//Who else am I supposed to choose?

//I try not to remember their names.
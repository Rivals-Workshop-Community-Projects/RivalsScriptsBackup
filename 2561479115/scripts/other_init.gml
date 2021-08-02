roke_mark = 0;
if "roke_mark_id" not in self || !ds_list_valid(roke_mark_id) roke_mark_id = ds_list_create();
if "roke_mark_anim" not in self || !ds_list_valid(roke_mark_anim) roke_mark_anim = ds_list_create();
roke_mark_destroytimer = 0;
roke_lastmark = noone;
roke_mark_inc = 14;
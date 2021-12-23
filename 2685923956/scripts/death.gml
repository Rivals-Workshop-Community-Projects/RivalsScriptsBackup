// called when the character gets KO'd

bair_used = false;
dstr_counter = 0;
ustr_used = false;
fsp_used = false;

if (doomdesire_storage!=-4){
	if (doomdesire_storage.state==0){ 
		instance_destroy(doomdesire_storage)
	}
}
	move_cooldown[AT_DSPECIAL]=0
#define scr_rockconsumanim
    if (stealth_rock == 1){
        spawn_hit_fx(x-30*spr_dir, y-50, rock_s);
    }
    if (stealth_rock == 2){
        spawn_hit_fx(x+30*spr_dir, y-50, rock_s);
    }
    if (stealth_rock == 3){
        spawn_hit_fx(x-30*spr_dir, y+30,, rock_s);
    }
    if (stealth_rock == 4){
        spawn_hit_fx(x+30*spr_dir, y+30, rock_s);
    }
return "rock_consum_anim"
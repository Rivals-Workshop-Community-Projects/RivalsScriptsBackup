//

if invitimer > 0 {
    
    if attack == AT_USPECIAL {
        
        if right_down - left_down != 0 spr_dir = right_down - left_down 
        window = 3
        window_timer = 1
        choosendir = 2
        prat_land_time = 8
        
        spawn_hit_fx(x + 50*spr_dir,y - 90, shit1)
        spawn_hit_fx(x + 100*spr_dir,y - 130, shit1)
        spawn_hit_fx(x + 150*spr_dir,y - 170, shit5)
    }
    
    if attack == AT_NSPECIAL or attack == AT_FSPECIAL{
        
        if right_down - left_down != 0 spr_dir = right_down - left_down 
        attack = AT_USPECIAL
        window = 3
        window_timer = 1
        choosendir = 1
        prat_land_time = 8
        
        spawn_hit_fx(x + 70*spr_dir,y - 40, shit1)
        spawn_hit_fx(x + 140*spr_dir,y - 40, shit1)
        spawn_hit_fx(x + 210*spr_dir,y - 40, shit5)
        
    }

    
    if attack == AT_DSPECIAL {
        
        if right_down - left_down != 0 spr_dir = right_down - left_down 
        attack = AT_USPECIAL
        window = 3
        window_timer = 1
        choosendir = 3
        prat_land_time = 8
        
        spawn_hit_fx(x + 50*spr_dir,y - 40 + 50, shit1)
        spawn_hit_fx(x + 100*spr_dir,y - 40 + 90, shit1)
        spawn_hit_fx(x + 150*spr_dir,y - 40 + 130, shit5)
        
    }
    
    
    
}
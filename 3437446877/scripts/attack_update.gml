//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



if (attack == AT_FSPECIAL){
    if (window == 3 && window_timer == 1){

                instance_create(x + 80*spr_dir , y, "obj_article1");
                instance_create(x + 160*spr_dir , y, "obj_article1");
                instance_create(x + 240*spr_dir , y, "obj_article1");


    }
}

if (attack == AT_DSPECIAL){
hsp /= 1.12;
vsp /= 1.12;
with(asset_get("obj_article1")){
	timer++;
	if(player_id.left_down){
		x -= 6;
	}
	if(player_id.right_down){
		x += 6;
	}
	
    	}
   if(window == 2 && window_timer == 16 && special_down) {
   	window_timer = 1;
   }
}

if (attack == AT_DAIR){
    if (window == 2 && window_timer == 1){

                instance_create(x, y, "obj_article1");


    }
}
if (attack == AT_FSTRONG){
    if (window == 1 && window_timer == 1){

                instance_create(x, y, "obj_article1");


    }
}

if (attack == AT_DAIR){
    if (window == 3){
        can_attack = true;
        can_jump = true;
        can_special = true;
    }
}

if (attack == AT_JAB){
    if (window == 2 && window_timer == 1){
        instance_create(x + 80*spr_dir , y, "obj_article2");
                


    }
}

if (attack == AT_DATTACK){
    if (window == 2 && window_timer == 1){
                x -= 50*spr_dir;
                //spr_dir *= -1;

    }
    if (window == 3 && window_timer == 1){
                x -= 50*spr_dir;
                //spr_dir *= -1;

    }
    if (window == 4 && window_timer == 1){
                x -= 50*spr_dir;
                //spr_dir *= -1;

    }
}

if (attack == AT_DTILT){
    if (window == 5 && window_timer == 1){
            x += 77 * spr_dir
			y -= 113
			window_timer += WindowMax
			free = 1

    }

}

if (attack == AT_BAIR){
    if (window == 5 && window_timer == 1){
            x -= 58 * spr_dir
            window_timer += WindowMax
			free = -1

    }

}

if (attack == AT_USPECIAL){
	if (window == 1 && window_timer == 1){
            	instance_create(x, y - 60, "obj_article1");
                instance_create(x, y - 120, "obj_article1");
                instance_create(x, y - 180, "obj_article1");

    }
    /*if (window >= 2 ){
            	can_attack = true;

    }*/
    			
}


/*if (attack == AT_NSPECIAL){
	if (window == 3 && window_timer == 1){
    instance_create(x, y, "obj_article_solid"); 
	}
}*/

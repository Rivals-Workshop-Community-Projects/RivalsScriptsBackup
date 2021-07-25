//article1_update
statetimer++;
if(state == 1){
    if(statetimer > 0){
        if(statetimer == 1){
        if(DJ){
            sprite_index = sprite_get("endermanDJ");
        }
        	else{
            sprite_index = sprite_get("enderman"); 
        }
            sound_play(sound_get("portal"));
            spawn_hit_fx( x, y, ender_effect);
        }
        if(statetimer == 3){
            image_index = 1;
        }
        if(statetimer == 5){
            image_index = 2;
        }
        if(statetimer == 9){
            if(creetouchtnt){
                state = 99;
            }
        }
        if(statetimer == 10){
            
            image_index = 3;
            if(enderright == 1){
                create_hitbox(AT_DSPECIAL, 1, x+28, y-38);
            }
            else{
                create_hitbox(AT_DSPECIAL, 1, x-28, y-38);
            }
        }
        if(statetimer == 14){
            if(enderhit == 1 && grabtimer < 1){
                grabcont = 1;
            }
            else{
                grabcont = 2;
                sound_play(sound_get("enderhit"));
                image_index = 13;
            }
        }
        if(grabcont == 1){
            grabtimer++;
            if(statetimer == 14){
                image_index = 4;  
            }
            if(statetimer == 16){
                image_index = 5;
            }
        }
        if(grabtimer == 120 && endermove < 1){
            grabcont = 2;
            grabtimer = 0;
            statetimer = 19;
        }
        if(statetimer == 19){
            if(grabcont == 2){
                image_index = 14;
            }
        }
        if(grabcont == 2){
            if(statetimer == 24){
                with(player_id){
                    window = 5;
                }
                create_hitbox(AT_DSPECIAL, 4, x, y-40);
                spawn_hit_fx( x, y, ender_effect);
                image_index = 15;
                sound_play(sound_get("portal2"));
            }
            if(statetimer == 28){
                instance_destroy();
                return;
            }
            with(player_id){
                grabbedid = noone;
                enderdone = 1;
            }
        }
    }
}
//up
if(endermove == 1){
    ignores_walls = false;
    movetimer++;
    if(movetimer == 1){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 6;
    }
    if(movetimer == 3){
        image_index = 7;
        with(player_id){
            grabvisibility = false;
        }
    }
    if(movetimer == 6){
        y -= 150;
    }
    if(movetimer == 8){
        image_index = 8;
        sound_play(sound_get("portal"));
        create_hitbox(AT_DSPECIAL, 2, x, y);
        with(player_id){
            grabvisibility = true;
        }
    }
    if(movetimer == 10){
        image_index = 9;
    }
    if(movetimer == 28){
        image_index = 10
        with(player_id){
            enderfinished = 1;
            grabbedid = noone;
        }
        sound_play(asset_get("sfx_swipe_weak1"));
        create_hitbox(AT_DSPECIAL, 7, x, y-40);
    }
    if(movetimer == 33){
        image_index = 11
    }
    if(movetimer == 36){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 12;
    }
    if(movetimer == 40){
        instance_destroy();
        return;
    }
}
//left
if(endermove == 2){
    ignores_walls = false;
    movetimer++;
    if(movetimer == 1){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 6;
    }
    if(movetimer == 3){
        image_index = 7;
        with(player_id){
            grabvisibility = false;
        }
    }
    if(movetimer == 6){
        if(spr_dir == 1){
            x -= 185;
        }
        else{
            x -= 140;
        }
    }
    if(movetimer == 8){
        image_index = 8;
        sound_play(sound_get("portal"));
        create_hitbox(AT_DSPECIAL, 2, x, y);
        with(player_id){
            grabvisibility = true;
        }
    }
    if(movetimer == 10){
        image_index = 9;
    }
    if(movetimer == 28){
        image_index = 10
        with(player_id){
            enderfinished = 1;
            grabbedid = noone;
        }
        sound_play(asset_get("sfx_swipe_weak1"));
        create_hitbox(AT_DSPECIAL, 3, x, y-40);
    }
    if(movetimer == 33){
        image_index = 11
    }
    if(movetimer == 36){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 12;
    }
    if(movetimer == 40){
        instance_destroy();
        return;
    }
}
//right
if(endermove == 3){
    ignores_walls = false;
    movetimer++;
    if(movetimer == 1){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 6;
    }
    if(movetimer == 3){
        image_index = 7;
        with(player_id){
            grabvisibility = false;
        }
    }
    if(movetimer == 6){
        if(spr_dir == 1){
            x += 140;
        }
        else{
            x += 185;
        }
    }
    if(movetimer == 8){
        image_index = 8;
        sound_play(sound_get("portal"));
        create_hitbox(AT_DSPECIAL, 2, x, y);
        with(player_id){
            grabvisibility = true;
        }
    }
    if(movetimer == 10){
        image_index = 9;
    }
    if(movetimer == 28){
        image_index = 10
        with(player_id){
            enderfinished = 1;
            grabbedid = noone;
        }
        sound_play(asset_get("sfx_swipe_weak1"));
        create_hitbox(AT_DSPECIAL, 3, x, y-40);
    }
    if(movetimer == 33){
        image_index = 11
    }
    if(movetimer == 36){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 12;
    }
    if(movetimer == 40){
        instance_destroy();
        return;
    }
}
//diag left
if(endermove == 4){
    ignores_walls = false;
    movetimer++;
    if(movetimer == 1){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 6;
    }
    if(movetimer == 3){
        image_index = 7;
        with(player_id){
            grabvisibility = false;
        }
    }
    if(movetimer == 6){
        x -= 120;
        y -= 110;
    }
    if(movetimer == 8){
        image_index = 8;
        sound_play(sound_get("portal"));
        create_hitbox(AT_DSPECIAL, 2, x, y);
        with(player_id){
            grabvisibility = true;
        }
    }
    if(movetimer == 10){
        image_index = 9;
    }
    if(movetimer == 28){
        image_index = 10
        with(player_id){
            enderfinished = 1;
            grabbedid = noone;
        }
        sound_play(asset_get("sfx_swipe_weak1"));
        create_hitbox(AT_DSPECIAL, 3, x, y-40);
    }
    if(movetimer == 33){
        image_index = 11
    }
    if(movetimer == 36){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 12;
    }
    if(movetimer == 40){
        instance_destroy();
        return;
    }
}
//diag right
if(endermove == 5){
    ignores_walls = false;
    movetimer++;
    if(movetimer == 1){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 6;
    }
    if(movetimer == 3){
        image_index = 7;
        with(player_id){
            grabvisibility = false;
        }
    }
    if(movetimer == 6){
        x += 120;
        y -= 110;
    }
    if(movetimer == 8){
        image_index = 8;
        sound_play(sound_get("portal"));
        create_hitbox(AT_DSPECIAL, 2, x, y);
        with(player_id){
            grabvisibility = true;
        }
    }
    if(movetimer == 10){
        image_index = 9;
    }
    if(movetimer == 28){
        image_index = 10
        with(player_id){
            enderfinished = 1;
            grabbedid = noone;
        }
        sound_play(asset_get("sfx_swipe_weak1"));
        create_hitbox(AT_DSPECIAL, 3, x, y-40);
    }
    if(movetimer == 33){
        image_index = 11
    }
    if(movetimer == 36){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 12;
    }
    if(movetimer == 40){
        instance_destroy();
        return;
    }
}
//down
if(endermove == 6){
    ignores_walls = false;
    movetimer++;
    if(movetimer == 1){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 6;
    }
    if(movetimer == 3){
        image_index = 7;
        with(player_id){
            grabvisibility = false;
        }
    }
    if(movetimer == 6){
        x += 0;
        y -= 0;
    }
    if(movetimer == 8){
        image_index = 8;
        sound_play(sound_get("portal"));
        create_hitbox(AT_DSPECIAL, 2, x, y);
        with(player_id){
            grabvisibility = true;
        }
    }
    if(movetimer == 10){
        image_index = 9;
    }
    if(movetimer == 28){
        image_index = 10
        with(player_id){
            grabbedid = noone;
        }
        sound_play(asset_get("sfx_swipe_weak1"));
        create_hitbox(AT_DSPECIAL, 5, x, y-40);
    }
    if(movetimer == 33){
        image_index = 11
    }
    if(movetimer == 36){
        spawn_hit_fx( x, y, ender_effect);
        sound_play(sound_get("portal2"));
        image_index = 12;
    }
    if(movetimer == 40){
        with(player_id){
            enderfinished = 1;
        }
        instance_destroy();
        return;
    }
}


if(noteblock == true && state == 50){
    if(notetimer == 0 && !byebye){
        sprite_index = sprite_get("noteblock");
        image_index = 3;
    }
    if(byebye){
        notetimer2++;
        if(notetimer2 == 1){
            image_index = 5;
        }
        if(notetimer2 == 4){
            image_index = 6;
        }
        if(notetimer2 == 7){
            image_index = 7;
        }
        if(notetimer2 == 11){
            instance_destroy();
            return;
        }
    }
    if(note){
        notetimer++;
        if(notetimer == 1){
            if(note_col == 1){
            create_hitbox(AT_EXTRA_2, 1, x, y);
            }
            if(note_col == 2){
            create_hitbox(AT_EXTRA_2, 2, x, y);
            }
            if(note_col == 3){
            create_hitbox(AT_EXTRA_2, 3, x, y);
            }
            if(note_col == 4){
            create_hitbox(AT_EXTRA_2, 4, x, y);
            }
            if(note_col == 5){
            create_hitbox(AT_EXTRA_2, 5, x, y);
            }
            if(note_col == 6){
            create_hitbox(AT_EXTRA_2, 6, x, y);
            }
            if(note_col == 7){
            create_hitbox(AT_EXTRA_2, 7, x, y);
            }
            if(note_col == 8){
            create_hitbox(AT_EXTRA_2, 8, x, y);
            }
            if(note_col == 9){
            create_hitbox(AT_EXTRA_2, 9, x, y);
            }
            if(note_col == 10){
            create_hitbox(AT_EXTRA_2, 10, x, y);
            }
            if(note_col == 11){
            create_hitbox(AT_EXTRA_2, 11, x, y);
            }
            if(note_col == 12){
            create_hitbox(AT_EXTRA_2, 12, x, y);
            }
            if(note_col == 13){
            create_hitbox(AT_EXTRA_2, 13, x, y);
            }
            if(note_col == 14){
            create_hitbox(AT_EXTRA_2, 1, x, y);
            }
            if(note_col == 15){
            create_hitbox(AT_EXTRA_2, 2, x, y);
            }
            if(note_col == 16){
            create_hitbox(AT_EXTRA_2, 3, x, y);
            }
            if(note_col == 17){
            create_hitbox(AT_EXTRA_2, 4, x, y);
            }
            if(note_col == 18){
            create_hitbox(AT_EXTRA_2, 5, x, y);
            }
            if(note_col == 19){
            create_hitbox(AT_EXTRA_2, 6, x, y);
            }
            if(note_col == 20){
            create_hitbox(AT_EXTRA_2, 7, x, y);
            }
            if(note_col == 21){
            create_hitbox(AT_EXTRA_2, 8, x, y);
            }
            if(note_col == 22){
            create_hitbox(AT_EXTRA_2, 9, x, y);
            }
            if(note_col == 23){
            create_hitbox(AT_EXTRA_2, 10, x, y);
            }
            if(note_col == 24){
            create_hitbox(AT_EXTRA_2, 11, x, y);
            }
            if(note_col == 25){
            create_hitbox(AT_EXTRA_2, 12, x, y);
            }
            if(note_col == 26){
            create_hitbox(AT_EXTRA_2, 13, x, y);
            }
            image_index = 0;
        }
        if(notetimer == 3){
            image_index = 1
        }
        if(notetimer == 6){
            image_index = 2
        }
        if(notetimer == 7){
            notetimer = 0;
            note = false;
        }
    }
}
//endertnt
if(state == 99){
    endertnttimer++;
    if(endertnttimer == 1){
        sound_play(sound_get("hit1"));
        with(player_id){
            window = 6;
    		window_timer = 1;
    		endertnt2 = true;
        }
        if(DJ){
        	sprite_index = sprite_get("endermantntDJ");
		}
		else{
			sprite_index = sprite_get("endermantnt");	
		}
        image_index = 0;
    }
    if(endertnttimer == 8){
        image_index = 1;
        movetimer = 0;
    }
    //up
    if(endermovetnt == 1){
        ignores_walls = false;
        movetimer++;
        if(movetimer == 1){
            with(player_id){
                window = 6;
            	window_timer = 1;
            	vsp = -8;
            }
            spawn_hit_fx( x, y, ender_effect);
            sound_play(sound_get("portal2"));
            image_index = 2;
        }
        if(movetimer == 3){
            image_index = 3;
        }
        if(movetimer == 6){
            y -= 150;
        }
        if(movetimer == 8){
            image_index = 4;
            sound_play(sound_get("portal"));
        }
        if(movetimer == 10){
            image_index = 5;
        }
        if(movetimer == 16){
            sound_play(sound_get("enderhit"));
            image_index = 6;
        }
        if(movetimer == 17){
            sound_play(sound_get("fuse2"));
        }
        if(movetimer == 22){
            image_index = 7;
        }
        if(movetimer == 26){
            sound_play(sound_get("explode3"));
        }
        if(movetimer == 30){
            image_index = 8;
            if(enderright == 1){
                create_hitbox(AT_DSPECIAL, 6, x+25, y-52);
            }
            else{
                create_hitbox(AT_DSPECIAL, 6, x-25, y-52);
            }
        }
        if(movetimer == 34){
            image_index = 9;
        }
        if(movetimer == 38){
            image_index = 10;
        }
        if(movetimer == 42){
            with(player_id){
        		tnthit = false;
        		tntout = false;
        		tntreal = 0;
                enderfinished = 1;
                endertnt2 = false;
            }
	        sound_play(sound_get("pop"));
            instance_destroy();
            return;
        }
    }
    //left
    if(endermovetnt == 2){
        ignores_walls = false;
        movetimer++;
        if(movetimer == 1){
            with(player_id){
                window = 6;
            	window_timer = 1;
            	vsp = -8;
            }
            spawn_hit_fx( x, y, ender_effect);
            sound_play(sound_get("portal2"));
            image_index = 2;
        }
        if(movetimer == 3){
            image_index = 3;
        }
        if(movetimer == 6){
            if(spr_dir == 1){
                x -= 150;
            }
            else{
                x -= 150;
            }
        }
        if(movetimer == 8){
            image_index = 4;
            sound_play(sound_get("portal"));
        }
        if(movetimer == 10){
            image_index = 5;
        }
        if(movetimer == 16){
            sound_play(sound_get("enderhit"));
            image_index = 6;
        }
        if(movetimer == 17){
            sound_play(sound_get("fuse2"));
        }
        if(movetimer == 22){
            image_index = 7;
        }
        if(movetimer == 26){
            sound_play(sound_get("explode3"));
        }
        if(movetimer == 30){
            image_index = 8;
            if(enderright == 1){
                create_hitbox(AT_DSPECIAL, 6, x+25, y-52);
            }
            else{
                create_hitbox(AT_DSPECIAL, 6, x-25, y-52);
            }
        }
        if(movetimer == 34){
            image_index = 9;
        }
        if(movetimer == 38){
            image_index = 10;
        }
        if(movetimer == 42){
            with(player_id){
        		tnthit = false;
        		tntout = false;
        		tntreal = 0;
                enderfinished = 1;
                endertnt2 = false;
            }
	        sound_play(sound_get("pop"));
            instance_destroy();
            return;
        }
    }
    //right
    if(endermovetnt == 3){
        ignores_walls = false;
        movetimer++;
        if(movetimer == 1){
            with(player_id){
                window = 6;
            	window_timer = 1;
            	vsp = -8;
            }
            spawn_hit_fx( x, y, ender_effect);
            sound_play(sound_get("portal2"));
            image_index = 2;
        }
        if(movetimer == 3){
            image_index = 3;
        }
        if(movetimer == 6){
            if(spr_dir == 1){
                x += 150;
            }
            else{
                x += 150;
            }
        }
        if(movetimer == 8){
            image_index = 4;
            sound_play(sound_get("portal"));
        }
        if(movetimer == 10){
            image_index = 5;
        }
        if(movetimer == 16){
            sound_play(sound_get("enderhit"));
            image_index = 6;
        }
        if(movetimer == 17){
            sound_play(sound_get("fuse2"));
        }
        if(movetimer == 22){
            image_index = 7;
        }
        if(movetimer == 26){
            sound_play(sound_get("explode3"));
        }
        if(movetimer == 30){
            image_index = 8;
            if(enderright == 1){
                create_hitbox(AT_DSPECIAL, 6, x+25, y-52);
            }
            else{
                create_hitbox(AT_DSPECIAL, 6, x-25, y-52);
            }
        }
        if(movetimer == 34){
            image_index = 9;
        }
        if(movetimer == 38){
            image_index = 10;
        }
        if(movetimer == 42){
            with(player_id){
        		tnthit = false;
        		tntout = false;
        		tntreal = 0;
                enderfinished = 1;
                endertnt2 = false;
            }
	        sound_play(sound_get("pop"));
            instance_destroy();
            return;
        }
    }
    //diag left
    if(endermovetnt == 4){
        ignores_walls = false;
        movetimer++;
        if(movetimer == 1){
            with(player_id){
                window = 6;
            	window_timer = 1;
            	vsp = -8;
            }
            spawn_hit_fx( x, y, ender_effect);
            sound_play(sound_get("portal2"));
            image_index = 2;
        }
        if(movetimer == 3){
            image_index = 3;
        }
        if(movetimer == 6){
            x -= 120;
            y -= 110;
        }
        if(movetimer == 8){
            image_index = 4;
            sound_play(sound_get("portal"));
        }
        if(movetimer == 10){
            image_index = 5;
        }
        if(movetimer == 16){
            sound_play(sound_get("enderhit"));
            image_index = 6;
        }
        if(movetimer == 17){
            sound_play(sound_get("fuse2"));
        }
        if(movetimer == 22){
            image_index = 7;
        }
        if(movetimer == 26){
            sound_play(sound_get("explode3"));
        }
        if(movetimer == 30){
            image_index = 8;
            if(enderright == 1){
                create_hitbox(AT_DSPECIAL, 6, x+25, y-52);
            }
            else{
                create_hitbox(AT_DSPECIAL, 6, x-25, y-52);
            }
        }
        if(movetimer == 34){
            image_index = 9;
        }
        if(movetimer == 38){
            image_index = 10;
        }
        if(movetimer == 42){
            with(player_id){
        		tnthit = false;
        		tntout = false;
        		tntreal = 0;
                enderfinished = 1;
                endertnt2 = false;
            }
	        sound_play(sound_get("pop"));
            instance_destroy();
            return;
        }
    }
    //diag right
    if(endermovetnt == 5){
        ignores_walls = false;
        movetimer++;
        if(movetimer == 1){
            with(player_id){
                window = 6;
            	window_timer = 1;
            	vsp = -8;
            }
            spawn_hit_fx( x, y, ender_effect);
            sound_play(sound_get("portal2"));
            image_index = 2;
        }
        if(movetimer == 3){
            image_index = 3;
        }
        if(movetimer == 6){
            x += 120;
            y -= 110;
        }
        if(movetimer == 8){
            image_index = 4;
            sound_play(sound_get("portal"));
        }
        if(movetimer == 10){
            image_index = 5;
        }
        if(movetimer == 16){
            sound_play(sound_get("enderhit"));
            image_index = 6;
        }
        if(movetimer == 17){
            sound_play(sound_get("fuse2"));
        }
        if(movetimer == 22){
            image_index = 7;
        }
        if(movetimer == 26){
            sound_play(sound_get("explode3"));
        }
        if(movetimer == 30){
            image_index = 8;
            if(enderright == 1){
                create_hitbox(AT_DSPECIAL, 6, x+25, y-52);
            }
            else{
                create_hitbox(AT_DSPECIAL, 6, x-25, y-52);
            }
        }
        if(movetimer == 34){
            image_index = 9;
        }
        if(movetimer == 38){
            image_index = 10;
        }
        if(movetimer == 42){
            with(player_id){
        		tnthit = false;
        		tntout = false;
        		tntreal = 0;
                enderfinished = 1;
                endertnt2 = false;
            }
	        sound_play(sound_get("pop"));
            instance_destroy();
            return;
        }
    }
    //down
    if(endermovetnt == 6){
        ignores_walls = false;
        movetimer++;
        if(movetimer == 1){
            with(player_id){
                window = 6;
            	window_timer = 1;
            	vsp = -8;
            }
        }
        if(movetimer == 3){
            image_index = 5;
        }
        if(movetimer == 3){
            sound_play(sound_get("enderhit"));
            image_index = 6;
        }
        if(movetimer == 4){
            sound_play(sound_get("fuse2"));
        }
        if(movetimer == 9){
            image_index = 7;
        }
        if(movetimer == 20){
            sound_play(sound_get("explode3"));
        }
        if(movetimer == 19){
            image_index = 8;
            if(spr_dir == 1){
                create_hitbox(AT_DSPECIAL, 6, x+25, y-52);
            }
            else{
                create_hitbox(AT_DSPECIAL, 6, x-25, y-52);
            }
        }
        if(movetimer == 25){
            image_index = 9;
        }
        if(movetimer == 29){
            image_index = 10;
        }
        if(movetimer == 35){
            with(player_id){
        		tnthit = false;
        		tntout = false;
        		tntreal = 0;
                enderfinished = 1;
                endertnt2 = false;
            }
	        sound_play(sound_get("pop"));
            instance_destroy();
            return;
        }
    }
}


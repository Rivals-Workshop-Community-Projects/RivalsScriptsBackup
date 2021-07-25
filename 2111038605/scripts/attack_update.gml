//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var exists = false;
var exists_again = false;

with (obj_article1){
    if (player_id == other.id){
        exists = true;
    }
}  

with (obj_article_solid){
    if (player_id == other.id){
        exists_again = true;
    }
}  

if (attack == AT_NSPECIAL){
    
    if (window == 1){
        if (window_timer == 15){
            if (exists && exists_again){
                with (obj_article1){
                    if (player_id == other.id){
                        die = true;
                    }
                }
                with (obj_article_solid){
                    if (player_id == other.id){
                        die = true;
                    }
                }
            }
            else{
                var box = instance_create(x + (spr_dir*60),y, "obj_article_solid");
                spawn_hit_fx( x + (spr_dir*65), y - 6, 13 );
                var box_handler = instance_create(x + (spr_dir*60),y - 5, "obj_article1");
                box_handler.friend = box;
            }
        }
    }
    

}

if (attack == AT_FSPECIAL){
    can_wall_jump = true;
    fspecial_timer++;
    if (window == 1 && window_timer == 1){
        if (!hitpause){
            sound_play(asset_get("mfx_star"));
        }
    }
    if (window == 2 || window == 3){
        move_cooldown[AT_FSPECIAL] = fspec_cooldown;
        if (fspecial_timer mod 5 == 0){
            instance_create(x, y, "obj_article2");
        }
        if (do_the_thing == true){
            can_jump = true;
            can_shield = true;
            can_attack = true;
        }
    }
    if (window == 1){
        if (window_timer == 1 && !runeO){
            do_the_thing = false;
        }
    }
    if (window != 4){
        can_fast_fall = false;
    }
    else{
        can_fast_fall = true;
    }
}


if (attack == AT_TAUNT){
    if (window == 1 && window_timer == 23){
        sound_play (asset_get ("mfx_star"));
    }
}

if (attack == AT_USTRONG){
    if (window == 3 || window == 4){
        hud_offset = 70;
    }
}

//no parry stun on jab
if (attack == AT_JAB){
    if (was_parried){
        was_parried = false;
    }
}

if (attack == AT_DAIR && window == 2 && window_timer == 1){
    vsp = clamp(vsp, -6, 99);
}



//Muno start

if (attack == AT_USPECIAL){
    if (window < 3 || true){ //DONT FREAKING MOVE DURING THIS ATTACK ok
        vsp = 0;
        hsp = 0;
    }
    
    
    can_move = false;
    can_fast_fall = false;
    
    switch(window){
        
        
        
        case 1: //startup
        
            if (window_timer == 1){ //init stuff
            
                set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
                set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
            
                sound_play (asset_get ("sfx_swipe_weak1"));
                uspec_timer = 0;
                
                block_num = 0; //# of current blocks
                block_x = 0; //last made block, in units of 1 block
                block_y = 0; //last made block, in units of 1 block
                
                for (i = 0; i <= max_blocks; i++){ //clear all these arrays
                    blocks[i] = noone;
                    blocks_x[i] = 0;
                    blocks_y[i] = 0;
                }
                
                blocks[0] = self; //for arrows
                
                x_pos = x; //x to spawn next block at
                y_pos = y - 22; //y to spawn next block at
                
                can_block = true; //false if a block is state 0
                
                loops = 0; //loops of window 3
                
                block_spr_dir = spr_dir; //spr_dir to spawn next block
            }
            
            break;
        
        
        
        case 2: //active
            
            
            //tdude anti-stall stuff
                if (free){
                    uspec_timer++; //also added by tudde
                    if (uspec_timer == uspec_max_time - uspec_sweat_time){
                        sound_play (asset_get ("mfx_timertick_holy"));
                        set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_sweat"));
                        set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_sweat"));
                    }
                    
                    if (uspec_timer > uspec_max_time){
                        state = PS_PRATFALL;
                    }
                }
            //end of tdude stuff
        
            move_cooldown[AT_USPECIAL] = 30;
            move_cooldown[AT_FSPECIAL] = 0; //i (tdude) added this, not muno. gives you back fspecial
            
            var x_dir = 0; //direction block will go
            var y_dir = 0;
            
            if right_pressed x_dir = 1;
            else if left_pressed x_dir = -1;
            else if down_pressed y_dir = 1;
            else if up_pressed y_dir = -1;
            
            
            
            can_u = (checkBlockOccupied(0, -1) < 2);
            can_d = (checkBlockOccupied(0, 1) < 2);
            can_l = (checkBlockOccupied(-1, 0) < 2);
            can_r = (checkBlockOccupied(1, 0) < 2);
            
            
            
            if (can_block && (abs(x_dir) || abs(y_dir))){
                
                var action = checkBlockOccupied(x_dir, y_dir);
                
                switch(action){
                    
                    
                    
                    case 0: //Place new block
                        
                        
                        
                        sound_play (asset_get ("mfx_option"));
                    
                        if (abs(x_dir)) block_spr_dir = x_dir;
                        
                        block_num++;
                        
                        blocks[block_num] = instance_create(x_pos, y_pos, "obj_article3");
                        
                        blocks[block_num].dir_x = x_dir;
                        blocks[block_num].dir_y = y_dir;
                        blocks[block_num].spr_dir = block_spr_dir;
                        
                        blocks_x[block_num] = block_x;
                        blocks_y[block_num] = block_y;
                        
                        block_x += x_dir;
                        block_y += y_dir;
                        
                        if (block_num > 1) blocks[block_num].owner = blocks[block_num-1]; //uh idk if i even used owner for anything lol
                        else blocks[block_num].owner = self;
                        
                        can_block = false;
                        
                        break;
                        
                        
                        
                    case 1: //Retract
                    
                        sound_play (asset_get ("mfx_move_cursor"));
                    
                        with blocks[block_num]{
                            state = 0;
                            state_timer = 0;
                            dir_x = x_dir;
                            dir_y = y_dir;
                            please_die = true; // :(
                            
                            init_x = x;
                            init_y = y;
                            
                            fake_x = x; //it sounds like im going insane but i swear this makes sense if you read article 3 init
                            fake_y = y;
                        
                        }
                        
                        blocks[block_num] = noone; //remove from array
                        blocks_x[block_num] = 0;
                        blocks_y[block_num] = 0;
                        
                        can_block = false;
                        
                        block_num--;
                        
                        block_x += x_dir;
                        block_y += y_dir;
                        
                        break;
                        
                    
                    
                    case 2: //Fail
                    
                        
                        
                        break;
                    
                }
            }
            
            if (shield_pressed) {
                move_cooldown[AT_USPECIAL] = 65;
                sound_play (asset_get ("mfx_star"));
                setWindow(4);
            }    
            
            if !special_down setWindow(block_num ? 3 : 4);
            
            break;
        
        
        
        case 3: //zoop
            
            if (y > 0){
                djumps = 0; //i (tdude) added this, not muno. gives you back ur jump
            }
            
            move_cooldown[AT_USPECIAL] = 99999999;
        
        
            if (window_timer == 1){ //set start/end pos
                
                if (loops == 0){
                    sound_play (asset_get("sfx_spin"));
                }
                
                start_x = x;
                start_y = y;
                
                end_x = blocks[loops+1].x;
                end_y = blocks[loops+1].y + 22;
            }
            
            var end_time = get_window_value(attack, window, AG_WINDOW_LENGTH); //depends on window length, you can just change that to speed it up or slow it down
            
            x = ease_linear(start_x, end_x, window_timer, end_time);
            y = ease_linear(start_y, end_y, window_timer, end_time);
            
            if (window_timer == end_time){
                loops++;
                instance_destroy(blocks[loops]);
            }
            
            if (loops >= block_num){
                setWindow(4);
            }
            
            break;
        
        
        
        case 4: //endlag
        
            //theres nothing here
            
            break;
    }
}


//RUNES

if runeD { //trigger the attribute change
    if (attack == AT_USTRONG){
        if (window == 2){
            super_armor = true;
        }
        if (window == 5){
            super_armor = false;
        }
    }
}

if runeG { //trigger the attribute change
    if (attack == AT_DTILT || attack == AT_DATTACK || attack == AT_BAIR){
        if (has_hit){
            can_attack = true;
            can_jump = true;
            can_shield = true;
        }
    }
}

if runeH { //trigger the attribute change
    if (attack == AT_FSPECIAL){
        if (window == 3){
            super_armor = true;
        }
        if (window == 4){
            super_armor = false;
        }
    }
}

if (runeO){
    if (attack == AT_DAIR || attack == AT_NAIR || attack == AT_FAIR || attack == AT_BAIR || attack == AT_UAIR){
        if (has_hit){
            can_special = true;
        }
    }
    if (attack == AT_FSPECIAL && window > 1){
        can_attack = true;
        can_jump = true;
        can_shield = true;
    }
}

//END OF RUNES




//just kidding more runes lol
if (has_rune("G")){
    if (attack == AT_FSTRONG){
        if (window == 1){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
    
    if (attack == AT_USTRONG){
        if (window == 1){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
    
    if (attack == AT_DSTRONG){
        if (window == 1){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
}

if (has_rune("I")){
    if (attack == AT_TAUNT){
        if (window == 1){
            if (window_timer == 8){
                with (oPlayer){
                    if (!free && id != other.id){
                        vsp = -12;
                        hsp = -15*spr_dir;
                    }
                }
            }
        }
    }
}

if (has_rune("J")){
    if (!down_down){
        if (attack == AT_FSTRONG){
            if (vsp > 2){
                vsp = 2;
            }
        }
        if (attack == AT_USTRONG){
            if (vsp > 2){
                vsp = 2;
            }
        }
        if (attack == AT_DSTRONG){
            if (vsp > 2){
                vsp = 2;
            }
        }
    }
}



if (has_rune("N")){
    if (attack == AT_DSPECIAL){
        if (window == 1){
            if (window_timer > 5){
                super_armor = true;
            }
        }
        else{
            super_armor = false;
        }
    }
}

if (has_rune("O")){
    if (attack == AT_FSPECIAL){
        if (window > 1){
            can_jump = true;
            can_attack = true;
        }
        else{
            invincible = true;
        }
    }
}







#define setWindow(new_window)

window = new_window;
window_timer = 0;



#define checkBlockOccupied(x_dir, y_dir)

var ret_val = (block_num >= max_blocks) * 2;
                
for (i = max_blocks; i >= 0; i--){
    if (blocks_x[i] == block_x + x_dir && blocks_y[i] == block_y + y_dir){
        ret_val = (i == block_num || i == block_num - 1) ? 1 : 2;
    }
}

if (y_dir == -1) with(asset_get("obj_article_solid")) if (place_meeting(x - x_dir * 22, y - y_dir * 22, other.blocks[other.block_num])) ret_val = 2;

return ret_val;
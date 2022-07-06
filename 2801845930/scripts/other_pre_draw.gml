// Pre draw for other players
if (SpamNeoStringPlayerId == other_player_id.id) {
    if (SpamNeoPlayerMany == false) {
        switch (SpamNeoColorGet) {
            
            case 0:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $47e547, $47e547);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $47e547, $47e547);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $47e547, $47e547);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 1: 
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $00C8CC, $00C8CC);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $00C8CC, $00C8CC);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $00C8CC, $00C8CC);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 2:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $FFF587, $FFF587);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $FFF587, $FFF587);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $FFF587, $FFF587);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 3:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2E23F7, $2E23F7);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2E23F7, $2E23F7);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2E23F7, $2E23F7);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 4:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $D171E8, $D171E8);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $D171E8, $D171E8);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $D171E8, $D171E8);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 5:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3b99c4, $3b99c4);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3b99c4, $3b99c4);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3b99c4, $3b99c4);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 6:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $dcf2ab, $dcf2ab);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $dcf2ab, $dcf2ab);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $dcf2ab, $dcf2ab);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 7:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $618de5, $618de5);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $618de5, $618de5);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $618de5, $618de5);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 8:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ccdb62, $ccdb62);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ccdb62, $ccdb62);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ccdb62, $ccdb62);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 9:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $f06178, $f06178);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $f06178, $f06178);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $f06178, $f06178);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 10:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $dee2fc, $dee2fc);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $dee2fc, $dee2fc);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $dee2fc, $dee2fc);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 11:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3131e3, $3131e3);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3131e3, $3131e3);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3131e3, $3131e3);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 12:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $4bfee1, $4bfee1);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $4bfee1, $4bfee1);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $4bfee1, $4bfee1);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 13:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $b2874f, $b2874f);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $b2874f, $b2874f);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $b2874f, $b2874f);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 14:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2c6fe8, $2c6fe8);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2c6fe8, $2c6fe8);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2c6fe8, $2c6fe8);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 15:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ffcb49, $ffcb49);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ffcb49, $ffcb49);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ffcb49, $ffcb49);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 16:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $a5ffaf, $a5ffaf);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $CCDB62, $CCDB62);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $a5ffaf, $a5ffaf);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 17:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $136aff, $136aff);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $136aff, $136aff);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $136aff, $136aff);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 18:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2ebdde, $2ebdde);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2ebdde, $2ebdde);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2ebdde, $2ebdde);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 19:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $6aefff, $6aefff);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $6aefff, $6aefff);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $6aefff, $6aefff);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 20:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ffdad2, $ffdad2);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ffdad2, $ffdad2);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $ffdad2, $ffdad2);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 21:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3a29c3, $3a29c3);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3a29c3, $3a29c3);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3a29c3, $3a29c3);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 22:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $26d5ff, $26d5ff);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $26d5ff, $26d5ff);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $26d5ff, $26d5ff);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 23:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $054fad, $054fad);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $054fad, $054fad);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $054fad, $054fad);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 24:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2a67b0, $2a67b0);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2a67b0, $2a67b0);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2a67b0, $2a67b0);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 25:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $55bf55, $55bf55);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $55bf55, $55bf55);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $55bf55, $55bf55);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 26:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $fff65b, $fff65b);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $fff65b, $fff65b);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $fff65b, $fff65b);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 27:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $0000ff, $0000ff);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $0000ff, $0000ff);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $0000ff, $0000ff);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 28:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $db8d08, $db8d08);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $db8d08, $db8d08);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $db8d08, $db8d08);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 29:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $00bfff, $00bfff);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $00bfff, $00bfff);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $00bfff, $00bfff);
                            }
                        }
                    }
                }
            }
            
            break;
            
            case 30:
            
            if (SpamNeoString == true) {
                for (var i = 0; i < 30; i++) {
                    if (i <= SpamNeoStringStartTimer) {
                        SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                        SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                        
                        SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                        SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $8aabed, $8aabed);
                    }
                }
                SpamNeoStringStartTimer += 1;
            } else {
                if (SpamNeoSnapAnim == true) { // DStrong Snap Despawn
                    
                    for (var i = 0; i < 30; i++) {
                        if (SpamNeoSnapTimer >= i) {
                            SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                            SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                            
                            SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                            SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $8aabed, $8aabed);
                        }
                    }
                    
                } else { // Normal String Despawn
                    if (SpamNeoStringStop == true) {
                        for (var i = 0; i < 30; i++) {
                            if (SpamNeoStringStopTimer <= i) {
                                SpamNeoStringOppPosYi = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
                                SpamNeoStringOppPosXi = x + SpamNeoStringOppLineHsp1 * (i);
                                
                                SpamNeoStringOppPosYf = (y - char_height * 0.7) + SpamNeoStringOppLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
                                SpamNeoStringOppPosXf = x + SpamNeoStringOppLineHsp1 * (i + 1);
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $8aabed, $8aabed);
                            }
                        }
                    }
                }
            }
            
            break;
            
        }
    }
}


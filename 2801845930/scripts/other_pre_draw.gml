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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $0052CE, $0052CE);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $0052CE, $0052CE);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $0052CE, $0052CE);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DC0B9A, $DC0B9A);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DC0B9A, $DC0B9A);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DC0B9A, $DC0B9A);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $C42060, $C42060);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $C42060, $C42060);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $C42060, $C42060);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DCF2AB, $DCF2AB);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DCF2AB, $DCF2AB);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DCF2AB, $DCF2AB);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $55BF55, $55BF55);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $55BF55, $55BF55);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $55BF55, $55BF55);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $F06178, $F06178);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $F06178, $F06178);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $F06178, $F06178);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $054FAD, $054FAD);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $054FAD, $054FAD);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $054FAD, $054FAD);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2A67B0, $2A67B0);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2A67B0, $2A67B0);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2A67B0, $2A67B0);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3131E3, $3131E3);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3131E3, $3131E3);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $3131E3, $3131E3);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $E3B433, $E3B433);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $E3B433, $E3B433);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $E3B433, $E3B433);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $E042B0, $E042B0);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $E042B0, $E042B0);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $E042B0, $E042B0);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $CCDB62, $CCDB62);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $CCDB62, $CCDB62);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $B2874F, $B2874F);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $B2874F, $B2874F);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $B2874F, $B2874F);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2EBDDE, $2EBDDE);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2EBDDE, $2EBDDE);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $2EBDDE, $2EBDDE);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DB8D08, $DB8D08);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DB8D08, $DB8D08);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $DB8D08, $DB8D08);
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
                        
                    	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $7F104E, $7F104E);
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
                            
                        	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $7F104E, $7F104E);
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
                                
                            	draw_line_width_colour(SpamNeoStringOppPosXi, SpamNeoStringOppPosYi, SpamNeoStringOppPosXf, SpamNeoStringOppPosYf, 4, $7F104E, $7F104E);
                            }
                        }
                    }
                }
            }
            
            break;
        }
    }
}


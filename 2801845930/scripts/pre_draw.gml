// pre-draw

if (SpamNeoPlayerCount <= 2) {
	if (SpamNeoPlaytest) {
	} else {
		switch (SpamNeoColor) {
		    
		    case 0:
		    
		    for (var i = 0; i < 32; i++) {
				    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
					SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
					
					SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
					SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
				
					draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $47e547, $47e547);
					
					SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
					
					SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
					
					draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $278633, $278633);
					
					SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
					
					SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
					
					draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $47e547, $47e547);
					
				}
		    
		    break;
		    
		    case 1:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $00C8CC, $00C8CC); // Game bad R and B from RGB swapped by engine >:(
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $096049, $096049);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $00C8CC, $00C8CC);
				
			}
		    
		    break;
		    
		    case 2:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $FFF587, $FFF587);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $B19A74, $B19A74);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $FFF587, $FFF587);
				
			}
		    
		    
		    
			break;
		    
		    case 3:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2E23F7, $2E23F7);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $233C8B, $233C8B);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2E23F7, $2E23F7);
				
			}
		    
		    break;
		    
		    case 4:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $D171E8, $D171E8);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $644A7C, $644A7C);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $D171E8, $D171E8);
				
			}
			
			break;
		    
		    case 5:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $0052CE, $0052CE);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $0B4762, $0B4762);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $0052CE, $0052CE);
				
			}
			
			break;
		    
		    case 6:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $DC0B9A, $DC0B9A);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $700B6F, $700B6F);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $DC0B9A, $DC0B9A);
				
			}
			
			break;
		    
		    case 7:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $C42060, $C42060);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $8C1946, $8C1946);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $C42060, $C42060);
				
			}
			
			break;
		    
		    case 8:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $DCF2AB, $DCF2AB);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $85866E, $85866E);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $DCF2AB, $DCF2AB);
				
			}
			
			break;
		    
		    case 9:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $55BF55, $55BF55);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $39532E, $39532E);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $55BF55, $55BF55);
				
			}
			
			break;
		    
		    case 10:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $F06178, $F06178);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $844461, $844461);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $F06178, $F06178);
				
			}
			
			break;
		    
		    case 11:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $054FAD, $054FAD);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $093241, $093241);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $054FAD, $054FAD);
				
			}
			
			break;
		    
		    case 12:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2A67B0, $2A67B0);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $183944, $183944);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2A67B0, $2A67B0);
				
			}
			
			break;
		    
		    case 13:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3131E3, $3131E3);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2727AB, $2727AB);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3131E3, $3131E3);
				
			}
			
			break;
		    
		    case 14:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $E3B433, $E3B433);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $774B28, $774B28);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $E3B433, $E3B433);
				
			}
			
			break;
		    
		    case 15:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $E042B0, $E042B0);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $742F73, $742F73);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $E042B0, $E042B0);
				
			}
			
			break;
		    
		    case 16:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $CCDB62, $CCDB62);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $6F673E, $6F673E);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $CCDB62, $CCDB62);
				
			}
			
			break;
		    
		    case 17:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $B2874F, $B2874F);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $7A5D38, $7A5D38);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $B2874F, $B2874F);
				
			}
			
			break;
		    
		    case 18:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2EBDDE, $2EBDDE);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $25726A, $25726A);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2EBDDE, $2EBDDE);
				
			}
			
			break;
		    
		    case 19:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $DB8D08, $DB8D08);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $26F3110, $26F3110);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $DB8D08, $DB8D08);
				
			}
		    
		    break;
		    
		    case 20:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $7F104E, $7F104E);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $470A2C, $470A2C);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $7F104E, $7F104E);
				
			}
		    
		    break;
		    
		}
		
	}
}
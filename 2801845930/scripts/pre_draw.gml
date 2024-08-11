// pre-draw

//if (SpamNeoPlayerCount <= 2) {
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
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3b99c4, $3b99c4);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $398e90, $398e90);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3b99c4, $3b99c4);
				
			}
			
			break;
		    
		    case 6:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $dcf2ab, $dcf2ab);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $85866e, $85866e);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $dcf2ab, $dcf2ab);
				
			}
			
			break;
		    
		    case 7:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $618de5, $618de5);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $416379, $416379);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $618de5, $618de5);
				
			}
			
			break;
		    
		    case 8:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $ccdb62, $ccdb62);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $6f673e, $6f673e);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $ccdb62, $ccdb62);
				
			}
			
			break;
		    
		    case 9:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $f06178, $f06178);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $844461, $844461);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $f06178, $f06178);
				
			}
			
			break;
		    
		    case 10:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $dee2fc, $dee2fc);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $8f8f90, $8f8f90);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $dee2fc, $dee2fc);
				
			}
			
			break;
		    
		    case 11:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3131e3, $3131e3);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $273e77, $273e77);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3131e3, $3131e3);
				
			}
			
			break;
		    
		    case 12:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $4bfee1, $4bfee1);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $48b294, $48b294);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $4bfee1, $4bfee1);
				
			}
			
			break;
		    
		    case 13:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $b2874f, $b2874f);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $463027, $463027);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $b2874f, $b2874f);
				
			}
			
			break;
		    
		    case 14:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2c6fe8, $2c6fe8);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $255d7c, $255d7c);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2c6fe8, $2c6fe8);
				
			}
			
			break;
		    
		    case 15:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $ffcb49, $ffcb49);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $a26a40, $a26a40);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $ffcb49, $ffcb49);
				
			}
			
			break;
		    
		    case 16:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $a5ffaf, $a5ffaf);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $769470, $769470);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $a5ffaf, $a5ffaf);
				
			}
			
			break;
		    
		    case 17:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $136aff, $136aff);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $1e75a2, $1e75a2);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $136aff, $136aff);
				
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
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $6aefff, $6aefff);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $57a597, $57a597);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $6aefff, $6aefff);
				
			}
		    
		    break;
		    
		    case 20:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $ffdad2, $ffdad2);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $9d9394, $9d9394);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $ffdad2, $ffdad2);
				
			}
		    
		    break;
		    
		    case 21:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3a29c3, $3a29c3);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $1c2657, $1c2657);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $3a29c3, $3a29c3);
				
			}
		    
		    break;
		    
		    case 22:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $26d5ff, $26d5ff);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2ba59a, $2ba59a);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $26d5ff, $26d5ff);
				
			}
		    
		    break;
		    
		    case 23:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $054fad, $054fad);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $093241, $093241);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $054fad, $054fad);
				
			}
		    
		    break;
		    
		    case 24:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2a67b0, $2a67b0);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $183944, $183944);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $2a67b0, $2a67b0);
				
			}
		    
		    break;
		    
		    case 25:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $55bf55, $55bf55);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $39532e, $39532e);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $55bf55, $55bf55);
				
			}
		    
		    break;
		    
		    case 26:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $fff65b, $fff65b);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $9b7f49, $9b7f49);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $fff65b, $fff65b);
				
			}
		    
		    break;
		    
		    case 27:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $0000ff, $0000ff);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $0e3493, $0e3493);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $0000ff, $0000ff);
				
			}
		    
		    break;
		    
		    case 28:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $db8d08, $db8d08);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $6f3110, $6f3110);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $db8d08, $db8d08);
				
			}
		    
		    break;
		    
		    case 29:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $00bfff, $00bfff);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $0f9893, $0f9893);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $00bfff, $00bfff);
				
			}
		    
		    break;
		   
			case 30:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $7f104e, $7f104e);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $130511, $130511);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $7f104e, $7f104e);
				
			}
		    
		    break;
		    
		    case 31:
		    
		    for (var i = 0; i < 32; i++) {
			    SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
				
				SpamNeoStringPosYf = SpamNeoStringStartY + SpamNeoStringLineVsp * (i + 1) - 0.5 * 0.3 * power((i + 1), 2);
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i + 1);
			
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $8aabed, $8aabed);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp2 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $5a7281, $5a7281);
				
				SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i);
				
				SpamNeoStringPosXf = SpamNeoStringStartX + SpamNeoStringLineHsp3 * (i + 1);
				
				draw_line_width_colour(SpamNeoStringPosXi, SpamNeoStringPosYi, SpamNeoStringPosXf, SpamNeoStringPosYf, 4, $8aabed, $8aabed);
				
			}
		    
		    break;
		    
		}
		
	}
//}
| Expression   			| Decimal Representation | Binary Representation  |
| :-------------------: |:----------------------:| :---------------------:|
|(int)0					| 0						 | 0000 0000			  |
|(short)0				| 0						 | 0000					  |
|(int)-23				| -23				     | 1110 1001			  |
|(int)					| 69				   	 | 0100 0101			  |
|(int)-18				| -18					 | 1110 1110			  |
|(short)(int)-18		| -2	  				 | 1110     			  |
|(int)(short)(int)-18	| -2	  				 | 1111 1110 			  |
|(unsigned int)(int)-18	| 238	  				 | 1110 1110			  |
|(unsigned int)(-5 + 1)	| 252	  				 | 1111 1100    		  |
|(int)TMax + (int)TMin	| -1	  				 | 1111 1111    		  |
|(int)((1<<5) >> 3)		| 4		  				 | 0000 0100			  |

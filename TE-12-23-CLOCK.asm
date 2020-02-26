                        ;TE-12-23
DISPBUF equ $920
CLKBUF  equ $922

        org $900
START   LD IY, CLKBUF		;Load pointer to clock counting buffer
	    LD B,2		;load number of 60's to be tested
	    LD A,(IY +0)	;Read first clock buffer value
	    ADD A,01		;add 1 to the value
	    DAA			;decimal adjust the accumulator
	    CP 60		;TEST A=60 sec/min
	    JR NZ,DISP		;GOTO 'DSP' if not equal
	    XOR A		;ZERO the accumulator
	    LD (IY+0),A		;Store A in clock buffer
	    INC IY		;Advance pointer
	    DJNZ $EE         	;complete LOOP if B is not zero
	    LD A,(IY +0)	;Read hours value
	    ADD A,01		;Increment hours value
	    DAA             	;Decimal adjust the accumulator
	    CP 24h		;TEST hours =24
	    JR NZ,DISP		;If not GOTO 'DSP'
	    XOR A		;ZERO A
DISP	LD (IY + 0),A		;Store hours in clock buffer
	    LD B,03		;Load number of bytes to be converted
	    LD HL,DISPBUF +6	;Load pointer to display buffer
	    LD IX, CLKBUF	;Load pointed to clock buffer
LOOP1	LD A,(IX + 0)		;Read CLOCK BUFFER value
	    INC IX		;Advance pointer by 1
	    PUSH BC		;Save BC contents
	    PUSH AF		;Save contents of A
	    AND 0F		;Get least significant 4 bits
	    LD B,A		;Transfer A to B
	    CALL LOOK		;Get pattern for B
	    POP AF		;Restore AF
	    SRL A		;Shift A one place to the right
	    SRL A		;
	    SRL A		;
	    SRL A		;
	    LD B,A		;Load A into B
	    CALL LOOK		;Get bit pattern for B
	    POP BC		;Restore BC
	    DJNZ LOOP		;Complete LOOP if B is not zero.
	    LD B,0ffh		;Load LOOP value
LOOP2	LD IX,DISPBUF		;Load pointer to digit patterns
	    PUSH BC		;Save BC contents
	    LD B,07		;Load number of digits to be displayed
	    LD C,40h		;Load bit pattern for display cathodes
	    LD A,(IX +0)	;Read display pattern
	    OUT (2),A		;Output pattern to port 2
	    LD A,C		;Load C into A
	    OUT (1),A		;Output cathode pattern to port 1
	    SRL C		;Move cathode bit one place for MUX effect
	    XOR A		;Clear A
	    LD E,10h		;Load TIME DELAY value
	    DEC E		;Decrement E
	    JR NZ FD		;LOOP if not equal to zero
	    OUT (1),A		;Turn off anode bits
	    INC IX		;Advance to next pattern
	    DJNZ LOOP2		;LOOP if not zero
	    POP BC		;Restore BC
	    DJNZ LOOP2		;LOOP if all digits not displayed
	    JP START		;Jump to START
LOOK	LD DE, DISP		;Load DE with display pattern
	    PUSH AF		;Save AF
	    LD A,E		;Load E into A
	    ADD A,B		;Calculate pattern address
	    LD E,A		;Load A into E
	    LD A,(DE)		;Read pattern
	    LD (HL),A		;Store pattern in display buffer
	    DEC HL		;Decrement HL
	    POP AF		;Restore AF
	    RET     		;End of sub-routine

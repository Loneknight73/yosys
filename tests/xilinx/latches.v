module latchp
    ( input d, en, output reg q );
	always @*
		if ( en )
			q <= d;
endmodule

module latchn
    ( input d, en, output reg q );
	always @*
		if ( !en )
			q <= d;
endmodule

module latchsr
    ( input d, en, clr, pre, output reg q );
	always @*
		if ( clr )
			q <= 1'b0;
		else if ( pre )
			q <= 1'b1;
		else if ( en )
			q <= d;
endmodule

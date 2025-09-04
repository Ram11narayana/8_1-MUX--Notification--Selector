`include "mux_ns.v"

module tb;
  reg [7:0] a;  // No value assigned!
  reg [2:0] s;
  wire y;
	integer input_val;

  notification_mux dut (.a(a), .s(s), .y(y));

  initial begin
  // integer input_val;
	a=8'b11111111;//only gmail  is high

  // 🔴 We are NOT assigning value to 'a' on purpose
	$monitor("Time=%0t | s=%0d | y=%0d",$time, s,y);
    if ($value$plusargs("a=%d", input_val)) begin
      s = input_val[2:0];
	       #10;

      case (s)
        3'd0: $display("WhatsApp: y = %d", y);
        3'd1: $display("LinkedIn: y = %d", y);
        3'd2: $display("Gmail:    y = %d", y);
        3'd3: $display("SMS:      y = %d", y);
        3'd4: $display("YouTube:  y = %d", y);
        3'd5: $display("Facebook: y = %d", y);
        3'd6: $display("Calendar: y = %d", y);
        3'd7: $display("Calls:    y = %d", y);
	    default: $display("y= %d",y);
      endcase
    end else begin
      $display(" Use +a=0 to 7 while running simulation");
    end

   // $finish;
  end
endmodule
/*`include "mux_ns.v"
module tb;
reg [7:0] a;
reg [2:0] s;
wire y;


/*notification_mux dut (.a(a), .s(s), .y(y));

  initial begin
    a = 8'b00100100; // Only Gmail and Facebook are active

    #10 s = 3'b000; // WhatsApp
    #10 $display("Time=%0t | s=%b | App: WhatsApp | y = %d", $time, s, y);

    #10 s = 3'b001; // LinkedIn
    #10 $display("Time=%0t | s=%b | App: LinkedIn | y = %d", $time, s, y);

    #10 s = 3'b010; // Gmail
    #10 $display("Time=%0t | s=%b | App: Gmail | y = %d", $time, s, y);

    #10 s = 3'b011; // SMS
    #10 $display("Time=%0t | s=%b | App: SMS | y = %d", $time, s, y);

    #10 s = 3'b100; // YouTube
    #10 $display("Time=%0t | s=%b | App: YouTube | y = %d", $time, s, y);

    #10 s = 3'b101; // Naukri
    #10 $display("Time=%0t | s=%b | App: Naukri | y = %d", $time, s, y);

    #10 s = 3'b110; // Calendar
    #10 $display("Time=%0t | s=%b | App: Calendar | y = %d", $time, s, y);

    #10 s = 3'b111; // Calls
    #10 $display("Time=%0t | s=%b | App: Calls | y = %d", $time, s, y);

    $display("✅ All manual inputs tested.");
  //  $finish;
  end
endmodule

/*  initial begin
    a = 8'b00100100; // Gmail and Facebook

    for (s = 3'b000; s <= 3'b111; s = s + 1) begin
      #10;
      case (s)
        3'b000: $display("User pressed: 0 | App: WhatsApp | y = %b", y);
        3'b001: $display("User pressed: 1 | App: LinkedIn | y = %b", y);
        3'b010: $display("User pressed: 2 | App: Gmail    | y = %b", y);
        3'b011: $display("User pressed: 3 | App: SMS      | y = %b", y);
        3'b100: $display("User pressed: 4 | App: YouTube  | y = %b", y);
        3'b101: $display("User pressed: 5 | App: Naukri   | y = %b", y);
        3'b110: $display("User pressed: 6 | App: Calendar | y = %b", y);
        3'b111: $display("User pressed: 7 | App: Calls    | y = %b", y);
      endcase
    end

    $display(" All notifications checked.");
    $finish;
  end
endmodule

/*initial begin
  a = 8'b00100100;
  s = $random % 8; // Simulates random app selected
  #10;

  $display("User pressed: %0d | y = %b", s, y);
 // $finish;
end

notification_mux dut (.a(a),.s(s),.y(y)); // instantiation
                                         
/* initial begin		 // Monitor any changes in inputs or output
     $monitor("Time=%0t,s=%b,y=%b", $time,s,y);
  end

  initial begin
    // Sample notifications: Only Gmail (bit 2) and Facebook (bit 5) have notifications
    a = 8'b00100100;

    // Simulate user pressing number 2 for Gmail
    s = 3'd2; // Change this number from 0 to 7 as per "user input"
    #10;

    // Display result like mobile response
    $display("User pressed: %0d | App: Gmail | y = %b", s, y);

   // $finish;
  end

/*initial begin
  a = 8'b00100100; // Gmail and Facebook

  for (s = 3'b000; s <= 3'b111; s = s + 1) begin
    #10;
    $display("Time=%0t | s=%b | y=%b", $time, s, y);
  end

  $display("All checks done");
  $finish;
  end

/*	#10;
    a = 8'b00100100; // Only Gmail and Facebook have notifications
    s = 3'b000; $display("Checking WhatsApp");
    s = 3'b001; $display("Checking Linkedin");
    s = 3'b010; $display("Checking Gmail");
	s = 3'b011; $display("Checking SMS");
    s = 3'b100; $display("Checking YouTube");
	s = 3'b101; $display("Checking Naukri");
	s = 3'b110; $display("Checking Calendar");
	s = 3'b111; $display("Checking Calls");
 $display("All checks done");
// $finish; 

endmodule */




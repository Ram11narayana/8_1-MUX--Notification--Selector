module notification_mux(a,s,y);
    input [7:0] a;   // a-app_notifications,  I0 to I7
    input [2:0] s;   // s-selection_lines,   S2, S1, S0
    output reg  y;   // y-Output

always @(*) begin
    case (s)
        3'b000: y=a[0]; // WhatsApp
        3'b001: y=a[1]; // Linkedin
        3'b010: y=a[2]; // Gmail
        3'b011: y=a[3]; // SMS
        3'b100: y=a[4]; // YouTube
        3'b101: y=a[5]; // Naukri
        3'b110: y=a[6]; // Calendar
 		3'b111: y=a[7]; // Calls
        default: y = 0; // No Notification
    endcase
end
endmodule


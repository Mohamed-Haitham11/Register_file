module reg_file(ra,rb,wr_data,flash,wb_en,wb_addr,rb_out,ra_out,sp,sp_en);
output reg [7:0] rb_out, ra_out,sp;
input sp_en,wb_en,flash;
input [1:0] ra,rb,wb_addr;
input [7:0] wr_data;
reg [7:0] register_file [3:0];
always@(*) begin
if(wb_en) begin
    register_file[wb_addr]=wr_data;
end
else if(sp_en) begin
    sp=register_file[3];
end
  ra_out=register_file[ra];
 rb_out=register_file[rb];
end

endmodule
module median_filter(input [0:0] clk, input [0:0] rst, output [0:0] valid, output [31:0] in0_in_data, input [31:0] in0_out_data, output [31:0] in1_in_data, input [31:0] in1_out_data, output [31:0] in2_in_data, input [31:0] in2_out_data, output [31:0] out_in_data, input [31:0] out_out_data);

	reg [0:0] valid_reg;
	reg [31:0] in0_in_data_reg;
	reg [31:0] in1_in_data_reg;
	reg [31:0] in2_in_data_reg;
	reg [31:0] out_in_data_reg;

	assign valid = valid_reg;
	assign in0_in_data = in0_in_data_reg;
	assign in1_in_data = in1_in_data_reg;
	assign in2_in_data = in2_in_data_reg;
	assign out_in_data = out_in_data_reg;

	// Start debug wires and ports

	initial begin
	end





	// End debug wires and ports

	// Start Functional Units
	br_dummy br_unit();

	reg [0:0] m_rst_n;
	reg [31:0] m_word0;
	reg [31:0] m_word1;
	reg [31:0] m_word2;
	wire [31:0] m_median_word;
	median m(.clk(clk), .median_word(m_median_word), .rst_n(m_rst_n), .word0(m_word0), .word1(m_word1), .word2(m_word2));

	reg [31:0] add_in0_add_6;
	reg [31:0] add_in1_add_6;
	wire [31:0] add_out_add_6;
	add #(.WIDTH(32)) add_add_6(.in0(add_in0_add_6), .in1(add_in1_add_6), .out(add_out_add_6));

	reg [63:0] phi_in_phi_12;
	reg [31:0] phi_last_block_phi_12;
	reg [63:0] phi_s_phi_12;
	wire [31:0] phi_out_phi_12;
	phi #(.NB_PAIR(2), .WIDTH(32)) phi_12(.in(phi_in_phi_12), .last_block(phi_last_block_phi_12), .out(phi_out_phi_12), .s(phi_s_phi_12));

	reg [31:0] cmp_in0_icmp_17;
	reg [31:0] cmp_in1_icmp_17;
	wire [0:0] cmp_out_icmp_17;
	ne #(.WIDTH(32)) icmp_17(.in0(cmp_in0_icmp_17), .in1(cmp_in1_icmp_17), .out(cmp_out_icmp_17));

	reg [31:0] eq_0_in0;
	reg [31:0] eq_0_in1;
	wire [0:0] eq_0_out;
	eq #(.WIDTH(32)) eq_0(.in0(eq_0_in0), .in1(eq_0_in1), .out(eq_0_out));

	reg [31:0] eq_1_in0;
	reg [31:0] eq_1_in1;
	wire [0:0] eq_1_out;
	eq #(.WIDTH(32)) eq_1(.in0(eq_1_in0), .in1(eq_1_in1), .out(eq_1_out));

	reg [31:0] eq_2_in0;
	reg [31:0] eq_2_in1;
	wire [0:0] eq_2_out;
	eq #(.WIDTH(32)) eq_2(.in0(eq_2_in0), .in1(eq_2_in1), .out(eq_2_out));

	reg [0:0] bb_0_active_in_state_0_in_data;
	wire [0:0] bb_0_active_in_state_0_out_data;
	hls_wire #(.WIDTH(1)) bb_0_active_in_state_0(.in_data(bb_0_active_in_state_0_in_data), .out_data(bb_0_active_in_state_0_out_data));

	reg [31:0] bb_0_predecessor_in_state_0_in_data;
	wire [31:0] bb_0_predecessor_in_state_0_out_data;
	hls_wire #(.WIDTH(32)) bb_0_predecessor_in_state_0(.in_data(bb_0_predecessor_in_state_0_in_data), .out_data(bb_0_predecessor_in_state_0_out_data));

	reg [0:0] bb_2_active_in_state_0_in_data;
	wire [0:0] bb_2_active_in_state_0_out_data;
	hls_wire #(.WIDTH(1)) bb_2_active_in_state_0(.in_data(bb_2_active_in_state_0_in_data), .out_data(bb_2_active_in_state_0_out_data));

	reg [31:0] bb_2_predecessor_in_state_0_in_data;
	wire [31:0] bb_2_predecessor_in_state_0_out_data;
	hls_wire #(.WIDTH(32)) bb_2_predecessor_in_state_0(.in_data(bb_2_predecessor_in_state_0_in_data), .out_data(bb_2_predecessor_in_state_0_out_data));

	reg [0:0] bb_2_active_in_state_1_in_data;
	wire [0:0] bb_2_active_in_state_1_out_data;
	hls_wire #(.WIDTH(1)) bb_2_active_in_state_1(.in_data(bb_2_active_in_state_1_in_data), .out_data(bb_2_active_in_state_1_out_data));

	reg [31:0] bb_2_predecessor_in_state_1_in_data;
	wire [31:0] bb_2_predecessor_in_state_1_out_data;
	hls_wire #(.WIDTH(32)) bb_2_predecessor_in_state_1(.in_data(bb_2_predecessor_in_state_1_in_data), .out_data(bb_2_predecessor_in_state_1_out_data));

	reg [0:0] bb_3_active_in_state_2_in_data;
	wire [0:0] bb_3_active_in_state_2_out_data;
	hls_wire #(.WIDTH(1)) bb_3_active_in_state_2(.in_data(bb_3_active_in_state_2_in_data), .out_data(bb_3_active_in_state_2_out_data));

	reg [31:0] bb_3_predecessor_in_state_2_in_data;
	wire [31:0] bb_3_predecessor_in_state_2_out_data;
	hls_wire #(.WIDTH(32)) bb_3_predecessor_in_state_2(.in_data(bb_3_predecessor_in_state_2_in_data), .out_data(bb_3_predecessor_in_state_2_out_data));

	reg [0:0] bb_4_active_in_state_2_in_data;
	wire [0:0] bb_4_active_in_state_2_out_data;
	hls_wire #(.WIDTH(1)) bb_4_active_in_state_2(.in_data(bb_4_active_in_state_2_in_data), .out_data(bb_4_active_in_state_2_out_data));

	reg [31:0] bb_4_predecessor_in_state_2_in_data;
	wire [31:0] bb_4_predecessor_in_state_2_out_data;
	hls_wire #(.WIDTH(32)) bb_4_predecessor_in_state_2(.in_data(bb_4_predecessor_in_state_2_in_data), .out_data(bb_4_predecessor_in_state_2_out_data));

	reg [0:0] bb_1_active_in_state_2_in_data;
	wire [0:0] bb_1_active_in_state_2_out_data;
	hls_wire #(.WIDTH(1)) bb_1_active_in_state_2(.in_data(bb_1_active_in_state_2_in_data), .out_data(bb_1_active_in_state_2_out_data));

	reg [31:0] bb_1_predecessor_in_state_2_in_data;
	wire [31:0] bb_1_predecessor_in_state_2_out_data;
	hls_wire #(.WIDTH(32)) bb_1_predecessor_in_state_2(.in_data(bb_1_predecessor_in_state_2_in_data), .out_data(bb_1_predecessor_in_state_2_out_data));

	reg [0:0] bb_2_active_in_state_2_in_data;
	wire [0:0] bb_2_active_in_state_2_out_data;
	hls_wire #(.WIDTH(1)) bb_2_active_in_state_2(.in_data(bb_2_active_in_state_2_in_data), .out_data(bb_2_active_in_state_2_out_data));

	reg [31:0] bb_2_predecessor_in_state_2_in_data;
	wire [31:0] bb_2_predecessor_in_state_2_out_data;
	hls_wire #(.WIDTH(32)) bb_2_predecessor_in_state_2(.in_data(bb_2_predecessor_in_state_2_in_data), .out_data(bb_2_predecessor_in_state_2_out_data));

	reg [0:0] andOp_3_in0;
	reg [0:0] andOp_3_in1;
	wire [0:0] andOp_3_out;
	andOp #(.WIDTH(1)) andOp_3(.in0(andOp_3_in0), .in1(andOp_3_in1), .out(andOp_3_out));

	reg [0:0] andOp_4_in0;
	reg [0:0] andOp_4_in1;
	wire [0:0] andOp_4_out;
	andOp #(.WIDTH(1)) andOp_4(.in0(andOp_4_in0), .in1(andOp_4_in1), .out(andOp_4_out));

	reg [0:0] br_0_happened_in_state_0_in_data;
	wire [0:0] br_0_happened_in_state_0_out_data;
	hls_wire #(.WIDTH(1)) br_0_happened_in_state_0(.in_data(br_0_happened_in_state_0_in_data), .out_data(br_0_happened_in_state_0_out_data));

	reg [0:0] notOp_5_in0;
	wire [0:0] notOp_5_out;
	notOp #(.WIDTH(1)) notOp_5(.in(notOp_5_in0), .out(notOp_5_out));

	reg [0:0] andOp_6_in0;
	reg [0:0] andOp_6_in1;
	wire [0:0] andOp_6_out;
	andOp #(.WIDTH(1)) andOp_6(.in0(andOp_6_in0), .in1(andOp_6_in1), .out(andOp_6_out));

	reg [0:0] andOp_7_in0;
	reg [0:0] andOp_7_in1;
	wire [0:0] andOp_7_out;
	andOp #(.WIDTH(1)) andOp_7(.in0(andOp_7_in0), .in1(andOp_7_in1), .out(andOp_7_out));

	reg [0:0] br_2_happened_in_state_0_in_data;
	wire [0:0] br_2_happened_in_state_0_out_data;
	hls_wire #(.WIDTH(1)) br_2_happened_in_state_0(.in_data(br_2_happened_in_state_0_in_data), .out_data(br_2_happened_in_state_0_out_data));

	reg [0:0] notOp_8_in0;
	wire [0:0] notOp_8_out;
	notOp #(.WIDTH(1)) notOp_8(.in(notOp_8_in0), .out(notOp_8_out));

	reg [0:0] andOp_9_in0;
	reg [0:0] andOp_9_in1;
	wire [0:0] andOp_9_out;
	andOp #(.WIDTH(1)) andOp_9(.in0(andOp_9_in0), .in1(andOp_9_in1), .out(andOp_9_out));

	reg [0:0] andOp_10_in0;
	reg [0:0] andOp_10_in1;
	wire [0:0] andOp_10_out;
	andOp #(.WIDTH(1)) andOp_10(.in0(andOp_10_in0), .in1(andOp_10_in1), .out(andOp_10_out));

	reg [0:0] br_2_happened_in_state_1_in_data;
	wire [0:0] br_2_happened_in_state_1_out_data;
	hls_wire #(.WIDTH(1)) br_2_happened_in_state_1(.in_data(br_2_happened_in_state_1_in_data), .out_data(br_2_happened_in_state_1_out_data));

	reg [0:0] notOp_11_in0;
	wire [0:0] notOp_11_out;
	notOp #(.WIDTH(1)) notOp_11(.in(notOp_11_in0), .out(notOp_11_out));

	reg [0:0] andOp_12_in0;
	reg [0:0] andOp_12_in1;
	wire [0:0] andOp_12_out;
	andOp #(.WIDTH(1)) andOp_12(.in0(andOp_12_in0), .in1(andOp_12_in1), .out(andOp_12_out));

	reg [0:0] andOp_13_in0;
	reg [0:0] andOp_13_in1;
	wire [0:0] andOp_13_out;
	andOp #(.WIDTH(1)) andOp_13(.in0(andOp_13_in0), .in1(andOp_13_in1), .out(andOp_13_out));

	reg [0:0] br_3_happened_in_state_2_in_data;
	wire [0:0] br_3_happened_in_state_2_out_data;
	hls_wire #(.WIDTH(1)) br_3_happened_in_state_2(.in_data(br_3_happened_in_state_2_in_data), .out_data(br_3_happened_in_state_2_out_data));

	reg [0:0] notOp_14_in0;
	wire [0:0] notOp_14_out;
	notOp #(.WIDTH(1)) notOp_14(.in(notOp_14_in0), .out(notOp_14_out));

	reg [0:0] andOp_15_in0;
	reg [0:0] andOp_15_in1;
	wire [0:0] andOp_15_out;
	andOp #(.WIDTH(1)) andOp_15(.in0(andOp_15_in0), .in1(andOp_15_in1), .out(andOp_15_out));

	reg [0:0] andOp_16_in0;
	reg [0:0] andOp_16_in1;
	wire [0:0] andOp_16_out;
	andOp #(.WIDTH(1)) andOp_16(.in0(andOp_16_in0), .in1(andOp_16_in1), .out(andOp_16_out));

	reg [0:0] br_4_happened_in_state_2_in_data;
	wire [0:0] br_4_happened_in_state_2_out_data;
	hls_wire #(.WIDTH(1)) br_4_happened_in_state_2(.in_data(br_4_happened_in_state_2_in_data), .out_data(br_4_happened_in_state_2_out_data));

	reg [0:0] notOp_17_in0;
	wire [0:0] notOp_17_out;
	notOp #(.WIDTH(1)) notOp_17(.in(notOp_17_in0), .out(notOp_17_out));

	reg [0:0] andOp_18_in0;
	reg [0:0] andOp_18_in1;
	wire [0:0] andOp_18_out;
	andOp #(.WIDTH(1)) andOp_18(.in0(andOp_18_in0), .in1(andOp_18_in1), .out(andOp_18_out));

	reg [0:0] notOp_19_in0;
	wire [0:0] notOp_19_out;
	notOp #(.WIDTH(1)) notOp_19(.in(notOp_19_in0), .out(notOp_19_out));

	reg [0:0] andOp_20_in0;
	reg [0:0] andOp_20_in1;
	wire [0:0] andOp_20_out;
	andOp #(.WIDTH(1)) andOp_20(.in0(andOp_20_in0), .in1(andOp_20_in1), .out(andOp_20_out));

	reg [0:0] andOp_21_in0;
	reg [0:0] andOp_21_in1;
	wire [0:0] andOp_21_out;
	andOp #(.WIDTH(1)) andOp_21(.in0(andOp_21_in0), .in1(andOp_21_in1), .out(andOp_21_out));

	reg [0:0] andOp_22_in0;
	reg [0:0] andOp_22_in1;
	wire [0:0] andOp_22_out;
	andOp #(.WIDTH(1)) andOp_22(.in0(andOp_22_in0), .in1(andOp_22_in1), .out(andOp_22_out));

	reg [0:0] br_2_happened_in_state_2_in_data;
	wire [0:0] br_2_happened_in_state_2_out_data;
	hls_wire #(.WIDTH(1)) br_2_happened_in_state_2(.in_data(br_2_happened_in_state_2_in_data), .out_data(br_2_happened_in_state_2_out_data));

	reg [0:0] notOp_23_in0;
	wire [0:0] notOp_23_out;
	notOp #(.WIDTH(1)) notOp_23(.in(notOp_23_in0), .out(notOp_23_out));

	reg [31:0] eq_24_in0;
	reg [31:0] eq_24_in1;
	wire [0:0] eq_24_out;
	eq #(.WIDTH(32)) eq_24(.in0(eq_24_in0), .in1(eq_24_in1), .out(eq_24_out));

	reg [31:0] eq_25_in0;
	reg [31:0] eq_25_in1;
	wire [0:0] eq_25_out;
	eq #(.WIDTH(32)) eq_25(.in0(eq_25_in0), .in1(eq_25_in1), .out(eq_25_out));

	reg [0:0] orOp_26_in0;
	reg [0:0] orOp_26_in1;
	wire [0:0] orOp_26_out;
	orOp #(.WIDTH(1)) orOp_26(.in0(orOp_26_in0), .in1(orOp_26_in1), .out(orOp_26_out));

	reg [31:0] eq_27_in0;
	reg [31:0] eq_27_in1;
	wire [0:0] eq_27_out;
	eq #(.WIDTH(32)) eq_27(.in0(eq_27_in0), .in1(eq_27_in1), .out(eq_27_out));

	reg [0:0] orOp_28_in0;
	reg [0:0] orOp_28_in1;
	wire [0:0] orOp_28_out;
	orOp #(.WIDTH(1)) orOp_28(.in0(orOp_28_in0), .in1(orOp_28_in1), .out(orOp_28_out));

	reg [31:0] eq_29_in0;
	reg [31:0] eq_29_in1;
	wire [0:0] eq_29_out;
	eq #(.WIDTH(32)) eq_29(.in0(eq_29_in0), .in1(eq_29_in1), .out(eq_29_out));

	reg [0:0] orOp_30_in0;
	reg [0:0] orOp_30_in1;
	wire [0:0] orOp_30_out;
	orOp #(.WIDTH(1)) orOp_30(.in0(orOp_30_in0), .in1(orOp_30_in1), .out(orOp_30_out));

	reg [31:0] eq_31_in0;
	reg [31:0] eq_31_in1;
	wire [0:0] eq_31_out;
	eq #(.WIDTH(32)) eq_31(.in0(eq_31_in0), .in1(eq_31_in1), .out(eq_31_out));

	reg [0:0] orOp_32_in0;
	reg [0:0] orOp_32_in1;
	wire [0:0] orOp_32_out;
	orOp #(.WIDTH(1)) orOp_32(.in0(orOp_32_in0), .in1(orOp_32_in1), .out(orOp_32_out));

	reg [31:0] eq_33_in0;
	reg [31:0] eq_33_in1;
	wire [0:0] eq_33_out;
	eq #(.WIDTH(32)) eq_33(.in0(eq_33_in0), .in1(eq_33_in1), .out(eq_33_out));

	reg [0:0] orOp_34_in0;
	reg [0:0] orOp_34_in1;
	wire [0:0] orOp_34_out;
	orOp #(.WIDTH(1)) orOp_34(.in0(orOp_34_in0), .in1(orOp_34_in1), .out(orOp_34_out));

	reg [31:0] eq_35_in0;
	reg [31:0] eq_35_in1;
	wire [0:0] eq_35_out;
	eq #(.WIDTH(32)) eq_35(.in0(eq_35_in0), .in1(eq_35_in1), .out(eq_35_out));

	reg [0:0] orOp_36_in0;
	reg [0:0] orOp_36_in1;
	wire [0:0] orOp_36_out;
	orOp #(.WIDTH(1)) orOp_36(.in0(orOp_36_in0), .in1(orOp_36_in1), .out(orOp_36_out));

	reg [0:0] andOp_37_in0;
	reg [0:0] andOp_37_in1;
	wire [0:0] andOp_37_out;
	andOp #(.WIDTH(1)) andOp_37(.in0(andOp_37_in0), .in1(andOp_37_in1), .out(andOp_37_out));

	reg [0:0] andOp_38_in0;
	reg [0:0] andOp_38_in1;
	wire [0:0] andOp_38_out;
	andOp #(.WIDTH(1)) andOp_38(.in0(andOp_38_in0), .in1(andOp_38_in1), .out(andOp_38_out));

	reg [0:0] andOp_39_in0;
	reg [0:0] andOp_39_in1;
	wire [0:0] andOp_39_out;
	andOp #(.WIDTH(1)) andOp_39(.in0(andOp_39_in0), .in1(andOp_39_in1), .out(andOp_39_out));

	reg [0:0] andOp_40_in0;
	reg [0:0] andOp_40_in1;
	wire [0:0] andOp_40_out;
	andOp #(.WIDTH(1)) andOp_40(.in0(andOp_40_in0), .in1(andOp_40_in1), .out(andOp_40_out));

	reg [31:0] eq_41_in0;
	reg [31:0] eq_41_in1;
	wire [0:0] eq_41_out;
	eq #(.WIDTH(32)) eq_41(.in0(eq_41_in0), .in1(eq_41_in1), .out(eq_41_out));

	reg [31:0] eq_42_in0;
	reg [31:0] eq_42_in1;
	wire [0:0] eq_42_out;
	eq #(.WIDTH(32)) eq_42(.in0(eq_42_in0), .in1(eq_42_in1), .out(eq_42_out));

	reg [0:0] notOp_43_in0;
	wire [0:0] notOp_43_out;
	notOp #(.WIDTH(1)) notOp_43(.in(notOp_43_in0), .out(notOp_43_out));

	reg [0:0] andOp_44_in0;
	reg [0:0] andOp_44_in1;
	wire [0:0] andOp_44_out;
	andOp #(.WIDTH(1)) andOp_44(.in0(andOp_44_in0), .in1(andOp_44_in1), .out(andOp_44_out));

	reg [31:0] eq_45_in0;
	reg [31:0] eq_45_in1;
	wire [0:0] eq_45_out;
	eq #(.WIDTH(32)) eq_45(.in0(eq_45_in0), .in1(eq_45_in1), .out(eq_45_out));

	reg [0:0] notOp_46_in0;
	wire [0:0] notOp_46_out;
	notOp #(.WIDTH(1)) notOp_46(.in(notOp_46_in0), .out(notOp_46_out));

	reg [0:0] andOp_47_in0;
	reg [0:0] andOp_47_in1;
	wire [0:0] andOp_47_out;
	andOp #(.WIDTH(1)) andOp_47(.in0(andOp_47_in0), .in1(andOp_47_in1), .out(andOp_47_out));

	reg [31:0] eq_48_in0;
	reg [31:0] eq_48_in1;
	wire [0:0] eq_48_out;
	eq #(.WIDTH(32)) eq_48(.in0(eq_48_in0), .in1(eq_48_in1), .out(eq_48_out));

	reg [0:0] notOp_49_in0;
	wire [0:0] notOp_49_out;
	notOp #(.WIDTH(1)) notOp_49(.in(notOp_49_in0), .out(notOp_49_out));

	reg [0:0] andOp_50_in0;
	reg [0:0] andOp_50_in1;
	wire [0:0] andOp_50_out;
	andOp #(.WIDTH(1)) andOp_50(.in0(andOp_50_in0), .in1(andOp_50_in1), .out(andOp_50_out));

	reg [31:0] eq_51_in0;
	reg [31:0] eq_51_in1;
	wire [0:0] eq_51_out;
	eq #(.WIDTH(32)) eq_51(.in0(eq_51_in0), .in1(eq_51_in1), .out(eq_51_out));

	reg [0:0] notOp_52_in0;
	wire [0:0] notOp_52_out;
	notOp #(.WIDTH(1)) notOp_52(.in(notOp_52_in0), .out(notOp_52_out));

	reg [0:0] andOp_53_in0;
	reg [0:0] andOp_53_in1;
	wire [0:0] andOp_53_out;
	andOp #(.WIDTH(1)) andOp_53(.in0(andOp_53_in0), .in1(andOp_53_in1), .out(andOp_53_out));

	reg [31:0] eq_54_in0;
	reg [31:0] eq_54_in1;
	wire [0:0] eq_54_out;
	eq #(.WIDTH(32)) eq_54(.in0(eq_54_in0), .in1(eq_54_in1), .out(eq_54_out));

	reg [0:0] notOp_55_in0;
	wire [0:0] notOp_55_out;
	notOp #(.WIDTH(1)) notOp_55(.in(notOp_55_in0), .out(notOp_55_out));

	reg [0:0] andOp_56_in0;
	reg [0:0] andOp_56_in1;
	wire [0:0] andOp_56_out;
	andOp #(.WIDTH(1)) andOp_56(.in0(andOp_56_in0), .in1(andOp_56_in1), .out(andOp_56_out));

	reg [31:0] eq_57_in0;
	reg [31:0] eq_57_in1;
	wire [0:0] eq_57_out;
	eq #(.WIDTH(32)) eq_57(.in0(eq_57_in0), .in1(eq_57_in1), .out(eq_57_out));

	reg [0:0] notOp_58_in0;
	wire [0:0] notOp_58_out;
	notOp #(.WIDTH(1)) notOp_58(.in(notOp_58_in0), .out(notOp_58_out));

	reg [0:0] andOp_59_in0;
	reg [0:0] andOp_59_in1;
	wire [0:0] andOp_59_out;
	andOp #(.WIDTH(1)) andOp_59(.in0(andOp_59_in0), .in1(andOp_59_in1), .out(andOp_59_out));

	reg [0:0] andOp_60_in0;
	reg [0:0] andOp_60_in1;
	wire [0:0] andOp_60_out;
	andOp #(.WIDTH(1)) andOp_60(.in0(andOp_60_in0), .in1(andOp_60_in1), .out(andOp_60_out));

	reg [0:0] andOp_61_in0;
	reg [0:0] andOp_61_in1;
	wire [0:0] andOp_61_out;
	andOp #(.WIDTH(1)) andOp_61(.in0(andOp_61_in0), .in1(andOp_61_in1), .out(andOp_61_out));

	reg [0:0] andOp_62_in0;
	reg [0:0] andOp_62_in1;
	wire [0:0] andOp_62_out;
	andOp #(.WIDTH(1)) andOp_62(.in0(andOp_62_in0), .in1(andOp_62_in1), .out(andOp_62_out));

	reg [0:0] andOp_63_in0;
	reg [0:0] andOp_63_in1;
	wire [0:0] andOp_63_out;
	andOp #(.WIDTH(1)) andOp_63(.in0(andOp_63_in0), .in1(andOp_63_in1), .out(andOp_63_out));

	reg [0:0] andOp_64_in0;
	reg [0:0] andOp_64_in1;
	wire [0:0] andOp_64_out;
	andOp #(.WIDTH(1)) andOp_64(.in0(andOp_64_in0), .in1(andOp_64_in1), .out(andOp_64_out));

	reg [0:0] andOp_65_in0;
	reg [0:0] andOp_65_in1;
	wire [0:0] andOp_65_out;
	andOp #(.WIDTH(1)) andOp_65(.in0(andOp_65_in0), .in1(andOp_65_in1), .out(andOp_65_out));

	reg [0:0] andOp_66_in0;
	reg [0:0] andOp_66_in1;
	wire [0:0] andOp_66_out;
	andOp #(.WIDTH(1)) andOp_66(.in0(andOp_66_in0), .in1(andOp_66_in1), .out(andOp_66_out));

	reg [0:0] andOp_67_in0;
	reg [0:0] andOp_67_in1;
	wire [0:0] andOp_67_out;
	andOp #(.WIDTH(1)) andOp_67(.in0(andOp_67_in0), .in1(andOp_67_in1), .out(andOp_67_out));

	reg [0:0] andOp_68_in0;
	reg [0:0] andOp_68_in1;
	wire [0:0] andOp_68_out;
	andOp #(.WIDTH(1)) andOp_68(.in0(andOp_68_in0), .in1(andOp_68_in1), .out(andOp_68_out));

	reg [0:0] andOp_69_in0;
	reg [0:0] andOp_69_in1;
	wire [0:0] andOp_69_out;
	andOp #(.WIDTH(1)) andOp_69(.in0(andOp_69_in0), .in1(andOp_69_in1), .out(andOp_69_out));

	reg [0:0] andOp_70_in0;
	reg [0:0] andOp_70_in1;
	wire [0:0] andOp_70_out;
	andOp #(.WIDTH(1)) andOp_70(.in0(andOp_70_in0), .in1(andOp_70_in1), .out(andOp_70_out));

	reg [0:0] andOp_71_in0;
	reg [0:0] andOp_71_in1;
	wire [0:0] andOp_71_out;
	andOp #(.WIDTH(1)) andOp_71(.in0(andOp_71_in0), .in1(andOp_71_in1), .out(andOp_71_out));

	reg [0:0] andOp_72_in0;
	reg [0:0] andOp_72_in1;
	wire [0:0] andOp_72_out;
	andOp #(.WIDTH(1)) andOp_72(.in0(andOp_72_in0), .in1(andOp_72_in1), .out(andOp_72_out));

	reg [0:0] andOp_73_in0;
	reg [0:0] andOp_73_in1;
	wire [0:0] andOp_73_out;
	andOp #(.WIDTH(1)) andOp_73(.in0(andOp_73_in0), .in1(andOp_73_in1), .out(andOp_73_out));

	reg [31:0] concat_74_in0;
	reg [31:0] concat_74_in1;
	wire [63:0] concat_74_out;
	concat #(.IN0_WIDTH(32), .IN1_WIDTH(32)) concat_74(.in0(concat_74_in0), .in1(concat_74_in1), .out(concat_74_out));

	reg [31:0] concat_75_in0;
	reg [31:0] concat_75_in1;
	wire [63:0] concat_75_out;
	concat #(.IN0_WIDTH(32), .IN1_WIDTH(32)) concat_75(.in0(concat_75_in0), .in1(concat_75_in1), .out(concat_75_out));

	reg [0:0] andOp_76_in0;
	reg [0:0] andOp_76_in1;
	wire [0:0] andOp_76_out;
	andOp #(.WIDTH(1)) andOp_76(.in0(andOp_76_in0), .in1(andOp_76_in1), .out(andOp_76_out));

	reg [0:0] andOp_77_in0;
	reg [0:0] andOp_77_in1;
	wire [0:0] andOp_77_out;
	andOp #(.WIDTH(1)) andOp_77(.in0(andOp_77_in0), .in1(andOp_77_in1), .out(andOp_77_out));

	reg [0:0] andOp_78_in0;
	reg [0:0] andOp_78_in1;
	wire [0:0] andOp_78_out;
	andOp #(.WIDTH(1)) andOp_78(.in0(andOp_78_in0), .in1(andOp_78_in1), .out(andOp_78_out));

	reg [0:0] andOp_79_in0;
	reg [0:0] andOp_79_in1;
	wire [0:0] andOp_79_out;
	andOp #(.WIDTH(1)) andOp_79(.in0(andOp_79_in0), .in1(andOp_79_in1), .out(andOp_79_out));

	reg [0:0] andOp_80_in0;
	reg [0:0] andOp_80_in1;
	wire [0:0] andOp_80_out;
	andOp #(.WIDTH(1)) andOp_80(.in0(andOp_80_in0), .in1(andOp_80_in1), .out(andOp_80_out));

	reg [0:0] andOp_81_in0;
	reg [0:0] andOp_81_in1;
	wire [0:0] andOp_81_out;
	andOp #(.WIDTH(1)) andOp_81(.in0(andOp_81_in0), .in1(andOp_81_in1), .out(andOp_81_out));

	reg [0:0] andOp_82_in0;
	reg [0:0] andOp_82_in1;
	wire [0:0] andOp_82_out;
	andOp #(.WIDTH(1)) andOp_82(.in0(andOp_82_in0), .in1(andOp_82_in1), .out(andOp_82_out));

	reg [0:0] andOp_83_in0;
	reg [0:0] andOp_83_in1;
	wire [0:0] andOp_83_out;
	andOp #(.WIDTH(1)) andOp_83(.in0(andOp_83_in0), .in1(andOp_83_in1), .out(andOp_83_out));

	reg [0:0] andOp_84_in0;
	reg [0:0] andOp_84_in1;
	wire [0:0] andOp_84_out;
	andOp #(.WIDTH(1)) andOp_84(.in0(andOp_84_in0), .in1(andOp_84_in1), .out(andOp_84_out));

	reg [0:0] andOp_85_in0;
	reg [0:0] andOp_85_in1;
	wire [0:0] andOp_85_out;
	andOp #(.WIDTH(1)) andOp_85(.in0(andOp_85_in0), .in1(andOp_85_in1), .out(andOp_85_out));

	// End Functional Units

	reg [31:0] add_tmp_1;
	reg [31:0] global_state;
	reg [31:0] state_0_entry_BB_reg;
	reg [31:0] state_0_last_BB_reg;
	reg [31:0] state_1_entry_BB_reg;
	reg [31:0] state_1_last_BB_reg;
	reg [31:0] state_2_entry_BB_reg;
	reg [31:0] state_2_last_BB_reg;

	// controller for add_add_6.add_in0_add_6
	// controller for add_add_6.add_in1_add_6
	// Insensitive connections
	always @(*) begin
		add_in0_add_6 = valid ? phi_out_phi_12 : phi_out_phi_12;
		add_in1_add_6 = valid ? 32'd1 : 32'd1;
	end
	// controller for andOp_10.andOp_10_in0
	// controller for andOp_10.andOp_10_in1
	// Insensitive connections
	always @(*) begin
		andOp_10_in0 = valid ? andOp_9_out : andOp_9_out;
		andOp_10_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_12.andOp_12_in0
	// controller for andOp_12.andOp_12_in1
	// Insensitive connections
	always @(*) begin
		andOp_12_in0 = valid ? bb_3_active_in_state_2_out_data : bb_3_active_in_state_2_out_data;
		andOp_12_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_13.andOp_13_in0
	// controller for andOp_13.andOp_13_in1
	// Insensitive connections
	always @(*) begin
		andOp_13_in0 = valid ? andOp_12_out : andOp_12_out;
		andOp_13_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_15.andOp_15_in0
	// controller for andOp_15.andOp_15_in1
	// Insensitive connections
	always @(*) begin
		andOp_15_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_15_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_16.andOp_16_in0
	// controller for andOp_16.andOp_16_in1
	// Insensitive connections
	always @(*) begin
		andOp_16_in0 = valid ? andOp_15_out : andOp_15_out;
		andOp_16_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_18.andOp_18_in0
	// controller for andOp_18.andOp_18_in1
	// Insensitive connections
	always @(*) begin
		andOp_18_in0 = valid ? andOp_16_out : andOp_16_out;
		andOp_18_in1 = valid ? cmp_out_icmp_17 : cmp_out_icmp_17;
	end
	// controller for andOp_20.andOp_20_in0
	// controller for andOp_20.andOp_20_in1
	// Insensitive connections
	always @(*) begin
		andOp_20_in0 = valid ? andOp_16_out : andOp_16_out;
		andOp_20_in1 = valid ? notOp_19_out : notOp_19_out;
	end
	// controller for andOp_21.andOp_21_in0
	// controller for andOp_21.andOp_21_in1
	// Insensitive connections
	always @(*) begin
		andOp_21_in0 = valid ? bb_2_active_in_state_2_out_data : bb_2_active_in_state_2_out_data;
		andOp_21_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_22.andOp_22_in0
	// controller for andOp_22.andOp_22_in1
	// Insensitive connections
	always @(*) begin
		andOp_22_in0 = valid ? andOp_21_out : andOp_21_out;
		andOp_22_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_3.andOp_3_in0
	// controller for andOp_3.andOp_3_in1
	// Insensitive connections
	always @(*) begin
		andOp_3_in0 = valid ? bb_0_active_in_state_0_out_data : bb_0_active_in_state_0_out_data;
		andOp_3_in1 = valid ? eq_0_out : eq_0_out;
	end
	// controller for andOp_37.andOp_37_in0
	// controller for andOp_37.andOp_37_in1
	// Insensitive connections
	always @(*) begin
		andOp_37_in0 = valid ? bb_2_active_in_state_0_out_data : bb_2_active_in_state_0_out_data;
		andOp_37_in1 = valid ? eq_0_out : eq_0_out;
	end
	// controller for andOp_38.andOp_38_in0
	// controller for andOp_38.andOp_38_in1
	// Insensitive connections
	always @(*) begin
		andOp_38_in0 = valid ? bb_2_active_in_state_0_out_data : bb_2_active_in_state_0_out_data;
		andOp_38_in1 = valid ? eq_0_out : eq_0_out;
	end
	// controller for andOp_39.andOp_39_in0
	// controller for andOp_39.andOp_39_in1
	// Insensitive connections
	always @(*) begin
		andOp_39_in0 = valid ? bb_2_active_in_state_1_out_data : bb_2_active_in_state_1_out_data;
		andOp_39_in1 = valid ? eq_1_out : eq_1_out;
	end
	// controller for andOp_4.andOp_4_in0
	// controller for andOp_4.andOp_4_in1
	// Insensitive connections
	always @(*) begin
		andOp_4_in0 = valid ? andOp_3_out : andOp_3_out;
		andOp_4_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_40.andOp_40_in0
	// controller for andOp_40.andOp_40_in1
	// Insensitive connections
	always @(*) begin
		andOp_40_in0 = valid ? bb_2_active_in_state_1_out_data : bb_2_active_in_state_1_out_data;
		andOp_40_in1 = valid ? eq_1_out : eq_1_out;
	end
	// controller for andOp_44.andOp_44_in0
	// controller for andOp_44.andOp_44_in1
	// Insensitive connections
	always @(*) begin
		andOp_44_in0 = valid ? notOp_43_out : notOp_43_out;
		andOp_44_in1 = valid ? andOp_4_out : andOp_4_out;
	end
	// controller for andOp_47.andOp_47_in0
	// controller for andOp_47.andOp_47_in1
	// Insensitive connections
	always @(*) begin
		andOp_47_in0 = valid ? notOp_46_out : notOp_46_out;
		andOp_47_in1 = valid ? andOp_4_out : andOp_4_out;
	end
	// controller for andOp_50.andOp_50_in0
	// controller for andOp_50.andOp_50_in1
	// Insensitive connections
	always @(*) begin
		andOp_50_in0 = valid ? notOp_49_out : notOp_49_out;
		andOp_50_in1 = valid ? andOp_20_out : andOp_20_out;
	end
	// controller for andOp_53.andOp_53_in0
	// controller for andOp_53.andOp_53_in1
	// Insensitive connections
	always @(*) begin
		andOp_53_in0 = valid ? notOp_52_out : notOp_52_out;
		andOp_53_in1 = valid ? andOp_7_out : andOp_7_out;
	end
	// controller for andOp_56.andOp_56_in0
	// controller for andOp_56.andOp_56_in1
	// Insensitive connections
	always @(*) begin
		andOp_56_in0 = valid ? notOp_55_out : notOp_55_out;
		andOp_56_in1 = valid ? andOp_13_out : andOp_13_out;
	end
	// controller for andOp_59.andOp_59_in0
	// controller for andOp_59.andOp_59_in1
	// Insensitive connections
	always @(*) begin
		andOp_59_in0 = valid ? notOp_58_out : notOp_58_out;
		andOp_59_in1 = valid ? andOp_4_out : andOp_4_out;
	end
	// controller for andOp_6.andOp_6_in0
	// controller for andOp_6.andOp_6_in1
	// Insensitive connections
	always @(*) begin
		andOp_6_in0 = valid ? bb_2_active_in_state_2_out_data : bb_2_active_in_state_2_out_data;
		andOp_6_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_60.andOp_60_in0
	// controller for andOp_60.andOp_60_in1
	// Insensitive connections
	always @(*) begin
		andOp_60_in0 = valid ? bb_2_active_in_state_0_out_data : bb_2_active_in_state_0_out_data;
		andOp_60_in1 = valid ? eq_0_out : eq_0_out;
	end
	// controller for andOp_61.andOp_61_in0
	// controller for andOp_61.andOp_61_in1
	// Insensitive connections
	always @(*) begin
		andOp_61_in0 = valid ? bb_0_active_in_state_0_out_data : bb_0_active_in_state_0_out_data;
		andOp_61_in1 = valid ? eq_0_out : eq_0_out;
	end
	// controller for andOp_62.andOp_62_in0
	// controller for andOp_62.andOp_62_in1
	// Insensitive connections
	always @(*) begin
		andOp_62_in0 = valid ? bb_2_active_in_state_1_out_data : bb_2_active_in_state_1_out_data;
		andOp_62_in1 = valid ? eq_1_out : eq_1_out;
	end
	// controller for andOp_63.andOp_63_in0
	// controller for andOp_63.andOp_63_in1
	// Insensitive connections
	always @(*) begin
		andOp_63_in0 = valid ? bb_2_active_in_state_2_out_data : bb_2_active_in_state_2_out_data;
		andOp_63_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_64.andOp_64_in0
	// controller for andOp_64.andOp_64_in1
	// Insensitive connections
	always @(*) begin
		andOp_64_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_64_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_65.andOp_65_in0
	// controller for andOp_65.andOp_65_in1
	// Insensitive connections
	always @(*) begin
		andOp_65_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_65_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_66.andOp_66_in0
	// controller for andOp_66.andOp_66_in1
	// Insensitive connections
	always @(*) begin
		andOp_66_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_66_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_67.andOp_67_in0
	// controller for andOp_67.andOp_67_in1
	// Insensitive connections
	always @(*) begin
		andOp_67_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_67_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_68.andOp_68_in0
	// controller for andOp_68.andOp_68_in1
	// Insensitive connections
	always @(*) begin
		andOp_68_in0 = valid ? bb_1_active_in_state_2_out_data : bb_1_active_in_state_2_out_data;
		andOp_68_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_69.andOp_69_in0
	// controller for andOp_69.andOp_69_in1
	// Insensitive connections
	always @(*) begin
		andOp_69_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_69_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_7.andOp_7_in0
	// controller for andOp_7.andOp_7_in1
	// Insensitive connections
	always @(*) begin
		andOp_7_in0 = valid ? andOp_6_out : andOp_6_out;
		andOp_7_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_70.andOp_70_in0
	// controller for andOp_70.andOp_70_in1
	// Insensitive connections
	always @(*) begin
		andOp_70_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_70_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_71.andOp_71_in0
	// controller for andOp_71.andOp_71_in1
	// Insensitive connections
	always @(*) begin
		andOp_71_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_71_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_72.andOp_72_in0
	// controller for andOp_72.andOp_72_in1
	// Insensitive connections
	always @(*) begin
		andOp_72_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_72_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_73.andOp_73_in0
	// controller for andOp_73.andOp_73_in1
	// Insensitive connections
	always @(*) begin
		andOp_73_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_73_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_76.andOp_76_in0
	// controller for andOp_76.andOp_76_in1
	// Insensitive connections
	always @(*) begin
		andOp_76_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_76_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_77.andOp_77_in0
	// controller for andOp_77.andOp_77_in1
	// Insensitive connections
	always @(*) begin
		andOp_77_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_77_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_78.andOp_78_in0
	// controller for andOp_78.andOp_78_in1
	// Insensitive connections
	always @(*) begin
		andOp_78_in0 = valid ? bb_2_active_in_state_0_out_data : bb_2_active_in_state_0_out_data;
		andOp_78_in1 = valid ? eq_0_out : eq_0_out;
	end
	// controller for andOp_79.andOp_79_in0
	// controller for andOp_79.andOp_79_in1
	// Insensitive connections
	always @(*) begin
		andOp_79_in0 = valid ? andOp_78_out : andOp_78_out;
		andOp_79_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_80.andOp_80_in0
	// controller for andOp_80.andOp_80_in1
	// Insensitive connections
	always @(*) begin
		andOp_80_in0 = valid ? bb_2_active_in_state_1_out_data : bb_2_active_in_state_1_out_data;
		andOp_80_in1 = valid ? eq_1_out : eq_1_out;
	end
	// controller for andOp_81.andOp_81_in0
	// controller for andOp_81.andOp_81_in1
	// Insensitive connections
	always @(*) begin
		andOp_81_in0 = valid ? andOp_80_out : andOp_80_out;
		andOp_81_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_82.andOp_82_in0
	// controller for andOp_82.andOp_82_in1
	// Insensitive connections
	always @(*) begin
		andOp_82_in0 = valid ? bb_1_active_in_state_2_out_data : bb_1_active_in_state_2_out_data;
		andOp_82_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_83.andOp_83_in0
	// controller for andOp_83.andOp_83_in1
	// Insensitive connections
	always @(*) begin
		andOp_83_in0 = valid ? andOp_82_out : andOp_82_out;
		andOp_83_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_84.andOp_84_in0
	// controller for andOp_84.andOp_84_in1
	// Insensitive connections
	always @(*) begin
		andOp_84_in0 = valid ? bb_1_active_in_state_2_out_data : bb_1_active_in_state_2_out_data;
		andOp_84_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_85.andOp_85_in0
	// controller for andOp_85.andOp_85_in1
	// Insensitive connections
	always @(*) begin
		andOp_85_in0 = valid ? bb_4_active_in_state_2_out_data : bb_4_active_in_state_2_out_data;
		andOp_85_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for andOp_9.andOp_9_in0
	// controller for andOp_9.andOp_9_in1
	// Insensitive connections
	always @(*) begin
		andOp_9_in0 = valid ? bb_2_active_in_state_2_out_data : bb_2_active_in_state_2_out_data;
		andOp_9_in1 = valid ? eq_2_out : eq_2_out;
	end
	// controller for bb_0_active_in_state_0.bb_0_active_in_state_0_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_0_active_in_state_0_in_data = eq_24_out;
		end else begin
			bb_0_active_in_state_0_in_data = 0;
		end
	end
	// controller for bb_0_predecessor_in_state_0.bb_0_predecessor_in_state_0_in_data
	always @(*) begin
		if (eq_41_out) begin 
			bb_0_predecessor_in_state_0_in_data = state_0_last_BB_reg;
		end else begin
			bb_0_predecessor_in_state_0_in_data = 0;
		end
	end
	// controller for bb_1_active_in_state_2.bb_1_active_in_state_2_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_1_active_in_state_2_in_data = orOp_34_out;
		end else begin
			bb_1_active_in_state_2_in_data = 0;
		end
	end
	// controller for bb_1_predecessor_in_state_2.bb_1_predecessor_in_state_2_in_data
	always @(*) begin
		if (andOp_56_out) begin 
			bb_1_predecessor_in_state_2_in_data = 32'd3;
		end else if (eq_54_out) begin 
			bb_1_predecessor_in_state_2_in_data = state_2_last_BB_reg;
		end else begin
			bb_1_predecessor_in_state_2_in_data = 0;
		end
	end
	// controller for bb_2_active_in_state_0.bb_2_active_in_state_0_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_2_active_in_state_0_in_data = orOp_26_out;
		end else begin
			bb_2_active_in_state_0_in_data = 0;
		end
	end
	// controller for bb_2_active_in_state_1.bb_2_active_in_state_1_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_2_active_in_state_1_in_data = orOp_28_out;
		end else begin
			bb_2_active_in_state_1_in_data = 0;
		end
	end
	// controller for bb_2_active_in_state_2.bb_2_active_in_state_2_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_2_active_in_state_2_in_data = orOp_36_out;
		end else begin
			bb_2_active_in_state_2_in_data = 0;
		end
	end
	// controller for bb_2_predecessor_in_state_0.bb_2_predecessor_in_state_0_in_data
	always @(*) begin
		if (andOp_44_out) begin 
			bb_2_predecessor_in_state_0_in_data = 32'd0;
		end else if (eq_42_out) begin 
			bb_2_predecessor_in_state_0_in_data = state_0_last_BB_reg;
		end else begin
			bb_2_predecessor_in_state_0_in_data = 0;
		end
	end
	// controller for bb_2_predecessor_in_state_1.bb_2_predecessor_in_state_1_in_data
	always @(*) begin
		if (andOp_47_out) begin 
			bb_2_predecessor_in_state_1_in_data = 32'd0;
		end else if (eq_45_out) begin 
			bb_2_predecessor_in_state_1_in_data = state_1_last_BB_reg;
		end else begin
			bb_2_predecessor_in_state_1_in_data = 0;
		end
	end
	// controller for bb_2_predecessor_in_state_2.bb_2_predecessor_in_state_2_in_data
	always @(*) begin
		if (andOp_59_out) begin 
			bb_2_predecessor_in_state_2_in_data = 32'd0;
		end else if (eq_57_out) begin 
			bb_2_predecessor_in_state_2_in_data = state_2_last_BB_reg;
		end else begin
			bb_2_predecessor_in_state_2_in_data = 0;
		end
	end
	// controller for bb_3_active_in_state_2.bb_3_active_in_state_2_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_3_active_in_state_2_in_data = orOp_30_out;
		end else begin
			bb_3_active_in_state_2_in_data = 0;
		end
	end
	// controller for bb_3_predecessor_in_state_2.bb_3_predecessor_in_state_2_in_data
	always @(*) begin
		if (andOp_50_out) begin 
			bb_3_predecessor_in_state_2_in_data = 32'd4;
		end else if (eq_48_out) begin 
			bb_3_predecessor_in_state_2_in_data = state_2_last_BB_reg;
		end else begin
			bb_3_predecessor_in_state_2_in_data = 0;
		end
	end
	// controller for bb_4_active_in_state_2.bb_4_active_in_state_2_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_4_active_in_state_2_in_data = orOp_32_out;
		end else begin
			bb_4_active_in_state_2_in_data = 0;
		end
	end
	// controller for bb_4_predecessor_in_state_2.bb_4_predecessor_in_state_2_in_data
	always @(*) begin
		if (andOp_53_out) begin 
			bb_4_predecessor_in_state_2_in_data = 32'd2;
		end else if (eq_51_out) begin 
			bb_4_predecessor_in_state_2_in_data = state_2_last_BB_reg;
		end else begin
			bb_4_predecessor_in_state_2_in_data = 0;
		end
	end
	// controller for br_0_happened_in_state_0.br_0_happened_in_state_0_in_data
	always @(*) begin
		if (andOp_4_out) begin 
			br_0_happened_in_state_0_in_data = 1'd1;
		end else if (notOp_5_out) begin 
			br_0_happened_in_state_0_in_data = 1'd0;
		end else begin
			br_0_happened_in_state_0_in_data = 0;
		end
	end
	// controller for br_2_happened_in_state_0.br_2_happened_in_state_0_in_data
	always @(*) begin
		if (andOp_7_out) begin 
			br_2_happened_in_state_0_in_data = 1'd1;
		end else if (notOp_8_out) begin 
			br_2_happened_in_state_0_in_data = 1'd0;
		end else begin
			br_2_happened_in_state_0_in_data = 0;
		end
	end
	// controller for br_2_happened_in_state_1.br_2_happened_in_state_1_in_data
	always @(*) begin
		if (andOp_10_out) begin 
			br_2_happened_in_state_1_in_data = 1'd1;
		end else if (notOp_11_out) begin 
			br_2_happened_in_state_1_in_data = 1'd0;
		end else begin
			br_2_happened_in_state_1_in_data = 0;
		end
	end
	// controller for br_2_happened_in_state_2.br_2_happened_in_state_2_in_data
	always @(*) begin
		if (andOp_22_out) begin 
			br_2_happened_in_state_2_in_data = 1'd1;
		end else if (notOp_23_out) begin 
			br_2_happened_in_state_2_in_data = 1'd0;
		end else begin
			br_2_happened_in_state_2_in_data = 0;
		end
	end
	// controller for br_3_happened_in_state_2.br_3_happened_in_state_2_in_data
	always @(*) begin
		if (andOp_13_out) begin 
			br_3_happened_in_state_2_in_data = 1'd1;
		end else if (notOp_14_out) begin 
			br_3_happened_in_state_2_in_data = 1'd0;
		end else begin
			br_3_happened_in_state_2_in_data = 0;
		end
	end
	// controller for br_4_happened_in_state_2.br_4_happened_in_state_2_in_data
	always @(*) begin
		if (andOp_16_out) begin 
			br_4_happened_in_state_2_in_data = 1'd1;
		end else if (notOp_17_out) begin 
			br_4_happened_in_state_2_in_data = 1'd0;
		end else begin
			br_4_happened_in_state_2_in_data = 0;
		end
	end
	// controller for concat_74.concat_74_in0
	// controller for concat_74.concat_74_in1
	// Insensitive connections
	always @(*) begin
		concat_74_in0 = valid ? add_tmp_1 : add_tmp_1;
		concat_74_in1 = valid ? 32'd0 : 32'd0;
	end
	// controller for concat_75.concat_75_in0
	// controller for concat_75.concat_75_in1
	// Insensitive connections
	always @(*) begin
		concat_75_in0 = valid ? 32'd4 : 32'd4;
		concat_75_in1 = valid ? 32'd2 : 32'd2;
	end
	// controller for eq_0.eq_0_in0
	// controller for eq_0.eq_0_in1
	// Insensitive connections
	always @(*) begin
		eq_0_in0 = valid ? 32'd0 : 32'd0;
		eq_0_in1 = valid ? global_state : global_state;
	end
	// controller for eq_1.eq_1_in0
	// controller for eq_1.eq_1_in1
	// Insensitive connections
	always @(*) begin
		eq_1_in0 = valid ? 32'd1 : 32'd1;
		eq_1_in1 = valid ? global_state : global_state;
	end
	// controller for eq_2.eq_2_in0
	// controller for eq_2.eq_2_in1
	// Insensitive connections
	always @(*) begin
		eq_2_in0 = valid ? 32'd2 : 32'd2;
		eq_2_in1 = valid ? global_state : global_state;
	end
	// controller for eq_24.eq_24_in0
	// controller for eq_24.eq_24_in1
	// Insensitive connections
	always @(*) begin
		eq_24_in0 = valid ? 32'd0 : 32'd0;
		eq_24_in1 = valid ? state_0_entry_BB_reg : state_0_entry_BB_reg;
	end
	// controller for eq_25.eq_25_in0
	// controller for eq_25.eq_25_in1
	// Insensitive connections
	always @(*) begin
		eq_25_in0 = valid ? 32'd2 : 32'd2;
		eq_25_in1 = valid ? state_0_entry_BB_reg : state_0_entry_BB_reg;
	end
	// controller for eq_27.eq_27_in0
	// controller for eq_27.eq_27_in1
	// Insensitive connections
	always @(*) begin
		eq_27_in0 = valid ? 32'd2 : 32'd2;
		eq_27_in1 = valid ? state_1_entry_BB_reg : state_1_entry_BB_reg;
	end
	// controller for eq_29.eq_29_in0
	// controller for eq_29.eq_29_in1
	// Insensitive connections
	always @(*) begin
		eq_29_in0 = valid ? 32'd3 : 32'd3;
		eq_29_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for eq_31.eq_31_in0
	// controller for eq_31.eq_31_in1
	// Insensitive connections
	always @(*) begin
		eq_31_in0 = valid ? 32'd4 : 32'd4;
		eq_31_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for eq_33.eq_33_in0
	// controller for eq_33.eq_33_in1
	// Insensitive connections
	always @(*) begin
		eq_33_in0 = valid ? 32'd1 : 32'd1;
		eq_33_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for eq_35.eq_35_in0
	// controller for eq_35.eq_35_in1
	// Insensitive connections
	always @(*) begin
		eq_35_in0 = valid ? 32'd2 : 32'd2;
		eq_35_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for eq_41.eq_41_in0
	// controller for eq_41.eq_41_in1
	// Insensitive connections
	always @(*) begin
		eq_41_in0 = valid ? 32'd0 : 32'd0;
		eq_41_in1 = valid ? state_0_entry_BB_reg : state_0_entry_BB_reg;
	end
	// controller for eq_42.eq_42_in0
	// controller for eq_42.eq_42_in1
	// Insensitive connections
	always @(*) begin
		eq_42_in0 = valid ? 32'd2 : 32'd2;
		eq_42_in1 = valid ? state_0_entry_BB_reg : state_0_entry_BB_reg;
	end
	// controller for eq_45.eq_45_in0
	// controller for eq_45.eq_45_in1
	// Insensitive connections
	always @(*) begin
		eq_45_in0 = valid ? 32'd2 : 32'd2;
		eq_45_in1 = valid ? state_1_entry_BB_reg : state_1_entry_BB_reg;
	end
	// controller for eq_48.eq_48_in0
	// controller for eq_48.eq_48_in1
	// Insensitive connections
	always @(*) begin
		eq_48_in0 = valid ? 32'd3 : 32'd3;
		eq_48_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for eq_51.eq_51_in0
	// controller for eq_51.eq_51_in1
	// Insensitive connections
	always @(*) begin
		eq_51_in0 = valid ? 32'd4 : 32'd4;
		eq_51_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for eq_54.eq_54_in0
	// controller for eq_54.eq_54_in1
	// Insensitive connections
	always @(*) begin
		eq_54_in0 = valid ? 32'd1 : 32'd1;
		eq_54_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for eq_57.eq_57_in0
	// controller for eq_57.eq_57_in1
	// Insensitive connections
	always @(*) begin
		eq_57_in0 = valid ? 32'd2 : 32'd2;
		eq_57_in1 = valid ? state_2_entry_BB_reg : state_2_entry_BB_reg;
	end
	// controller for icmp_17.cmp_in0_icmp_17
	// controller for icmp_17.cmp_in1_icmp_17
	// Insensitive connections
	always @(*) begin
		cmp_in0_icmp_17 = valid ? add_out_add_6 : add_out_add_6;
		cmp_in1_icmp_17 = valid ? 32'd8533 : 32'd8533;
	end
	// controller for m.m_rst_n
	always @(*) begin
		if (andOp_60_out) begin 
			m_rst_n = -(1'd1);
		end else if (andOp_62_out) begin 
			m_rst_n = 1'd0;
		end else if (andOp_63_out) begin 
			m_rst_n = -(1'd1);
		end else begin
			m_rst_n = 0;
		end
	end
	// controller for m.m_word0
	always @(*) begin
		if (andOp_64_out) begin 
			m_word0 = in0_out_data;
		end else begin
			m_word0 = 0;
		end
	end
	// controller for m.m_word1
	always @(*) begin
		if (andOp_65_out) begin 
			m_word1 = in1_out_data;
		end else begin
			m_word1 = 0;
		end
	end
	// controller for m.m_word2
	always @(*) begin
		if (andOp_66_out) begin 
			m_word2 = in2_out_data;
		end else begin
			m_word2 = 0;
		end
	end
	// controller for notOp_11.notOp_11_in0
	// Insensitive connections
	always @(*) begin
		notOp_11_in0 = valid ? andOp_10_out : andOp_10_out;
	end
	// controller for notOp_14.notOp_14_in0
	// Insensitive connections
	always @(*) begin
		notOp_14_in0 = valid ? andOp_13_out : andOp_13_out;
	end
	// controller for notOp_17.notOp_17_in0
	// Insensitive connections
	always @(*) begin
		notOp_17_in0 = valid ? andOp_16_out : andOp_16_out;
	end
	// controller for notOp_19.notOp_19_in0
	// Insensitive connections
	always @(*) begin
		notOp_19_in0 = valid ? cmp_out_icmp_17 : cmp_out_icmp_17;
	end
	// controller for notOp_23.notOp_23_in0
	// Insensitive connections
	always @(*) begin
		notOp_23_in0 = valid ? andOp_22_out : andOp_22_out;
	end
	// controller for notOp_43.notOp_43_in0
	// Insensitive connections
	always @(*) begin
		notOp_43_in0 = valid ? eq_42_out : eq_42_out;
	end
	// controller for notOp_46.notOp_46_in0
	// Insensitive connections
	always @(*) begin
		notOp_46_in0 = valid ? eq_45_out : eq_45_out;
	end
	// controller for notOp_49.notOp_49_in0
	// Insensitive connections
	always @(*) begin
		notOp_49_in0 = valid ? eq_48_out : eq_48_out;
	end
	// controller for notOp_5.notOp_5_in0
	// Insensitive connections
	always @(*) begin
		notOp_5_in0 = valid ? andOp_4_out : andOp_4_out;
	end
	// controller for notOp_52.notOp_52_in0
	// Insensitive connections
	always @(*) begin
		notOp_52_in0 = valid ? eq_51_out : eq_51_out;
	end
	// controller for notOp_55.notOp_55_in0
	// Insensitive connections
	always @(*) begin
		notOp_55_in0 = valid ? eq_54_out : eq_54_out;
	end
	// controller for notOp_58.notOp_58_in0
	// Insensitive connections
	always @(*) begin
		notOp_58_in0 = valid ? eq_57_out : eq_57_out;
	end
	// controller for notOp_8.notOp_8_in0
	// Insensitive connections
	always @(*) begin
		notOp_8_in0 = valid ? andOp_7_out : andOp_7_out;
	end
	// controller for orOp_26.orOp_26_in0
	// controller for orOp_26.orOp_26_in1
	// Insensitive connections
	always @(*) begin
		orOp_26_in0 = valid ? eq_25_out : eq_25_out;
		orOp_26_in1 = valid ? andOp_4_out : andOp_4_out;
	end
	// controller for orOp_28.orOp_28_in0
	// controller for orOp_28.orOp_28_in1
	// Insensitive connections
	always @(*) begin
		orOp_28_in0 = valid ? eq_27_out : eq_27_out;
		orOp_28_in1 = valid ? andOp_4_out : andOp_4_out;
	end
	// controller for orOp_30.orOp_30_in0
	// controller for orOp_30.orOp_30_in1
	// Insensitive connections
	always @(*) begin
		orOp_30_in0 = valid ? eq_29_out : eq_29_out;
		orOp_30_in1 = valid ? andOp_20_out : andOp_20_out;
	end
	// controller for orOp_32.orOp_32_in0
	// controller for orOp_32.orOp_32_in1
	// Insensitive connections
	always @(*) begin
		orOp_32_in0 = valid ? eq_31_out : eq_31_out;
		orOp_32_in1 = valid ? andOp_7_out : andOp_7_out;
	end
	// controller for orOp_34.orOp_34_in0
	// controller for orOp_34.orOp_34_in1
	// Insensitive connections
	always @(*) begin
		orOp_34_in0 = valid ? eq_33_out : eq_33_out;
		orOp_34_in1 = valid ? andOp_13_out : andOp_13_out;
	end
	// controller for orOp_36.orOp_36_in0
	// controller for orOp_36.orOp_36_in1
	// Insensitive connections
	always @(*) begin
		orOp_36_in0 = valid ? eq_35_out : eq_35_out;
		orOp_36_in1 = valid ? andOp_4_out : andOp_4_out;
	end
	// controller for out.out_in_data_reg
	always @(*) begin
		if (andOp_76_out) begin 
			out_in_data_reg = m_median_word;
		end else begin
			out_in_data_reg = 0;
		end
	end
	// controller for phi_12.phi_in_phi_12
	// controller for phi_12.phi_last_block_phi_12
	// controller for phi_12.phi_s_phi_12
	// Insensitive connections
	always @(*) begin
		phi_in_phi_12 = valid ? concat_74_out : concat_74_out;
		phi_last_block_phi_12 = valid ? bb_4_predecessor_in_state_2_out_data : bb_4_predecessor_in_state_2_out_data;
		phi_s_phi_12 = valid ? concat_75_out : concat_75_out;
	end
	// controller for ret_4.valid_reg
	always @(*) begin
		if (andOp_68_out) begin 
			valid_reg = 1'd1;
		end else begin
			valid_reg = 0;
		end
	end
	// Register controllers
	always @(posedge clk) begin
		if (rst) begin
			add_tmp_1 <= 0;
		end else begin
			if (andOp_85_out) begin
				add_tmp_1 <= add_out_add_6;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			global_state <= 0;
		end else begin
			if (andOp_18_out) begin
				global_state <= 32'd2;
			end
			if (andOp_79_out) begin
				global_state <= 32'd1;
			end
			if (andOp_81_out) begin
				global_state <= 32'd2;
			end
			if (andOp_83_out) begin
				global_state <= 32'd2;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			state_0_entry_BB_reg <= 0;
		end else begin
			if (andOp_37_out) begin
				state_0_entry_BB_reg <= 32'd2;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			state_0_last_BB_reg <= 0;
		end else begin
			if (andOp_4_out) begin
				state_0_last_BB_reg <= 32'd0;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			state_1_entry_BB_reg <= 0;
		end else begin
			if (andOp_38_out) begin
				state_1_entry_BB_reg <= 32'd2;
			end
			if (andOp_39_out) begin
				state_1_entry_BB_reg <= 32'd2;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			state_1_last_BB_reg <= 0;
		end else begin
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			state_2_entry_BB_reg <= 0;
		end else begin
			if (andOp_18_out) begin
				state_2_entry_BB_reg <= 32'd4;
			end
			if (andOp_40_out) begin
				state_2_entry_BB_reg <= 32'd2;
			end
			if (andOp_84_out) begin
				state_2_entry_BB_reg <= 32'd1;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			state_2_last_BB_reg <= 0;
		end else begin
			if (andOp_13_out) begin
				state_2_last_BB_reg <= 32'd3;
			end
			if (andOp_18_out) begin
				state_2_last_BB_reg <= 32'd4;
			end
		end
	end

endmodule


// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module accelerate_reduce (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_r,
        out_r_ap_vld,
        value_r,
        label_r,
        reducer_circuit_levels_buffer_value_0_0_i,
        reducer_circuit_levels_buffer_value_0_0_o,
        reducer_circuit_levels_buffer_value_0_0_o_ap_vld,
        reducer_circuit_levels_buffer_label_0_0_i,
        reducer_circuit_levels_buffer_label_0_0_o,
        reducer_circuit_levels_buffer_label_0_0_o_ap_vld,
        reducer_circuit_levels_buffer_value_1_0_i,
        reducer_circuit_levels_buffer_value_1_0_o,
        reducer_circuit_levels_buffer_value_1_0_o_ap_vld,
        reducer_circuit_levels_buffer_value_0_1_i,
        reducer_circuit_levels_buffer_value_0_1_o,
        reducer_circuit_levels_buffer_value_0_1_o_ap_vld,
        reducer_circuit_levels_buffer_value_1_1_i,
        reducer_circuit_levels_buffer_value_1_1_o,
        reducer_circuit_levels_buffer_value_1_1_o_ap_vld,
        reducer_circuit_levels_buffer_label_1_0_i,
        reducer_circuit_levels_buffer_label_1_0_o,
        reducer_circuit_levels_buffer_label_1_0_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] out_r;
output   out_r_ap_vld;
input  [31:0] value_r;
input  [31:0] label_r;
input  [31:0] reducer_circuit_levels_buffer_value_0_0_i;
output  [31:0] reducer_circuit_levels_buffer_value_0_0_o;
output   reducer_circuit_levels_buffer_value_0_0_o_ap_vld;
input  [31:0] reducer_circuit_levels_buffer_label_0_0_i;
output  [31:0] reducer_circuit_levels_buffer_label_0_0_o;
output   reducer_circuit_levels_buffer_label_0_0_o_ap_vld;
input  [31:0] reducer_circuit_levels_buffer_value_1_0_i;
output  [31:0] reducer_circuit_levels_buffer_value_1_0_o;
output   reducer_circuit_levels_buffer_value_1_0_o_ap_vld;
input  [31:0] reducer_circuit_levels_buffer_value_0_1_i;
output  [31:0] reducer_circuit_levels_buffer_value_0_1_o;
output   reducer_circuit_levels_buffer_value_0_1_o_ap_vld;
input  [31:0] reducer_circuit_levels_buffer_value_1_1_i;
output  [31:0] reducer_circuit_levels_buffer_value_1_1_o;
output   reducer_circuit_levels_buffer_value_1_1_o_ap_vld;
input  [31:0] reducer_circuit_levels_buffer_label_1_0_i;
output  [31:0] reducer_circuit_levels_buffer_label_1_0_o;
output   reducer_circuit_levels_buffer_label_1_0_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_r_ap_vld;
reg[31:0] reducer_circuit_levels_buffer_value_0_0_o;
reg reducer_circuit_levels_buffer_value_0_0_o_ap_vld;
reg[31:0] reducer_circuit_levels_buffer_label_0_0_o;
reg reducer_circuit_levels_buffer_label_0_0_o_ap_vld;
reg[31:0] reducer_circuit_levels_buffer_value_1_0_o;
reg reducer_circuit_levels_buffer_value_1_0_o_ap_vld;
reg[31:0] reducer_circuit_levels_buffer_value_0_1_o;
reg reducer_circuit_levels_buffer_value_0_1_o_ap_vld;
reg[31:0] reducer_circuit_levels_buffer_value_1_1_o;
reg reducer_circuit_levels_buffer_value_1_1_o_ap_vld;
reg[31:0] reducer_circuit_levels_buffer_label_1_0_o;
reg reducer_circuit_levels_buffer_label_1_0_o_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reducer_circuit_levels_num_items_0;
reg   [31:0] reducer_circuit_levels_num_items_1;
reg   [0:0] reducer_circuit_levels_valid_0;
reg   [0:0] reducer_circuit_levels_valid_1;
wire   [31:0] add_ln35_fu_286_p2;
wire   [31:0] level_out_value_fu_338_p2;
wire   [31:0] reducer_circuit_levels_num_items_0_load_load_fu_250_p1;
wire   [31:0] add_ln35_1_fu_369_p2;
wire    ap_CS_fsm_state2;
reg   [31:0] ap_phi_mux_level_out_value_1_phi_fu_70_p4;
wire   [0:0] trunc_ln34_fu_254_p1;
reg   [31:0] ap_phi_mux_level_out_label_phi_fu_81_p4;
reg   [31:0] reducer_circuit_levels_num_items_0_new_0_reg_89;
wire   [0:0] icmp_ln18_fu_316_p2;
wire   [0:0] reducer_circuit_levels_valid_0_load_load_fu_344_p1;
reg   [31:0] level_out_118_32_reg_104;
reg   [31:0] level_out_017_31_reg_119;
reg   [31:0] ap_phi_mux_reducer_circuit_levels_buffer_value_1_0_loc_0_phi_fu_136_p4;
wire   [0:0] trunc_ln34_1_fu_348_p1;
reg   [31:0] reducer_circuit_levels_num_items_0_new_1_reg_144;
reg   [0:0] reducer_circuit_levels_num_items_1_flag_0_reg_154;
reg   [31:0] out_data_value_1_reg_167;
wire   [31:0] ap_phi_mux_empty_phi_fu_180_p4;
reg   [31:0] empty_reg_177;
reg   [0:0] ap_phi_mux_reducer_circuit_levels_num_items_1_flag_1_phi_fu_189_p6;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln18_1_fu_400_p2;
wire   [0:0] reducer_circuit_levels_valid_1_load_load_fu_429_p1;
reg   [31:0] ap_phi_mux_reducer_circuit_levels_num_items_1_new_1_phi_fu_203_p6;
reg   [31:0] ap_phi_mux_out_data_0_35_phi_fu_217_p6;
wire   [31:0] out_data_value_fu_422_p2;
reg   [0:0] ap_phi_mux_reducer_circuit_levels_num_items_1_flag_2_phi_fu_231_p4;
reg   [31:0] ap_phi_mux_reducer_circuit_levels_num_items_1_new_2_phi_fu_242_p4;
reg   [0:0] ap_sig_allocacmp_reducer_circuit_levels_valid_0_load;
reg   [31:0] ap_sig_allocacmp_reducer_circuit_levels_buffer_value_0_1_load;
reg   [0:0] ap_sig_allocacmp_reducer_circuit_levels_valid_1_load;
wire   [30:0] tmp_fu_306_p4;
wire   [30:0] tmp_1_fu_390_p4;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_condition_153;
reg    ap_condition_163;
reg    ap_condition_168;
reg    ap_condition_102;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 reducer_circuit_levels_num_items_0 = 32'd0;
#0 reducer_circuit_levels_num_items_1 = 32'd0;
#0 reducer_circuit_levels_valid_0 = 1'd0;
#0 reducer_circuit_levels_valid_1 = 1'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0) & (icmp_ln18_fu_316_p2 == 1'd0))))) begin
        empty_reg_177 <= reducer_circuit_levels_num_items_1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        empty_reg_177 <= add_ln35_1_fu_369_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((1'b1 == ap_condition_102)) begin
            level_out_017_31_reg_119 <= 32'd0;
        end else if ((reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1)) begin
            level_out_017_31_reg_119 <= level_out_value_fu_338_p2;
        end else if (((icmp_ln18_fu_316_p2 == 1'd1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0))) begin
            level_out_017_31_reg_119 <= ap_phi_mux_level_out_value_1_phi_fu_70_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd1)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd1) & (icmp_ln18_fu_316_p2 == 1'd0))))) begin
        level_out_118_32_reg_104 <= 32'd0;
    end else if ((((ap_start == 1'b1) & (icmp_ln18_fu_316_p2 == 1'd1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        level_out_118_32_reg_104 <= ap_phi_mux_level_out_label_phi_fu_81_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0) & (icmp_ln18_fu_316_p2 == 1'd0))))) begin
        out_data_value_1_reg_167 <= reducer_circuit_levels_buffer_value_1_0_i;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_data_value_1_reg_167 <= ap_phi_mux_reducer_circuit_levels_buffer_value_1_0_loc_0_phi_fu_136_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd1)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd1) & (icmp_ln18_fu_316_p2 == 1'd0))))) begin
        reducer_circuit_levels_num_items_0_new_0_reg_89 <= add_ln35_fu_286_p2;
    end else if ((((ap_start == 1'b1) & (icmp_ln18_fu_316_p2 == 1'd1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        reducer_circuit_levels_num_items_0_new_0_reg_89 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0) & (icmp_ln18_fu_316_p2 == 1'd0))))) begin
        reducer_circuit_levels_num_items_0_new_1_reg_144 <= add_ln35_fu_286_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reducer_circuit_levels_num_items_0_new_1_reg_144 <= reducer_circuit_levels_num_items_0_new_0_reg_89;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0) & (icmp_ln18_fu_316_p2 == 1'd0))))) begin
        reducer_circuit_levels_num_items_1_flag_0_reg_154 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reducer_circuit_levels_num_items_1_flag_0_reg_154 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_start == 1'b1) & (icmp_ln18_fu_316_p2 == 1'd1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        reducer_circuit_levels_valid_0 <= 1'd1;
    end else if (((ap_start == 1'b1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd4294967295) & (1'b1 == ap_CS_fsm_state1))) begin
        reducer_circuit_levels_valid_0 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd2)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln18_1_fu_400_p2 == 1'd1) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd1)))) begin
        reducer_circuit_levels_valid_1 <= 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd0))) begin
        reducer_circuit_levels_valid_1 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        reducer_circuit_levels_num_items_0 <= reducer_circuit_levels_num_items_0_new_1_reg_144;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (ap_phi_mux_reducer_circuit_levels_num_items_1_flag_2_phi_fu_231_p4 == 1'd1))) begin
        reducer_circuit_levels_num_items_1 <= ap_phi_mux_reducer_circuit_levels_num_items_1_new_2_phi_fu_242_p4;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((trunc_ln34_fu_254_p1 == 1'd1)) begin
            ap_phi_mux_level_out_label_phi_fu_81_p4 = reducer_circuit_levels_buffer_label_0_0_i;
        end else if ((trunc_ln34_fu_254_p1 == 1'd0)) begin
            ap_phi_mux_level_out_label_phi_fu_81_p4 = label_r;
        end else begin
            ap_phi_mux_level_out_label_phi_fu_81_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_level_out_label_phi_fu_81_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((trunc_ln34_fu_254_p1 == 1'd1)) begin
            ap_phi_mux_level_out_value_1_phi_fu_70_p4 = reducer_circuit_levels_buffer_value_0_0_i;
        end else if ((trunc_ln34_fu_254_p1 == 1'd0)) begin
            ap_phi_mux_level_out_value_1_phi_fu_70_p4 = value_r;
        end else begin
            ap_phi_mux_level_out_value_1_phi_fu_70_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_level_out_value_1_phi_fu_70_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((1'b1 == ap_condition_153)) begin
            ap_phi_mux_out_data_0_35_phi_fu_217_p6 = 32'd0;
        end else if ((ap_phi_mux_empty_phi_fu_180_p4 == 32'd2)) begin
            ap_phi_mux_out_data_0_35_phi_fu_217_p6 = out_data_value_fu_422_p2;
        end else if (((icmp_ln18_1_fu_400_p2 == 1'd1) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd1))) begin
            ap_phi_mux_out_data_0_35_phi_fu_217_p6 = out_data_value_1_reg_167;
        end else begin
            ap_phi_mux_out_data_0_35_phi_fu_217_p6 = 'bx;
        end
    end else begin
        ap_phi_mux_out_data_0_35_phi_fu_217_p6 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((trunc_ln34_1_fu_348_p1 == 1'd1)) begin
            ap_phi_mux_reducer_circuit_levels_buffer_value_1_0_loc_0_phi_fu_136_p4 = reducer_circuit_levels_buffer_value_1_0_i;
        end else if ((trunc_ln34_1_fu_348_p1 == 1'd0)) begin
            ap_phi_mux_reducer_circuit_levels_buffer_value_1_0_loc_0_phi_fu_136_p4 = level_out_017_31_reg_119;
        end else begin
            ap_phi_mux_reducer_circuit_levels_buffer_value_1_0_loc_0_phi_fu_136_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_reducer_circuit_levels_buffer_value_1_0_loc_0_phi_fu_136_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ((~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & ~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd1) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1)) | (~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1) & (icmp_ln18_1_fu_400_p2 == 1'd0))))) begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_flag_1_phi_fu_189_p6 = reducer_circuit_levels_num_items_1_flag_0_reg_154;
    end else if ((((1'b1 == ap_CS_fsm_state3) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd2)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln18_1_fu_400_p2 == 1'd1) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd1)))) begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_flag_1_phi_fu_189_p6 = 1'd1;
    end else begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_flag_1_phi_fu_189_p6 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((1'b1 == ap_condition_168)) begin
            ap_phi_mux_reducer_circuit_levels_num_items_1_flag_2_phi_fu_231_p4 = reducer_circuit_levels_num_items_1_flag_0_reg_154;
        end else if ((1'b1 == ap_condition_163)) begin
            ap_phi_mux_reducer_circuit_levels_num_items_1_flag_2_phi_fu_231_p4 = ap_phi_mux_reducer_circuit_levels_num_items_1_flag_1_phi_fu_189_p6;
        end else begin
            ap_phi_mux_reducer_circuit_levels_num_items_1_flag_2_phi_fu_231_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_flag_2_phi_fu_231_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ((~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & ~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd1) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1)) | (~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1) & (icmp_ln18_1_fu_400_p2 == 1'd0))))) begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_new_1_phi_fu_203_p6 = empty_reg_177;
    end else if ((((1'b1 == ap_CS_fsm_state3) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd2)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln18_1_fu_400_p2 == 1'd1) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd1)))) begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_new_1_phi_fu_203_p6 = 32'd0;
    end else begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_new_1_phi_fu_203_p6 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((1'b1 == ap_condition_168)) begin
            ap_phi_mux_reducer_circuit_levels_num_items_1_new_2_phi_fu_242_p4 = empty_reg_177;
        end else if ((1'b1 == ap_condition_163)) begin
            ap_phi_mux_reducer_circuit_levels_num_items_1_new_2_phi_fu_242_p4 = ap_phi_mux_reducer_circuit_levels_num_items_1_new_1_phi_fu_203_p6;
        end else begin
            ap_phi_mux_reducer_circuit_levels_num_items_1_new_2_phi_fu_242_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_reducer_circuit_levels_num_items_1_new_2_phi_fu_242_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln34_fu_254_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_reducer_circuit_levels_buffer_value_0_1_load = value_r;
    end else begin
        ap_sig_allocacmp_reducer_circuit_levels_buffer_value_0_1_load = reducer_circuit_levels_buffer_value_0_1_i;
    end
end

always @ (*) begin
    if (((reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd4294967295) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_reducer_circuit_levels_valid_0_load = 1'd0;
    end else begin
        ap_sig_allocacmp_reducer_circuit_levels_valid_0_load = reducer_circuit_levels_valid_0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd0))) begin
        ap_sig_allocacmp_reducer_circuit_levels_valid_1_load = 1'd0;
    end else begin
        ap_sig_allocacmp_reducer_circuit_levels_valid_1_load = reducer_circuit_levels_valid_1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ((ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) | ((reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1) | ((icmp_ln18_1_fu_400_p2 == 1'd1) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd1)))))) begin
        out_r_ap_vld = 1'b1;
    end else begin
        out_r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln34_fu_254_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        reducer_circuit_levels_buffer_label_0_0_o = label_r;
    end else begin
        reducer_circuit_levels_buffer_label_0_0_o = reducer_circuit_levels_buffer_label_0_0_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (trunc_ln34_fu_254_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        reducer_circuit_levels_buffer_label_0_0_o_ap_vld = 1'b1;
    end else begin
        reducer_circuit_levels_buffer_label_0_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (trunc_ln34_1_fu_348_p1 == 1'd0))) begin
        reducer_circuit_levels_buffer_label_1_0_o = level_out_118_32_reg_104;
    end else begin
        reducer_circuit_levels_buffer_label_1_0_o = reducer_circuit_levels_buffer_label_1_0_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (trunc_ln34_1_fu_348_p1 == 1'd0))) begin
        reducer_circuit_levels_buffer_label_1_0_o_ap_vld = 1'b1;
    end else begin
        reducer_circuit_levels_buffer_label_1_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln34_fu_254_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        reducer_circuit_levels_buffer_value_0_0_o = value_r;
    end else begin
        reducer_circuit_levels_buffer_value_0_0_o = reducer_circuit_levels_buffer_value_0_0_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (trunc_ln34_fu_254_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        reducer_circuit_levels_buffer_value_0_0_o_ap_vld = 1'b1;
    end else begin
        reducer_circuit_levels_buffer_value_0_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln34_fu_254_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        reducer_circuit_levels_buffer_value_0_1_o = value_r;
    end else begin
        reducer_circuit_levels_buffer_value_0_1_o = reducer_circuit_levels_buffer_value_0_1_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (trunc_ln34_fu_254_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        reducer_circuit_levels_buffer_value_0_1_o_ap_vld = 1'b1;
    end else begin
        reducer_circuit_levels_buffer_value_0_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (trunc_ln34_1_fu_348_p1 == 1'd0))) begin
        reducer_circuit_levels_buffer_value_1_0_o = level_out_017_31_reg_119;
    end else begin
        reducer_circuit_levels_buffer_value_1_0_o = reducer_circuit_levels_buffer_value_1_0_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (trunc_ln34_1_fu_348_p1 == 1'd0))) begin
        reducer_circuit_levels_buffer_value_1_0_o_ap_vld = 1'b1;
    end else begin
        reducer_circuit_levels_buffer_value_1_0_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (trunc_ln34_1_fu_348_p1 == 1'd1))) begin
        reducer_circuit_levels_buffer_value_1_1_o = level_out_017_31_reg_119;
    end else begin
        reducer_circuit_levels_buffer_value_1_1_o = reducer_circuit_levels_buffer_value_1_1_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (trunc_ln34_1_fu_348_p1 == 1'd1))) begin
        reducer_circuit_levels_buffer_value_1_1_o_ap_vld = 1'b1;
    end else begin
        reducer_circuit_levels_buffer_value_1_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd0) & (icmp_ln18_fu_316_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) | ((reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd1) | ((icmp_ln18_fu_316_p2 == 1'd1) & (reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0)))))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln35_1_fu_369_p2 = (reducer_circuit_levels_num_items_1 + 32'd1);

assign add_ln35_fu_286_p2 = (reducer_circuit_levels_num_items_0 + 32'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_condition_102 = ((~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd0) & ~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd1)) | (~(reducer_circuit_levels_num_items_0_load_load_fu_250_p1 == 32'd1) & (reducer_circuit_levels_valid_0_load_load_fu_344_p1 == 1'd1) & (icmp_ln18_fu_316_p2 == 1'd0)));
end

always @ (*) begin
    ap_condition_153 = ((~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & ~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd1) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1)) | (~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1) & (icmp_ln18_1_fu_400_p2 == 1'd0)));
end

always @ (*) begin
    ap_condition_163 = ((ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) | ((reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd1) | ((icmp_ln18_1_fu_400_p2 == 1'd1) & (ap_phi_mux_empty_phi_fu_180_p4 == 32'd1))));
end

always @ (*) begin
    ap_condition_168 = ((~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd0) & (icmp_ln18_1_fu_400_p2 == 1'd0)) | (~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd2) & ~(ap_phi_mux_empty_phi_fu_180_p4 == 32'd1) & (reducer_circuit_levels_valid_1_load_load_fu_429_p1 == 1'd0)));
end

assign ap_phi_mux_empty_phi_fu_180_p4 = empty_reg_177;

assign icmp_ln18_1_fu_400_p2 = (($signed(tmp_1_fu_390_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);

assign icmp_ln18_fu_316_p2 = (($signed(tmp_fu_306_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);

assign level_out_value_fu_338_p2 = (ap_sig_allocacmp_reducer_circuit_levels_buffer_value_0_1_load + ap_phi_mux_level_out_value_1_phi_fu_70_p4);

assign out_data_value_fu_422_p2 = (reducer_circuit_levels_buffer_value_1_1_i + out_data_value_1_reg_167);

assign out_r = ap_phi_mux_out_data_0_35_phi_fu_217_p6;

assign reducer_circuit_levels_num_items_0_load_load_fu_250_p1 = reducer_circuit_levels_num_items_0;

assign reducer_circuit_levels_valid_0_load_load_fu_344_p1 = ap_sig_allocacmp_reducer_circuit_levels_valid_0_load;

assign reducer_circuit_levels_valid_1_load_load_fu_429_p1 = ap_sig_allocacmp_reducer_circuit_levels_valid_1_load;

assign tmp_1_fu_390_p4 = {{reducer_circuit_levels_buffer_label_1_0_i[31:1]}};

assign tmp_fu_306_p4 = {{ap_phi_mux_level_out_label_phi_fu_81_p4[31:1]}};

assign trunc_ln34_1_fu_348_p1 = reducer_circuit_levels_num_items_1[0:0];

assign trunc_ln34_fu_254_p1 = reducer_circuit_levels_num_items_0[0:0];

endmodule //accelerate_reduce

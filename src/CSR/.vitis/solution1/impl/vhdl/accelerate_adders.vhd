-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity accelerate_adders is
port (
    ap_ready : OUT STD_LOGIC;
    multiplier_outs_0 : IN STD_LOGIC_VECTOR (31 downto 0);
    sum_i : IN STD_LOGIC_VECTOR (31 downto 0);
    sum_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    sum_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of accelerate_adders is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal add_ln29_fu_20_p2 : STD_LOGIC_VECTOR (31 downto 0);


begin



    add_ln29_fu_20_p2 <= std_logic_vector(unsigned(sum_i) + unsigned(multiplier_outs_0));
    ap_ready <= ap_const_logic_1;

    sum_o_assign_proc : process(sum_i, add_ln29_fu_20_p2)
    begin
        sum_o <= add_ln29_fu_20_p2;
    end process;

    sum_o_ap_vld <= ap_const_logic_1;
end behav;

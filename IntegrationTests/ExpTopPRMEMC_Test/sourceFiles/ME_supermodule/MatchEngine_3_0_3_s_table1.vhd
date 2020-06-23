-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatchEngine_3_0_3_s_table1_rom is 
    generic(
             DWIDTH     : integer := 1; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of MatchEngine_3_0_3_s_table1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 1=> "0", 2 to 3=> "1", 4 to 9=> "0", 10 to 11=> "1", 12 to 17=> "0", 18 to 19=> "1", 20 to 24=> "0", 
    25 to 27=> "1", 28 to 32=> "0", 33 to 35=> "1", 36 to 40=> "0", 41 to 43=> "1", 44 to 48=> "0", 49 to 51=> "1", 
    52 to 55=> "0", 56 to 59=> "1", 60 to 63=> "0", 64 to 67=> "1", 68 to 71=> "0", 72 to 75=> "1", 76 to 79=> "0", 
    80 to 83=> "1", 84 to 87=> "0", 88 to 90=> "1", 91 => "0", 92 => "1", 93 to 95=> "0", 96 to 98=> "1", 
    99 => "0", 100 => "1", 101 to 103=> "0", 104 to 106=> "1", 107 => "0", 108 => "1", 109 to 111=> "0", 
    112 to 114=> "1", 115 => "0", 116 => "1", 117 to 119=> "0", 120 to 121=> "1", 122 to 123=> "0", 124 to 125=> "1", 
    126 to 127=> "0", 128 to 129=> "1", 130 to 131=> "0", 132 to 133=> "1", 134 to 135=> "0", 136 to 137=> "1", 138 to 139=> "0", 
    140 to 141=> "1", 142 to 143=> "0", 144 to 145=> "1", 146 to 147=> "0", 148 to 149=> "1", 150 to 151=> "0", 152 => "1", 
    153 to 155=> "0", 156 to 158=> "1", 159 => "0", 160 => "1", 161 to 163=> "0", 164 to 166=> "1", 167 => "0", 
    168 => "1", 169 to 171=> "0", 172 to 174=> "1", 175 => "0", 176 => "1", 177 to 179=> "0", 180 to 182=> "1", 
    183 to 187=> "0", 188 to 191=> "1", 192 to 195=> "0", 196 to 199=> "1", 200 to 203=> "0", 204 to 207=> "1", 208 to 211=> "0", 
    212 to 215=> "1", 216 to 220=> "0", 221 to 223=> "1", 224 to 228=> "0", 229 to 231=> "1", 232 to 236=> "0", 237 to 239=> "1", 
    240 to 244=> "0", 245 to 247=> "1", 248 to 253=> "0", 254 to 255=> "1" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity MatchEngine_3_0_3_s_table1 is
    generic (
        DataWidth : INTEGER := 1;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of MatchEngine_3_0_3_s_table1 is
    component MatchEngine_3_0_3_s_table1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    MatchEngine_3_0_3_s_table1_rom_U :  component MatchEngine_3_0_3_s_table1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;



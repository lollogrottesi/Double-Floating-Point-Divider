----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.08.2020 17:36:20
-- Design Name: 
-- Module Name: divider_Tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider_Tb is
--  Port ( );
end divider_Tb;

architecture Behavioral of divider_Tb is

component Double_Floating_Point_Divider is
 port (   FP_a: in std_logic_vector(63 downto 0);
          FP_b: in std_logic_vector(63 downto 0);
          FP_z: out std_logic_vector(63 downto 0));
end component;

signal a, b, z: std_logic_vector(63 downto 0);
begin
dut: Double_Floating_Point_Divider port map(a, b, z);
    process
    begin
        a <= x"bf80000000000000";
        b <= x"0000000000000000";
        wait for 10 ns;
        b <= x"3f99999a00000000";
        a <= x"3fc0000000000000";
        wait for 10 ns;
        a <= x"4020000000000000";
        b <= x"3fe6666600000000";
        wait for 10 ns;
        a <= x"4086666600000000";
        b <= x"400f5c2900000000";
        wait for 10 ns;
        a <= x"4140000000000000";
        b <= x"4000000000000000";
        wait for 10 ns;
        a <= x"4140000000000000";
        b <= x"c019999a00000000";
        wait for 10 ns;
        a <= x"c019999a00000000";
        b <= x"c019999a00000000";
        wait for 10 ns;
        a <= x"c019999a00000000";
        b <= x"4020000000000000";
        wait for 10 ns;
        wait;
    end process;


end Behavioral;

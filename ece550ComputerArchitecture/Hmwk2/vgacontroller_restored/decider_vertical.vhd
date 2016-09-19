library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity decider_vertical is
port(
	count_input : in std_logic_vector (9 downto 0);
	front_porch : out std_logic;
	sync_pulse  : out std_logic;
	back_porch  : out std_logic);
end entity;

architecture behavior of decider_vertical is

begin

front_porch <= '1' when ((count_input>="0111100000") and (count_input<="0111101010")) else
					'0';
				
sync_pulse  <= '1' when ((count_input>="0111101011") and (count_input<="0111101100")) else
					'0';
					
back_porch  <= '1' when ((count_input>="0111101101") and (count_input<="1000001011")) else
					'0';

end behavior;
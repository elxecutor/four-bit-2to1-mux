library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_mux2to1 is
	Port (
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		sel : in STD_LOGIC;
		y : out STD_LOGIC_VECTOR(3 downto 0)
	);
end four_mux2to1;


architecture behaviour of four_mux2to1 is
	begin
		with sel select
		y(0) <= a(0) when '0',
		b(0) when '1',
		'0' when others;
		
		with sel select
		y(1) <= a(1) when '0',
		b(1) when '1',
		'0' when others;
		
		with sel select
		y(2) <= a(2) when '0',
		b(2) when '1',
		'0' when others;

		with sel select
		y(3) <= a(3) when '0',
		b(3) when '1',
		'0' when others;
		
end behaviour;
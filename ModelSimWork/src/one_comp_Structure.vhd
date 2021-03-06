library IEEE;
use IEEE.std_logic_1164.all;

entity one_comp_Structure is
	generic(N : integer := 32);
	port(i_A  : in std_logic_vector(N-1 downto 0);
	     o_F  : out std_logic_vector(N-1 downto 0));

end one_comp_Structure;

architecture structure of one_comp_Structure is

component invg

  port(i_A          : in std_logic;
       o_F          : out std_logic);

end component;

begin

-- We loop through and instantiate and connect N andg2 modules
G1: for i in 0 to N-1 generate
  not_i: invg 
    port map(i_A  => i_A(i),
  	     o_F  => o_F(i));
end generate;

  
end structure;
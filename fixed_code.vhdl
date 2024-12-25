```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity fixed_code is
    port (
        clk : in std_logic;
        data_in : in std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of fixed_code is
    signal temp : std_logic_vector(7 downto 0) := x"00";
begin
    process (clk, data_in) -- Added data_in to the sensitivity list
    begin
        if rising_edge(clk) then
            temp <= data_in;
            data_out <= temp;
        end if;
    end process;
end architecture;
```
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_signed.all;
USE ieee.numeric_std.all;
entity Assignment8 is

port( C : in std_logic;
		rx_in : in std_logic;
		LED : out std_logic_vector(7 downto 0);
		reset : in std_logic
		); 

end Assignment8;

architecture Behavioral of Assignment8 is
signal count: integer range 0 to 7;
signal tmp: integer range 0 to 7;
signal count16 : integer range 0 to 15;
signal rx_reg : std_logic_vector(7 downto 0);

signal m : integer range 0 to 651;

TYPE State_type IS (idle,start,stop); 
 -- Define the states
	SIGNAL state : State_Type; 
 --- count is the variable counting 8 cosecutive 0
 --- count16 is the variable counting 16 cycles of rx_clk
 --- tmp is the variable counting number of input bits taken
begin
    process(C)
    begin
    if(C'event and C='1') then
           m <= m + 1;
              if(m=651) then
              m <=0;
              end if;
    end if;
    end process;
-- LED display
	process (C)
	begin
	if (C'event and C='1') then
	if (reset='1') then
	state <= idle;
	count <=0;
	count16<=0;
	tmp<=0;
	
	else
	if( m=650) then
	case state is
		when idle =>	
			if(rx_in='0') then
				if( count = 7) then
					state <= start;
					count16<=0;
					count <= 0;
				else
				    count <= count+1;
				end if;
			else
			count <=0;
			end if;
		when start =>
			
			if( count16 = 15) then 
			tmp <= tmp +1;
			count16 <= 0;
			rx_reg <= rx_reg(6 downto 0)&rx_in;
				if(tmp=7) then
					state <= stop;
					count16 <= 0;
					count <= 0;
				end if;
			else
			count16 <= count16 +1;
			end if;
		when stop => 
			count16 <= count16+1;
			if( count16 = 15) then
			 state <= idle;
			 count <= 0;
			 
			end if;
	
	end case;
	end if;	
	end if;
	end if;
   end process;
LED <= rx_reg;
	
end Behavioral;


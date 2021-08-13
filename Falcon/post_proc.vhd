-- Advanced RGH2 Code for X360ACE/DGX
-- 15432, GliGli, Alibaba, Octal450

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- main module

entity post_proc is
	Port (
		POST : in STD_LOGIC;
		CLK : in STD_LOGIC;
		to_slow : out STD_LOGIC := '0';
		to_do : out STD_LOGIC := '0';
		DBG : out STD_LOGIC := '0';
		RST : inout STD_LOGIC := 'Z'
	);
end post_proc;

architecture arch of post_proc is

constant R_LEN : integer := 2;
constant R_END : integer := 54250; -- 150 MHz: 27125, 300 MHz: 54250 (best)
constant T_END : integer := R_END + 2;

constant post_rgh : integer := 13;
constant post_max : integer := 15;
signal cnt : integer range 0 to T_END := 0;
signal post_cnt : integer range 0 to post_max := 0;

begin

-- post counter
process (POST) is
begin
	if (POST'event) then
		if (RST = '0') then
			post_cnt <= 0;
		else
			if (post_cnt < post_max) then
				post_cnt <= post_cnt + 1;
			end if;
		end if;
	end if;
	
	DBG <= POST;
end process;

-- timing counter + reset
process (CLK) is
begin
	--if (rising_edge(CLK)) then -- 150 MHz
	if (CLK'event) then -- 300 MHz (best)
		if (post_cnt = post_rgh or (post_cnt = post_rgh - 1 and POST = '1')) then
			if (cnt < T_END) then
				cnt <= cnt + 1;
			end if;
		else
			cnt <= 0;
		end if;
		
		if (cnt >= R_END - R_LEN and cnt < R_END) then
			RST <= '0';
		else
			if (cnt = R_END) then
				RST <= '1';
			else
				RST <= 'Z';
			end if;
		end if;
	end if;
end process;

-- slowdown
process (post_cnt) is
begin
	if (post_cnt = post_rgh - 1) then
		to_slow <= '1';
	else
		to_slow <= '0';
	end if;
	
	if (post_cnt <= 1 or post_cnt = post_rgh - 1) then -- clkref fix for XSB boards
		to_do <= '1';
	else
		to_do <= '0';
	end if;
end process;

end arch;

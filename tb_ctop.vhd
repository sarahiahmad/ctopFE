-------------------------------------------------------------------
-- Using as place/holder/dummy data code not is use
-										
-------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.my_package.all;
-------------------------------------------------------------------
entity test_CTOP is
end test_CTOP;
-------------------------------------------------------------------
architecture bench of test_CTOP is

component CTOP2 is
port(	TRC:		in std_logic;
	MR:		in std_logic;
	TBRL:		in std_logic;
	SFD:		in std_logic;
	CRL:		in std_logic;
	RRC:		in std_logic;
	RRI:		in std_logic;
	RRD:		in std_logic;					
	DRR:		in std_logic;
	CLS2:		in std_logic;
	CLS1:		in std_logic;
	PI:		in std_logic;
	EPE:		in std_logic;
	SBS:		in std_logic;
	TBR:		in std_logic_vector(7 downto 0);
	TRE:		out std_logic;
	TBRE:		out std_logic;
	TRO:		out std_logic;
	OE:		out std_logic;				
	PE:		out std_logic;
	FE:		out std_logic;
	DR:		out std_logic;
	RBR:		out std_logic_vector(7 downto 0)
);
end component;

signal T_CLK,T_MR,T_TBRL,T_SFD,T_CRL,T_RRD,T_DRR: std_logic;
signal T_CLS2,T_CLS1,T_PI,T_EPE,T_SBS: std_logic;
signal T_TBR: std_logic_vector(7 downto 0);
signal T_RBR: std_logic_vector(7 downto 0);
signal T_TRE,T_TBRE,T_data,T_OE,T_PE,T_FE,T_DR: std_logic;

begin
	
Unit: CTOP2 port map(   T_CLK,T_MR,T_TBRL,T_SFD,T_CRL,T_CLK,T_data,
			    T_RRD,T_DRR,T_CLS2,T_CLS1,T_PI,T_EPE,T_SBS,
			    T_TBR,T_TRE,T_TBRE,T_data,T_OE,T_PE,T_FE,
			    T_DR,T_RBR);

clk_sig: process
begin
	T_CLK <='1';
	wait for 5 ns;
	T_CLK <= '0';
	wait for 5 ns;
end process;

process
begin
	T_MR <= '1';			-- initialization...
	T_CRL <= '1';
	T_CLS2 <= '1';
	T_CLS1 <= '1';
	T_PI <=	'0';
	T_EPE <= '1';
	T_SBS <= '1';
	T_DRR <= '1';
	T_RRD <= '0';
	T_SFD <= '0';
	T_TBR <= "10011101"; 
	T_TBRL <= '1';
	wait for 50 ns;
	
	T_CRL <= '0';			-- load ctrl word here
	wait for 50 ns;
	
	T_MR <= '0';			-- reset release here
	wait for 50 ns;
	
	T_TBRL <= '0';   		-- load transmit word	
	wait for 200 ns;
	
	T_TBRL <= '1';
	wait for 500 ns;
	
	T_TBR <= "10100010";
	wait for 100 ns;
	
	T_TBRL <= '0';   		-- load transmit word	
	wait for 4000 ns;		-- set SFD to high level
	
	T_DRR <= '0';
	wait for 100 ns;
	T_DRR <= '1';
	
	wait for 200 ns;
	T_SFD <= '1';
	
	wait for 50 ns;
	T_RRD <= '1';			
	
	wait for 300 ns;
	T_RRD <= '0';
	wait;
	
end process;
end bench;
-------------------------------------------------------------------
configuration CFG_TB of test_CTOP is
	for bench
	end for;
end CFG_TB;
-------------------------------------------------------------------
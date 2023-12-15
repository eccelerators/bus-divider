-- Copyright (C) 2023 Eccelerators GmbH
-- 
-- This code was generated by:
--
-- HxS Compiler 1.0.19-10671667
-- VHDL Extension for HxS 1.0.21-b962bd24
-- 
-- Further information at https://eccelerators.com/hxs
-- 
-- Changes to this file may cause incorrect behavior and will be lost if the
-- code is regenerated.
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

package BusDividerIfcPackage is

	type T_BusDividerIfcAvalonDown is
	record
		Address : std_logic_vector(8 downto 0);
		ByteEnable : std_logic_vector(3 downto 0);
		Write : std_logic;
		WriteData : std_logic_vector(31 downto 0);
		Read : std_logic;
	end record;
	
	type T_BusDividerIfcAvalonUp is
	record
		ReadData : std_logic_vector(31 downto 0);
		WaitRequest : std_logic;
	end record;
	
	type T_BusDividerIfcTrace is
	record
		AvalonDown : T_BusDividerIfcAvalonDown;
		AvalonUp : T_BusDividerIfcAvalonUp;
		UnoccupiedAck : std_logic;
		TimeoutAck : std_logic;
	end record;
	
	type T_BusDividerIfcBusDividerBlkDown is
	record
		BusDelegate0Address : std_logic_vector(8 downto 0);
		BusDelegate0ByteEnable : std_logic_vector(3 downto 0);
		BusDelegate0Write : std_logic;
		BusDelegate0WriteData : std_logic_vector(31 downto 0);
		BusDelegate0Read : std_logic;
		BusDelegate1Address : std_logic_vector(8 downto 0);
		BusDelegate1ByteEnable : std_logic_vector(3 downto 0);
		BusDelegate1Write : std_logic;
		BusDelegate1WriteData : std_logic_vector(31 downto 0);
		BusDelegate1Read : std_logic;
	end record;
	
	type T_BusDividerIfcBusDividerBlkUp is
	record
		BusDelegate0ReadData: std_logic_vector(31 downto 0);
		BusDelegate0WaitRequest : std_logic;
		BusDelegate1ReadData: std_logic_vector(31 downto 0);
		BusDelegate1WaitRequest : std_logic;
	end record;
	
	constant BUSDIVIDERBLK_BASE_ADDRESS : std_logic_vector(8 downto 0) := "000000000";
	constant BUSDIVIDERBLK_SIZE : std_logic_vector(9 downto 0) := "1000000000";
	
	constant BUSDELEGATE0_BASE_ADDRESS : std_logic_vector(8 downto 0) := std_logic_vector("000000000" + unsigned(BUSDIVIDERBLK_BASE_ADDRESS));
	constant BUSDELEGATE0_SIZE : std_logic_vector(9 downto 0) := "0100000000";
	
	constant BUSDELEGATE1_BASE_ADDRESS : std_logic_vector(8 downto 0) := std_logic_vector("100000000" + unsigned(BUSDIVIDERBLK_BASE_ADDRESS));
	constant BUSDELEGATE1_SIZE : std_logic_vector(9 downto 0) := "0100000000";
	
end;

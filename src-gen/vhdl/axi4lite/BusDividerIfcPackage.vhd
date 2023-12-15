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

	type T_BusDividerIfcAxi4LiteDown is
	record
		AWVALID : std_logic;
		AWADDR : std_logic_vector(8 downto 0);
		AWPROT : std_logic_vector(2 downto 0);
		WVALID : std_logic;
		WDATA : std_logic_vector(31 downto 0);
		WSTRB : std_logic_vector(3 downto 0);
		BREADY : std_logic;
		ARVALID : std_logic;
		ARADDR : std_logic_vector(8 downto 0);
		ARPROT : std_logic_vector(2 downto 0);
		RREADY : std_logic;
	end record;
	
	type T_BusDividerIfcAxi4LiteUp is
	record
		AWREADY : std_logic;
		WREADY : std_logic;
		BVALID : std_logic;
		BRESP : std_logic_vector(1 downto 0);
		ARREADY : std_logic;
		RVALID : std_logic;
		RDATA : std_logic_vector(31 downto 0);
		RRESP : std_logic_vector(1 downto 0);
	end record;
	
	type T_BusDividerIfcAxi4LiteAccess is
	record
		WritePrivileged : std_logic;
		WriteSecure : std_logic;
		WriteInstruction : std_logic;
		ReadPrivileged : std_logic;
		ReadSecure : std_logic;
		ReadInstruction : std_logic;
	end record;
	
	type T_BusDividerIfcTrace is
	record
		Axi4LiteDown : T_BusDividerIfcAxi4LiteDown;
		Axi4LiteUp : T_BusDividerIfcAxi4LiteUp;
		Axi4LiteAccess : T_BusDividerIfcAxi4LiteAccess;
		UnoccupiedAck : std_logic;
		TimeoutAck : std_logic;
	end record;
	
	type T_BusDividerIfcBusDividerBlkDown is
	record
		BusDelegate0AWVALID : std_logic;
		BusDelegate0AWADDR : std_logic_vector(8 downto 0);
		BusDelegate0AWPROT : std_logic_vector(2 downto 0);
		BusDelegate0WVALID : std_logic;
		BusDelegate0WDATA : std_logic_vector(31 downto 0);
		BusDelegate0WSTRB : std_logic_vector(3 downto 0);
		BusDelegate0BREADY : std_logic;
		BusDelegate0ARVALID : std_logic;
		BusDelegate0ARADDR : std_logic_vector(8 downto 0);
		BusDelegate0ARPROT : std_logic_vector(2 downto 0);
		BusDelegate0RREADY : std_logic;
		BusDelegate1AWVALID : std_logic;
		BusDelegate1AWADDR : std_logic_vector(8 downto 0);
		BusDelegate1AWPROT : std_logic_vector(2 downto 0);
		BusDelegate1WVALID : std_logic;
		BusDelegate1WDATA : std_logic_vector(31 downto 0);
		BusDelegate1WSTRB : std_logic_vector(3 downto 0);
		BusDelegate1BREADY : std_logic;
		BusDelegate1ARVALID : std_logic;
		BusDelegate1ARADDR : std_logic_vector(8 downto 0);
		BusDelegate1ARPROT : std_logic_vector(2 downto 0);
		BusDelegate1RREADY : std_logic;
	end record;
	
	type T_BusDividerIfcBusDividerBlkUp is
	record
		BusDelegate0AWREADY : std_logic;
		BusDelegate0WREADY : std_logic;
		BusDelegate0BVALID : std_logic;
		BusDelegate0BRESP : std_logic_vector(1 downto 0);
		BusDelegate0ARREADY : std_logic;
		BusDelegate0RVALID : std_logic;
		BusDelegate0RDATA : std_logic_vector(31 downto 0);
		BusDelegate0RRESP : std_logic_vector(1 downto 0);
		BusDelegate1AWREADY : std_logic;
		BusDelegate1WREADY : std_logic;
		BusDelegate1BVALID : std_logic;
		BusDelegate1BRESP : std_logic_vector(1 downto 0);
		BusDelegate1ARREADY : std_logic;
		BusDelegate1RVALID : std_logic;
		BusDelegate1RDATA : std_logic_vector(31 downto 0);
		BusDelegate1RRESP : std_logic_vector(1 downto 0);
	end record;
	
	constant BUSDIVIDERBLK_BASE_ADDRESS : std_logic_vector(8 downto 0) := "000000000";
	constant BUSDIVIDERBLK_SIZE : std_logic_vector(9 downto 0) := "1000000000";
	
	constant BUSDELEGATE0_BASE_ADDRESS : std_logic_vector(8 downto 0) := std_logic_vector("000000000" + unsigned(BUSDIVIDERBLK_BASE_ADDRESS));
	constant BUSDELEGATE0_SIZE : std_logic_vector(9 downto 0) := "0100000000";
	
	constant BUSDELEGATE1_BASE_ADDRESS : std_logic_vector(8 downto 0) := std_logic_vector("100000000" + unsigned(BUSDIVIDERBLK_BASE_ADDRESS));
	constant BUSDELEGATE1_SIZE : std_logic_vector(9 downto 0) := "0100000000";
	
end;
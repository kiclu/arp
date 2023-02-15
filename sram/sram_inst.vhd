sram_inst : sram PORT MAP (
		address	 => address_sig,
		byteena	 => byteena_sig,
		clock	 => clock_sig,
		data	 => data_sig,
		rden	 => rden_sig,
		wren	 => wren_sig,
		q	 => q_sig
	);

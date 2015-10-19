{application, swh,
	[
		{description, "Sharp Wolf Hero Game Server!"},
		{vsn, "0.0.1"},
		
		{modules, 	[
						swh_config,
						
						swh_networking,
						
						swh_mnesia,
		
						swh_misc,
						swh_tools,
							
						swh_sup,
						swh
					]
		},
		
		{registered, [swh_sup]},
		{applications, [kernel, stdlib, sasl]},
		{mod, {swh, []}},
		{env,	[
					{tcp_listeners, [{"127.0.0.1", 59121}]},
					{acceptor_num, 20},
					{log_path, "swh.log"},
					{log_level, 6},
					{config_path, "../config"},
					{test_mode, true},
					{profiling_enabled, true}
				]
		}
	]
}.
return {
	cmd = { "clangd", "--clang-tidy" },
	settings = {
		C = {
			diagnostics = {
				suppress = {
					"legal/copyright",
				},
			},
			init_options = {
				fallbackFlags = { "-std=c11" },
			},
		},
	},
}

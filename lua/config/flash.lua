require("flash").setup{

	keys = {
		{"zk", mode = {"n", "x", "o"}, function() require("flash").jump() end, desc="Flash"},
}

}

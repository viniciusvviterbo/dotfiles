lvim.builtin.which_key.mappings["t"] = {
  name = "Terminal",
  n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
  u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
  t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
  p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
  f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
  v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
}


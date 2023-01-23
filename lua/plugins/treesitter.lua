require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "c", 
    "lua", 
    "rust",
    "python",
    "java",
    "dart",
    "javascript",
    "bash",
    "c_sharp",
    "cpp",
    "css",
    "json",
    "json5",
    "html",
    "php",
    "go",
    "yaml",
    "vim",
  },

  sync_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
    use_languagetree = true,
  },
}

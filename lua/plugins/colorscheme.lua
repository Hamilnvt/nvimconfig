---@diagnostic disable: trailing-space
local theme = "bamboo"

if theme == "tokyonight" then
  return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        options = {
          style = "night"
        }
      })
      vim.cmd([[colorscheme tokyonight]])
    end
  }
end

-- vedi :help highlight 
if theme == "bamboo" then
return {
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('bamboo').setup {
      util = require('bamboo.util'),
      style = "multiplex",
      dim_inactive = false, -- Dim inactive windows/buffers
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- Change code style ---
      -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
      -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
      code_style = {
        comments = {},
        conditionals = {},
          keywords = { },
          functions = {},
          namespaces = { italic = true },
          parameters = { italic = true },
          strings = {},
          variables = {},
        },

        --TODO:
        -- > lualine (da fare dentro al file di bamboo oppure ne creo uno nuovo)
        --
        colors = {
          --normal_bg = '#12372A',
          --normal_bg = '#081A14',
          normal_bg = '#0E2A20',

          --normal_fg = '#ADBC9F',
          --normal_fg =  '#FBFADA',
          normal_fg =  '#ECE1C0',

          visual_bg = '#314D2C',
          search_green = '#81AF58',

          comment = '#546354',
          --comment = '#667A67',
          --comment_green = '#88A785',
          --comment = '#F9C7CF',

          --cursorLineNr = '#FBFADA',

          string = '#EEA1AE',
          --string = '#AE9FBC',
          --string = '#F1798D',
          --string = '#F9C7CF',
          char_slash = '#D05EA8',

          --number = '#4AC260',
          number = '#6ACD7C',
          constant = "#CDF0EA",

          linkino = '#69D1D7',

          --conditional = '#B48ADE',
          --conditional = '#659A30',
          --conditional = '#57CC99',
          --conditional = '#70E000',
          --conditional = '#D4D700',
          --conditional = '#FFD166',
          --conditional = '#E6BC5C',
          conditional = '#CFA953',

          --operator = '#D7C1ED',
          --operator = '#7C96DE',
          --operator = '#7C96DE',
          operator = '$normal_fg',
          
          statement = '#4DD732',

          error_msg = '#EB598C',
          warning_msg = '#CFA953',

          --function_ = '#677DB7',
          --function_ = '#7C96DE',
          --function_ = '#66AACC',
          --function_ = '#C0F8D1',
          --function_ = '#0FC74C',
          --function_ = '#448E5D',
          --function_ = '#50A56C',
          function_ = '#83A951',
          --function_ = '#67D78C',
          --function_ = '#7FAD8F',

          --keyword = '#317539',
          --keyword = '#659A30',
          --keyword = '#99BE79',
          --keyword = '#D4D700',
          keyword = '#B2B500',

          type = '#60CC9D',
          --type = '#81CF72',
          storageclass = '#8DB600',
          
          --preprocessor = '#E477F7',
          preprocessor = '#36827F',
        },

        highlights = {
          Normal       = { fg = '$normal_fg' , bg = '$normal_bg'},
          NormalNC     = { fg = '$normal_fg', bg = '$normal_bg' },
          NormalFloat  = { link = 'Normal' },
          FloatBorder  = { link = 'Normal' }, 

          Visual       = { bg = '$visual_bg' },

          Search = { fg = '$normal_bg', bg = '$search_green' },
          CurSearch = { fg = '$search_green', bg = '$visual_bg' },
          IncSearch = { link = 'CurSearch' },
          Substitute = { fg = '$normal_bg', bg = '$search_green' },
          --Search = { fg = '$visual_bg', bg = '$search_green' },
          --CurSearch = { fg = '$visual_bg', bg = '$normal_fg' },
          --IncSearch = { link = 'CurSearch' },
          --Substitute = { fg = '$normal_bg', bg = '$search_green' },

          ['@attribute'] = { link = 'Normal' },

          Comment      = { fg = '$comment' },
          ['@comment'] = { fg = '$comment' },
          
          --Cursor       = { gui = 'reverse' },
          CursorLine   = { bg = '$normal_bg' },
          CursorLineNr = { fg = '$number' , guifg = "bold" },
          LineNr       = { fg = '$comment' },
          Folded       = { bg = '$normal_fg', fg = '$normal_bg' },
          Terminal = { fg = '$normal_fg', bg = '$normal_bg' },
          EndOfBuffer  = { fg = '$normal_bg' },
          MatchParen   = { fg = '$type' },
          Special      = { fg = '$keyword' },

          -- html/css
          Tag          = { fg = '$preprocessor'},
          ['@tag']     = { link = 'Tag'},
          ['@string.html'] = { fg = '$type' },
          ['@string.special.url'] = { fg = '$linkino', underline = true },
          ['@tag.attribute'] = { fg = '$conditional' },
          ['@property.css'] = { link = '@tag.attribute' },
          
          -- È sparito un bordo
          ErrorMsg = { fg = '$error_msg', bold = true },
          WarningMsg = { fg = '$warning_msg', bold = true },
          ModeMsg      = { fg = '$normal_fg' },
          MsgArea      = { fg = '$normal_fg', bg = 'FF0000' },
          MsgSeparator = { bg = '$visual_bg' },
          MoreMsg      = { fg = '$search_green' },
          Question     = { fg = '$search_green' },

          Constant     = { fg = '$constant' }, -- (*) any constant
          ['@constant'] = { link = 'Constant' },
          ['@constant.builtin'] = { link = 'Constant' },
          ['@constant.macro'] = { link = 'Constant' },
          ['@lsp.mod.readonly'] = { link = 'Constant' },
          ['@lsp.type.builtinConstant'] = { link = 'Constant' },

          String       = { fg = '$string' }, --   a string constant: "this is a string"
          ['@string'] = { link = "String"},
          ['@string.escape'] = { fg = '$char_slash' },

          Character    = { fg = '$string' }, --   a character constant: 'c', '\n'
          ['@character'] = { link = 'Character' },
          ['@character.special'] = { link = 'Special' },

          Number       = { fg = '$number' }, --   a number constant: 234, 0xff
          Boolean      = { fg = '$constant' }, --   a boolean constant: true, false
          ['@boolean'] = { link = 'Boolean' },
          Float        = { fg = '$number' }, --   a floating point constant: 2.3e10
      
          Identifier   = { fg = '$normal_fg' }, -- (*) any variable name
          ['@variable.member'] = { fg = '$normal_fg' },
          ['@variable.builtin'] = { fg = '$normal_fg' },
          ['@module.builtin'] = { fg  = '$normal_fg' },

          Function     = { fg = '$function_' }, --   function name (also: methods for classes)
          ['@function'] = { link = 'Function' },
          -- chissà se tutti questi servono
          ['@function.method'] = { link = 'Function' },
          ['@function.method.call'] = { link = 'Function' },
          ['@lsp.type.method'] = { link = 'Function' },
          ['@lsp.typemod.method.defaultLibrary'] = { link = 'Function' },
          ['@lsp.typemod.method.readonly'] = { link = 'Function' },
          ['@lsp.typemod.method.static.rust'] = { link = 'Function' },
          -- sicuramente questo sì perché ha fatto cose
          ['@function.builtin'] = vim.tbl_extend('force', { link = 'Function' }, {}),

          ['@variable.parameter'] = vim.tbl_extend('force', { fg = '$normal_fg' }, {}),

          Statement    = { fg = "$statement" }, -- (*) Any statement
          Conditional  = { fg = '$conditional' }, --   if, then, else, endif, switch, etc.
          Repeat       = { fg = '$conditional' }, --   for, do, while, etc.
          Label        = { fg = '$conditional' }, --   case, default, etc.
          Operator     = { fg = '$operator' }, --   "sizeof", "+", "*", etc.

          Keyword      = { fg = '$keyword' }, --   any other keyword
          -- Exception      { }, --   try, catch, throw
      
          PreProc      = { fg = '$preprocessor'}, -- (*) Generic Preprocessor
          Include      = { fg = '$preprocessor', cterm = 'NONE'}, --   Preprocessor #include
          ['@keyword.import'] = { link = 'Include' },
          Define       = { fg = '$preprocessor', cterm = 'NONE' }, --   Preprocessor #define
          ['@keyword.directive.define'] = { link = 'Define' },
          Macro        = { fg = '$constant' }, --   Same as Define
          PreCondit    = { fg = '$preprocessor' }, --   Preprocessor #if, #else, #endif, etc.
          
          Type         = { fg = '$type' }, -- (*) int, long, char, etc.
          ['@type'] = { link = 'Type' },
          ['@type.builtin'] = { link = 'Type' },
          ['@type.definition'] = { link = 'Type' },
          ['@type.qualifier'] = { fg = '$storageclass', italic = true },
          TypeParameter= { link = 'Type' },
          StorageClass = { fg = '$storageclass' }, --   static, register, volatile, etc.
          ['@keyword.storage'] = { link = 'StorageClass' },
          Structure    = { fg = '$type' }, --   struct, union, enum, etc.
          Typedef      = { fg = '$type' }, --   A typedef

          Todo         = { fg = '$normal_fg', bg = '#FF0000' },
          --SpecialComment = { link = 'Todo' },

          TelescopeBorder = { fg = '$normal_fg' },
          TelescopePromptBorder = { fg = '$storageclass' },
          TelescopeResultsBorder = { link = 'TelescopePromptBorder' },
          TelescopePreviewBorder = { link = 'TelescopePromptBorder' },
          TelescopeMatching = { fg = '$number', bold = true },
          TelescopePromptPrefix = { fg = '$normal_fg' },
          TelescopeSelection = { bg = '$visual_bg' },
          TelescopeSelectionCaret = { fg = '$normal_fg', bg = '$visual_bg', bold = true },
        }
      }
      require('bamboo').load()
    end,
  } 
end

if theme == "leaf" then
  return {
    "daschw/leaf.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('leaf').setup {
        theme = 'dark'
      }
      require('leaf').load()
    end
  }
end

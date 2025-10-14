return {
 {
   "jiaoshijie/undotree",
   ---@module 'undotree.collector'
   ---@type UndoTreeCollector.Opts
   event = { "BufRead", "BufNewFile" },
   config = function()
     require "configs.undotree"
   end,
 },
}

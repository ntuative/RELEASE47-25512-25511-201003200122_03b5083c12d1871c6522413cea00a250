package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.window.IWindowContainer;
   
   public interface IMeMenuView
   {
       
      
      function init(param1:MeMenuWidget, param2:String) : void;
      
      function get window() : IWindowContainer;
      
      function dispose() : void;
   }
}

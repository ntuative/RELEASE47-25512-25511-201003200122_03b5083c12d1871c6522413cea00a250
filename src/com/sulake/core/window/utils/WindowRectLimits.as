package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_430:int = -2147483648;
      
      private var var_428:int = 2147483647;
      
      private var var_431:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_429:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_428;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_429 == int.MIN_VALUE && var_428 == int.MAX_VALUE && var_430 == int.MIN_VALUE && var_431 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_428 = param1;
         if(var_428 < int.MAX_VALUE && true && _target.width > var_428)
         {
            _target.width = var_428;
         }
      }
      
      public function setEmpty() : void
      {
         var_429 = int.MIN_VALUE;
         var_428 = int.MAX_VALUE;
         var_430 = int.MIN_VALUE;
         var_431 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_431 = param1;
         if(var_431 < int.MAX_VALUE && true && _target.height > var_431)
         {
            _target.height = var_431;
         }
      }
      
      public function get minHeight() : int
      {
         return var_430;
      }
      
      public function get minWidth() : int
      {
         return var_429;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_429 = var_429;
         _loc2_.var_428 = var_428;
         _loc2_.var_430 = var_430;
         _loc2_.var_431 = var_431;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_429 = param1;
         if(var_429 > int.MIN_VALUE && true && _target.width < var_429)
         {
            _target.width = var_429;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_430 = param1;
         if(var_430 > int.MIN_VALUE && true && _target.height < var_430)
         {
            _target.height = var_430;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_431;
      }
   }
}

package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2040:Number;
      
      private var var_593:Number = 0;
      
      private var var_2039:Number;
      
      private var var_592:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2040 = param1;
         var_2039 = param2;
      }
      
      public function update() : void
      {
         var_592 += var_2039;
         var_593 += var_592;
         if(var_593 > 0)
         {
            var_593 = 0;
            var_592 = var_2040 * -1 * var_592;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_592 = param1;
         var_593 = 0;
      }
      
      public function get location() : Number
      {
         return var_593;
      }
   }
}

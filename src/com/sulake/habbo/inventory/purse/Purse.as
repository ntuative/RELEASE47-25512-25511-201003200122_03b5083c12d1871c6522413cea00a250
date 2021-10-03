package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2078:Boolean = false;
      
      private var var_2075:int = 0;
      
      private var var_2079:int = 0;
      
      private var var_2077:int = 0;
      
      private var var_1591:int = 0;
      
      private var var_2076:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1591 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2075;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2078;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2078 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2075 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2079 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1591;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2077 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_2079;
      }
      
      public function get pixelBalance() : int
      {
         return var_2077;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2076 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_2076;
      }
   }
}

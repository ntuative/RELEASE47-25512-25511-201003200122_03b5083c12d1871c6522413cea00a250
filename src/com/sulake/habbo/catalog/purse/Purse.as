package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2079:int = 0;
      
      private var var_2209:int = 0;
      
      private var var_2208:int = 0;
      
      private var var_2076:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2209;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2209 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2079 = param1;
      }
      
      public function get credits() : int
      {
         return var_2208;
      }
      
      public function get clubDays() : int
      {
         return var_2079;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2076 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2208 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_2076;
      }
   }
}

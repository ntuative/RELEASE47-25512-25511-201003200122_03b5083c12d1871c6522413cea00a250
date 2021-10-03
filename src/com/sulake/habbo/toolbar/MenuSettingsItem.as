package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2052:Array;
      
      private var var_1879:String;
      
      private var var_2053:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1879 = param1;
         var_2052 = param2;
         var_2053 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1879;
      }
      
      public function get yieldList() : Array
      {
         return var_2052;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2053;
      }
   }
}

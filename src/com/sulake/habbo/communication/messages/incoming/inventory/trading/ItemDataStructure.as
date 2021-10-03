package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1084:String;
      
      private var var_1750:int;
      
      private var var_1996:int;
      
      private var var_1501:int;
      
      private var var_1998:int;
      
      private var _category:int;
      
      private var var_2372:int;
      
      private var var_2000:int;
      
      private var var_1997:int;
      
      private var var_1995:int;
      
      private var var_1999:int;
      
      private var var_1994:Boolean;
      
      private var var_1374:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1750 = param1;
         var_1084 = param2;
         var_1996 = param3;
         var_1995 = param4;
         _category = param5;
         var_1374 = param6;
         var_1501 = param7;
         var_1997 = param8;
         var_2000 = param9;
         var_1999 = param10;
         var_1998 = param11;
         var_1994 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1995;
      }
      
      public function get extra() : int
      {
         return var_1501;
      }
      
      public function get stuffData() : String
      {
         return var_1374;
      }
      
      public function get groupable() : Boolean
      {
         return var_1994;
      }
      
      public function get creationMonth() : int
      {
         return var_1999;
      }
      
      public function get roomItemID() : int
      {
         return var_1996;
      }
      
      public function get itemType() : String
      {
         return var_1084;
      }
      
      public function get itemID() : int
      {
         return var_1750;
      }
      
      public function get songID() : int
      {
         return var_1501;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1997;
      }
      
      public function get creationYear() : int
      {
         return var_1998;
      }
      
      public function get creationDay() : int
      {
         return var_2000;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}

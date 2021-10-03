package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1374:String;
      
      private var var_1084:String;
      
      private var var_2050:Boolean;
      
      private var var_1501:int;
      
      private var var_1855:int;
      
      private var var_2049:Boolean;
      
      private var var_1856:String = "";
      
      private var var_1859:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1292:int;
      
      private var var_1854:Boolean;
      
      private var var_1857:int = -1;
      
      private var var_1853:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1855 = param1;
         var_1084 = param2;
         _objId = param3;
         var_1292 = param4;
         _category = param5;
         var_1374 = param6;
         var_2050 = param7;
         var_1859 = param8;
         var_1854 = param9;
         var_2049 = param10;
         var_1853 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1856;
      }
      
      public function get extra() : int
      {
         return var_1501;
      }
      
      public function get classId() : int
      {
         return var_1292;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2049;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2050;
      }
      
      public function get stripId() : int
      {
         return var_1855;
      }
      
      public function get stuffData() : String
      {
         return var_1374;
      }
      
      public function get songId() : int
      {
         return var_1857;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1856 = param1;
         var_1501 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1084;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1853;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1854;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1859;
      }
   }
}

package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1855:int;
      
      private var var_1859:Boolean;
      
      private var var_1857:int;
      
      private var var_1374:String;
      
      private var var_1858:Boolean = false;
      
      private var var_1853:int;
      
      private var var_442:int;
      
      private var var_1084:String;
      
      private var var_1856:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1292:int;
      
      private var var_1854:Boolean;
      
      private var var_1860:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1855 = param1;
         var_1084 = param2;
         _objId = param3;
         var_1292 = param4;
         var_1374 = param5;
         var_1859 = param6;
         var_1854 = param7;
         var_1853 = param8;
         var_1856 = param9;
         var_1857 = param10;
         var_442 = -1;
      }
      
      public function get songId() : int
      {
         return var_1857;
      }
      
      public function get iconCallbackId() : int
      {
         return var_442;
      }
      
      public function get expiryTime() : int
      {
         return var_1853;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1860 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1858 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_442 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1854;
      }
      
      public function get slotId() : String
      {
         return var_1856;
      }
      
      public function get classId() : int
      {
         return var_1292;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1859;
      }
      
      public function get stuffData() : String
      {
         return var_1374;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1855;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1858;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1860;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1084;
      }
   }
}

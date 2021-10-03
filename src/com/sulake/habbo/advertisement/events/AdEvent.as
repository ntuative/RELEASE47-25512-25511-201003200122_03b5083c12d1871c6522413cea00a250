package com.sulake.habbo.advertisement.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class AdEvent extends Event
   {
      
      public static const const_440:String = "AE_INTERSTITIAL_SHOW";
      
      public static const const_407:String = "AE_ROOM_AD_SHOW";
      
      public static const const_477:String = "AE_INTERSTITIAL_COMPLETE";
       
      
      private var var_1405:String;
      
      private var _roomCategory:int;
      
      private var var_1779:BitmapData;
      
      private var _roomId:int;
      
      private var var_1778:BitmapData;
      
      private var _image:BitmapData;
      
      public function AdEvent(param1:String, param2:int = 0, param3:int = 0, param4:BitmapData = null, param5:String = "", param6:BitmapData = null, param7:BitmapData = null, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param8,param9);
         _image = param4;
         _roomId = param2;
         _roomCategory = param3;
         var_1405 = param5;
         var_1779 = param6;
         var_1778 = param7;
      }
      
      public function get method_11() : BitmapData
      {
         return var_1778;
      }
      
      public function get clickUrl() : String
      {
         return var_1405;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get adWarningL() : BitmapData
      {
         return var_1779;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}

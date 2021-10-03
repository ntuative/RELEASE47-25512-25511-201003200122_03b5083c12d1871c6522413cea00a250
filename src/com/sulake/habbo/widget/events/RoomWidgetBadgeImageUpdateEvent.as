package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_661:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2108:BitmapData;
      
      private var var_2024:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_661,param3,param4);
         var_2024 = param1;
         var_2108 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_2108;
      }
      
      public function get badgeID() : String
      {
         return var_2024;
      }
   }
}

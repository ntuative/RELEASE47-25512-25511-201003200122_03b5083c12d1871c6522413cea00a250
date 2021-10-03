package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_603:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_195:String;
      
      private var var_746:String;
      
      private var var_1587:String;
      
      private var var_152:int = -1;
      
      private var var_12:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_152 = param2;
         var_1587 = param3;
         var_195 = param4;
         var_746 = param5;
         var_12 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1587;
      }
      
      public function get colorHex() : String
      {
         return var_746;
      }
      
      public function get text() : String
      {
         return var_195;
      }
      
      public function get objectId() : int
      {
         return var_152;
      }
      
      public function get controller() : Boolean
      {
         return var_12;
      }
   }
}

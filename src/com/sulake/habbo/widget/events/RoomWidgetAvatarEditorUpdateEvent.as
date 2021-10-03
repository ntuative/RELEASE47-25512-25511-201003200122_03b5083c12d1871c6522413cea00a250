package com.sulake.habbo.widget.events
{
   public class RoomWidgetAvatarEditorUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_902:String = "RWAEUE_HIDE_CLUB_PROMO";
      
      public static const const_655:String = "RWUE_AVATAR_EDITOR_CLOSED";
      
      public static const const_1163:String = "RWAEUE_MODE_TRIAL";
      
      public static const const_968:String = "RWAEUE_MODE_FULL";
      
      public static const const_366:String = "RWAEUE_SHOW_CLUB_PROMO";
       
      
      private var var_2238:String;
      
      private var var_2237:String;
      
      public function RoomWidgetAvatarEditorUpdateEvent(param1:String, param2:String = "", param3:String = "RWAEUE_MODE_FULL", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_2238 = param2;
         var_2237 = param3;
      }
      
      public function get promoMode() : String
      {
         return var_2237;
      }
      
      public function get promoImageUrl() : String
      {
         return var_2238;
      }
   }
}

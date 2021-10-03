package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_559:String = "RWOCM_CLUB_MAIN";
      
      public static const const_551:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1662:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_551);
         var_1662 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1662;
      }
   }
}

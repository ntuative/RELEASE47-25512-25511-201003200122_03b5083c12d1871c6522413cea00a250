package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_802:String = "inventory_badges";
      
      public static const const_1157:String = "inventory_clothes";
      
      public static const const_1340:String = "inventory_furniture";
      
      public static const const_646:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_873:String = "inventory_effects";
       
      
      private var var_1775:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_646);
         var_1775 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1775;
      }
   }
}

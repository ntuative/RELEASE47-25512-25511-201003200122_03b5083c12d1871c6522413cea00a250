package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_958:String = "select_outfit";
       
      
      private var var_2067:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_958);
         var_2067 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2067;
      }
   }
}

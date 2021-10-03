package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_579:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1746:int;
      
      private var var_1745:int;
      
      private var var_2126:Boolean;
      
      private var var_1077:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_579);
         var_1745 = param1;
         var_1746 = param2;
         _color = param3;
         var_1077 = param4;
         var_2126 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1746;
      }
      
      public function get presetNumber() : int
      {
         return var_1745;
      }
      
      public function get brightness() : int
      {
         return var_1077;
      }
      
      public function get apply() : Boolean
      {
         return var_2126;
      }
   }
}

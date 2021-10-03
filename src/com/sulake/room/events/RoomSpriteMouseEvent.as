package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1627:Boolean = false;
      
      private var var_1624:Boolean = false;
      
      private var var_1924:String = "";
      
      private var _type:String = "";
      
      private var var_1626:Boolean = false;
      
      private var var_1923:Number = 0;
      
      private var var_1927:Number = 0;
      
      private var var_1926:Number = 0;
      
      private var var_1922:String = "";
      
      private var var_1925:Number = 0;
      
      private var var_1625:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1922 = param2;
         var_1924 = param3;
         var_1927 = param4;
         var_1926 = param5;
         var_1923 = param6;
         var_1925 = param7;
         var_1625 = param8;
         var_1624 = param9;
         var_1626 = param10;
         var_1627 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1625;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1627;
      }
      
      public function get localX() : Number
      {
         return var_1923;
      }
      
      public function get localY() : Number
      {
         return var_1925;
      }
      
      public function get canvasId() : String
      {
         return var_1922;
      }
      
      public function get altKey() : Boolean
      {
         return var_1624;
      }
      
      public function get spriteTag() : String
      {
         return var_1924;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1927;
      }
      
      public function get screenY() : Number
      {
         return var_1926;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1626;
      }
   }
}

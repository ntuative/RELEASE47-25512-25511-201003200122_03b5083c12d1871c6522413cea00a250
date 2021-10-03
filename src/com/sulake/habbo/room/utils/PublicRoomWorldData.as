package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1948:Number = 1;
      
      private var var_192:Number = 1;
      
      private var var_1687:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1687 = param1;
         var_192 = param2;
         var_1948 = param3;
      }
      
      public function get scale() : Number
      {
         return var_192;
      }
      
      public function get heightScale() : Number
      {
         return var_1948;
      }
   }
}

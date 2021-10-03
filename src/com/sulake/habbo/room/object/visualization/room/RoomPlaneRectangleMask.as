package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1816:Number = 0;
      
      private var var_1817:Number = 0;
      
      private var var_1814:Number = 0;
      
      private var var_1815:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1817 = param1;
         var_1814 = param2;
         var_1816 = param3;
         var_1815 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1817;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1816;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1814;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1815;
      }
   }
}

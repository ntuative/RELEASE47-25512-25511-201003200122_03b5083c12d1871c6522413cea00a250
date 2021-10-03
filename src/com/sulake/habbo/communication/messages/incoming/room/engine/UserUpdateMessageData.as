package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      private var var_232:int = 0;
      
      private var var_1654:int = 0;
      
      private var var_2141:Number = 0;
      
      private var var_2138:Number = 0;
      
      private var var_2139:Number = 0;
      
      private var var_2137:Number = 0;
      
      private var var_2140:Boolean = false;
      
      private var var_84:Number = 0;
      
      private var _id:int = 0;
      
      private var var_191:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_191 = [];
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_83 = param4;
         var_2137 = param5;
         var_232 = param6;
         var_1654 = param7;
         var_2141 = param8;
         var_2138 = param9;
         var_2139 = param10;
         var_2140 = param11;
         var_191 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get dir() : int
      {
         return var_232;
      }
      
      public function get localZ() : Number
      {
         return var_2137;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2140;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1654;
      }
      
      public function get targetX() : Number
      {
         return var_2141;
      }
      
      public function get targetY() : Number
      {
         return var_2138;
      }
      
      public function get targetZ() : Number
      {
         return var_2139;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get actions() : Array
      {
         return var_191.slice();
      }
   }
}

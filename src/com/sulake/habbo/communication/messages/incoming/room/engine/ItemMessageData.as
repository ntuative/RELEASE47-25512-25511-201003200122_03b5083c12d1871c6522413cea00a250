package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_83:Number = 0;
      
      private var _data:String = "";
      
      private var var_1501:int = 0;
      
      private var var_36:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2150:Boolean = false;
      
      private var var_2380:String = "";
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_232:String = "";
      
      private var var_2149:int = 0;
      
      private var var_2148:int = 0;
      
      private var var_1923:int = 0;
      
      private var var_1925:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2150 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2150;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_201)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_232;
      }
      
      public function get state() : int
      {
         return var_36;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_201)
         {
            var_1923 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_201)
         {
            var_2149 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_201)
         {
            var_2148 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_201)
         {
            var_232 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_201)
         {
            var_1925 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_201)
         {
            var_36 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1923;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_201)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2149;
      }
      
      public function get wallY() : Number
      {
         return var_2148;
      }
      
      public function get localY() : Number
      {
         return var_1925;
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_83 = param1;
         }
      }
   }
}

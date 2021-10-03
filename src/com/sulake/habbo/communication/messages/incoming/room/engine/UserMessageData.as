package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1386:String = "F";
      
      public static const const_992:String = "M";
       
      
      private var var_84:Number = 0;
      
      private var var_570:String = "";
      
      private var var_2124:int = 0;
      
      private var var_1917:String = "";
      
      private var var_1919:int = 0;
      
      private var var_1918:int = 0;
      
      private var var_1920:String = "";
      
      private var var_1309:String = "";
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_232:int = 0;
      
      private var var_2123:String = "";
      
      private var _name:String = "";
      
      private var var_1916:int = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_232;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_201)
         {
            var_232 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_201)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2124;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_201)
         {
            var_1919 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2123;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_201)
         {
            var_1920 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_201)
         {
            var_2123 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_201)
         {
            var_1918 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_201)
         {
            var_570 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_201)
         {
            var_2124 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_201)
         {
            var_1309 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1919;
      }
      
      public function get groupID() : String
      {
         return var_1920;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_201)
         {
            var_1916 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_201)
         {
            var_1917 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get sex() : String
      {
         return var_1309;
      }
      
      public function get figure() : String
      {
         return var_570;
      }
      
      public function get webID() : int
      {
         return var_1916;
      }
      
      public function get custom() : String
      {
         return var_1917;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_83 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_201)
         {
            var_84 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1918;
      }
   }
}

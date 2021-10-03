package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_570:String = "";
      
      private var var_1917:String = "";
      
      private var var_1919:int = 0;
      
      private var var_1918:int = 0;
      
      private var _type:int = 0;
      
      private var var_1920:String = "";
      
      private var var_1309:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1916:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1919 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1920 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_570 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1309 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1919;
      }
      
      public function set webID(param1:int) : void
      {
         var_1916 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1920;
      }
      
      public function set custom(param1:String) : void
      {
         var_1917 = param1;
      }
      
      public function get figure() : String
      {
         return var_570;
      }
      
      public function get sex() : String
      {
         return var_1309;
      }
      
      public function get custom() : String
      {
         return var_1917;
      }
      
      public function get webID() : int
      {
         return var_1916;
      }
      
      public function set xp(param1:int) : void
      {
         var_1918 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1918;
      }
   }
}

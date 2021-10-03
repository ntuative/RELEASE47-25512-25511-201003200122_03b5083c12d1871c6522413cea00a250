package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1741:int;
      
      private var var_1740:int;
      
      private var var_1739:Boolean;
      
      private var var_1738:Boolean;
      
      private var var_1737:Array;
      
      private var var_1742:Boolean;
      
      private var var_1166:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_624:Array;
      
      private var var_1167:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1740;
      }
      
      public function get description() : String
      {
         return var_1167;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1738;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1741;
      }
      
      public function set description(param1:String) : void
      {
         var_1167 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1742 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1741 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1166;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1737;
      }
      
      public function get tags() : Array
      {
         return var_624;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1742;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1740 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1739 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_624 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1737 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1166 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1739;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1738 = param1;
      }
   }
}

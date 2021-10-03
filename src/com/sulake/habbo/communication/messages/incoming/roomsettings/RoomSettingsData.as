package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_432:int = 0;
      
      public static const const_124:int = 2;
      
      public static const const_172:int = 1;
      
      public static const const_510:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1739:Boolean;
      
      private var var_1738:Boolean;
      
      private var var_2206:int;
      
      private var var_1737:Array;
      
      private var var_2205:int;
      
      private var var_1742:Boolean;
      
      private var var_1167:String;
      
      private var var_1741:int;
      
      private var var_1740:int;
      
      private var var_1166:int;
      
      private var _roomId:int;
      
      private var var_624:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1741;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1741 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_624;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1742;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2205 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1737 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_624 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1739;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1738;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2206;
      }
      
      public function get categoryId() : int
      {
         return var_1166;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1742 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2205;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1737;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1740 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1739 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1738 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2206 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1740;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1166 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1167 = param1;
      }
      
      public function get description() : String
      {
         return var_1167;
      }
   }
}

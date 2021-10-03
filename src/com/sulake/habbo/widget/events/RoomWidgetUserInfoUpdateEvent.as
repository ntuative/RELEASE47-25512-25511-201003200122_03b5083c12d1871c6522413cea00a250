package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_227:String = "RWUIUE_PEER";
      
      public static const const_224:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1162:String = "BOT";
      
      public static const const_832:int = 2;
      
      public static const const_1307:int = 0;
      
      public static const const_791:int = 3;
       
      
      private var var_1255:String = "";
      
      private var var_1946:Boolean = false;
      
      private var var_1918:int = 0;
      
      private var var_1706:int = 0;
      
      private var var_1942:Boolean = false;
      
      private var var_1253:String = "";
      
      private var var_1943:Boolean = false;
      
      private var var_902:int = 0;
      
      private var var_1945:Boolean = true;
      
      private var var_1088:int = 0;
      
      private var var_1941:Boolean = false;
      
      private var var_1151:Boolean = false;
      
      private var var_1940:Boolean = false;
      
      private var var_1705:int = 0;
      
      private var var_1939:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_247:Array;
      
      private var var_1150:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1916:int = 0;
      
      private var var_1944:Boolean = false;
      
      private var var_1947:int = 0;
      
      private var var_1704:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_247 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1706;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1706 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1946;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1945;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1945 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1943 = param1;
      }
      
      public function get motto() : String
      {
         return var_1255;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1941 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1151;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1255 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1944;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1704;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1151 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1939;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1705 = param1;
      }
      
      public function get badges() : Array
      {
         return var_247;
      }
      
      public function get amIController() : Boolean
      {
         return var_1942;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1942 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1944 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1947 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1704 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1253 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1943;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1941;
      }
      
      public function get carryItem() : int
      {
         return var_1705;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1150;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1150 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_902 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1947;
      }
      
      public function get realName() : String
      {
         return var_1253;
      }
      
      public function set webID(param1:int) : void
      {
         var_1916 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_247 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1940 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1939 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_902;
      }
      
      public function get webID() : int
      {
         return var_1916;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1088 = param1;
      }
      
      public function get xp() : int
      {
         return var_1918;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1946 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1088;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1940;
      }
      
      public function set xp(param1:int) : void
      {
         var_1918 = param1;
      }
   }
}

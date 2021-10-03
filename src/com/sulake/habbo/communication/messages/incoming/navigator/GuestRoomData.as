package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1807:int;
      
      private var var_2092:String;
      
      private var var_2095:int;
      
      private var var_2093:int;
      
      private var var_683:Boolean;
      
      private var var_1742:Boolean;
      
      private var var_396:int;
      
      private var var_1167:String;
      
      private var var_1740:int;
      
      private var var_1166:int;
      
      private var _ownerName:String;
      
      private var var_675:String;
      
      private var var_2094:int;
      
      private var var_2091:RoomThumbnailData;
      
      private var var_1796:Boolean;
      
      private var var_624:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_624 = new Array();
         super();
         var_396 = param1.readInteger();
         var_683 = param1.readBoolean();
         var_675 = param1.readString();
         _ownerName = param1.readString();
         var_1740 = param1.readInteger();
         var_1807 = param1.readInteger();
         var_2094 = param1.readInteger();
         var_1167 = param1.readString();
         var_2095 = param1.readInteger();
         var_1796 = param1.readBoolean();
         var_2093 = param1.readInteger();
         var_1166 = param1.readInteger();
         var_2092 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_624.push(_loc4_);
            _loc3_++;
         }
         var_2091 = new RoomThumbnailData(param1);
         var_1742 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2094;
      }
      
      public function get roomName() : String
      {
         return var_675;
      }
      
      public function get userCount() : int
      {
         return var_1807;
      }
      
      public function get score() : int
      {
         return var_2093;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2092;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1796;
      }
      
      public function get tags() : Array
      {
         return var_624;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1742;
      }
      
      public function get event() : Boolean
      {
         return var_683;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_624 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1166;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2095;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2091;
      }
      
      public function get doorMode() : int
      {
         return var_1740;
      }
      
      public function get flatId() : int
      {
         return var_396;
      }
      
      public function get description() : String
      {
         return var_1167;
      }
   }
}

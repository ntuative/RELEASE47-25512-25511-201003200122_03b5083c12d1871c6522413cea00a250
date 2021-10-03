package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_112:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1807:int;
      
      private var var_396:int;
      
      private var var_683:RoomData;
      
      private var var_1839:int;
      
      private var _ownerName:String;
      
      private var var_1903:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_396 = param1.readInteger();
         var_1807 = param1.readInteger();
         var_1903 = param1.readBoolean();
         var_1839 = param1.readInteger();
         _ownerName = param1.readString();
         var_112 = new RoomData(param1);
         var_683 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1807;
      }
      
      public function get event() : RoomData
      {
         return var_683;
      }
      
      public function get room() : RoomData
      {
         return var_112;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_112 != null)
         {
            var_112.dispose();
            var_112 = null;
         }
         if(var_683 != null)
         {
            var_683.dispose();
            var_683 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_396;
      }
      
      public function get ownerId() : int
      {
         return var_1839;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1903;
      }
   }
}

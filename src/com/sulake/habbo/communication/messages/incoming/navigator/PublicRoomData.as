package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2177:int;
      
      private var var_2176:String;
      
      private var var_1930:int;
      
      private var _disposed:Boolean;
      
      private var var_2178:int;
      
      private var var_1929:String;
      
      private var var_1266:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1929 = param1.readString();
         var_2177 = param1.readInteger();
         var_1930 = param1.readInteger();
         var_2176 = param1.readString();
         var_2178 = param1.readInteger();
         var_1266 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2178;
      }
      
      public function get worldId() : int
      {
         return var_1930;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1929;
      }
      
      public function get unitPort() : int
      {
         return var_2177;
      }
      
      public function get castLibs() : String
      {
         return var_2176;
      }
      
      public function get nodeId() : int
      {
         return var_1266;
      }
   }
}

package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SetObjectDataMessageComposer implements IMessageComposer
   {
       
      
      private var _data:String = "";
      
      private var _roomId:int;
      
      private var _roomCategory:int = 0;
      
      private var var_152:int;
      
      public function SetObjectDataMessageComposer(param1:int, param2:String, param3:int = 0, param4:int = 0)
      {
         super();
         var_152 = param1;
         _data = param2;
         _roomId = param3;
         _roomCategory = param4;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [String(var_152),_data];
      }
   }
}
package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2242:String;
      
      private var var_1227:String;
      
      private var var_2241:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2241 = param1;
         var_1227 = param2;
         var_2242 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2241,var_1227,var_2242];
      }
      
      public function dispose() : void
      {
      }
   }
}

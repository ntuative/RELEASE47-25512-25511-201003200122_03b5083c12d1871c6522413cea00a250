package com.sulake.habbo.communication.messages.incoming.room.pets
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.room.pets.PetCommandsMessageParser;
   
   public class PetCommandsMessageEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function PetCommandsMessageEvent(param1:Function)
      {
         super(param1,PetCommandsMessageParser);
      }
      
      public function getParser() : PetCommandsMessageParser
      {
         return var_6 as PetCommandsMessageParser;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var var_2239:int;
      
      private var var_1113:int;
      
      private var _type:int;
      
      private var var_2240:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_2240;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         var_2239 = param1;
      }
      
      public function get duration() : int
      {
         return var_1113;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_2240 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1113 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return var_2239;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1584:int;
      
      private var var_1585:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1584;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1584 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1584 = this.var_1584;
         _loc1_.var_1585 = this.var_1585;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1585 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1585;
      }
   }
}

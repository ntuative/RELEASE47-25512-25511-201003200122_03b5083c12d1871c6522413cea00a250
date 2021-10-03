package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_593:RoomObjectLocationCacheItem = null;
      
      private var var_168:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_593 = new RoomObjectLocationCacheItem(param1);
         var_168 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_593;
      }
      
      public function dispose() : void
      {
         if(var_593 != null)
         {
            var_593.dispose();
            var_593 = null;
         }
         if(var_168 != null)
         {
            var_168.dispose();
            var_168 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_168;
      }
   }
}

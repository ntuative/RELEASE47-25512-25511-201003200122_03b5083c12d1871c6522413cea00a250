package com.sulake.room.renderer.cache
{
   import com.sulake.room.renderer.utils.SortableSprite;
   
   public class RoomObjectSortableSpriteCacheItem
   {
       
      
      private var var_2112:int = -1;
      
      private var var_168:Array;
      
      private var var_2113:int = -1;
      
      public function RoomObjectSortableSpriteCacheItem()
      {
         var_168 = [];
         super();
      }
      
      public function addSprite(param1:SortableSprite) : void
      {
         var_168.push(param1);
      }
      
      public function setSpriteCount(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1 < var_168.length)
         {
            _loc2_ = param1;
            while(_loc2_ < var_168.length)
            {
               _loc3_ = getSprite(_loc2_);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            var_168.splice(param1,0 - param1);
         }
      }
      
      public function get spriteCount() : int
      {
         return var_168.length;
      }
      
      public function needsUpdate(param1:int, param2:int) : Boolean
      {
         if(param1 != var_2112 || param2 != var_2113)
         {
            var_2112 = param1;
            var_2113 = param2;
            return true;
         }
         return false;
      }
      
      public function getSprite(param1:int) : SortableSprite
      {
         return var_168[param1];
      }
      
      public function dispose() : void
      {
         setSpriteCount(0);
      }
   }
}

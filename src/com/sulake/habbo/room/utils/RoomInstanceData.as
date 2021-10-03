package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_791:LegacyWallGeometry = null;
      
      private var var_544:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_545:TileHeightMap = null;
      
      private var var_1687:String = null;
      
      private var _roomId:int = 0;
      
      private var var_543:SelectedRoomObjectData = null;
      
      private var var_792:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_791 = new LegacyWallGeometry();
         var_792 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_544 != null)
         {
            var_544.dispose();
         }
         var_544 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_545 != null)
         {
            var_545.dispose();
         }
         var_545 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1687 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_791;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_543;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_792;
      }
      
      public function dispose() : void
      {
         if(var_545 != null)
         {
            var_545.dispose();
            var_545 = null;
         }
         if(var_791 != null)
         {
            var_791.dispose();
            var_791 = null;
         }
         if(var_792 != null)
         {
            var_792.dispose();
            var_792 = null;
         }
         if(var_544 != null)
         {
            var_544.dispose();
            var_544 = null;
         }
         if(var_543 != null)
         {
            var_543.dispose();
            var_543 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_545;
      }
      
      public function get worldType() : String
      {
         return var_1687;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_543 != null)
         {
            var_543.dispose();
         }
         var_543 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_544;
      }
   }
}

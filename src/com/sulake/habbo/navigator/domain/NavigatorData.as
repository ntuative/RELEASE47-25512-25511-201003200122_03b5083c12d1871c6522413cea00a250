package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1410:int = 10;
       
      
      private var var_1499:NavigatorSettingsMessageParser;
      
      private var var_1246:int;
      
      private var var_1973:int;
      
      private var var_1971:Boolean;
      
      private var var_1025:Array;
      
      private var var_857:Dictionary;
      
      private var var_1024:Array;
      
      private var var_2303:int;
      
      private var var_1972:int;
      
      private var var_1634:int;
      
      private var var_1975:int;
      
      private var var_584:PublicRoomShortData;
      
      private var var_407:RoomEventData;
      
      private var var_132:MsgWithRequestId;
      
      private var var_1976:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1974:Boolean;
      
      private var var_194:GuestRoomData;
      
      private var var_701:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1025 = new Array();
         var_1024 = new Array();
         var_857 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1973;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1974;
      }
      
      public function startLoading() : void
      {
         this.var_701 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1974 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_407 != null)
         {
            var_407.dispose();
         }
         var_407 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_132 != null && var_132 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_132 != null && var_132 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_132 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_194;
      }
      
      public function get allCategories() : Array
      {
         return var_1025;
      }
      
      public function onRoomExit() : void
      {
         if(var_407 != null)
         {
            var_407.dispose();
            var_407 = null;
         }
         if(var_584 != null)
         {
            var_584.dispose();
            var_584 = null;
         }
         if(var_194 != null)
         {
            var_194.dispose();
            var_194 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_132 = param1;
         var_701 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1499;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_132 = param1;
         var_701 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_584 = null;
         var_194 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_584 = param1.publicSpace;
            var_407 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2303 = param1.limit;
         this.var_1246 = param1.favouriteRoomIds.length;
         this.var_857 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_857[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_132 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_584;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1971;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_132 = param1;
         var_701 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1634 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_194 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_701;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1024;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1025 = param1;
         var_1024 = new Array();
         for each(_loc2_ in var_1025)
         {
            if(_loc2_.visible)
            {
               var_1024.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1972;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1975;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1499 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_132 == null)
         {
            return;
         }
         var_132.dispose();
         var_132 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_407;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_857[param1] = !!param2 ? "yes" : null;
         var_1246 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_132 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1634;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_132 != null && var_132 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1971 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1972 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1976 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_194 != null)
         {
            var_194.dispose();
         }
         var_194 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_194 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1499.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1246 >= var_2303;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1975 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1976;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_194 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1973 = param1;
      }
   }
}

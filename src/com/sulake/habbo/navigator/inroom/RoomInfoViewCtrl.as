package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_663:IWindowContainer;
      
      private var var_966:ITextWindow;
      
      private var var_186:RoomSettingsCtrl;
      
      private var var_1155:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1156:ITextWindow;
      
      private var var_337:IWindowContainer;
      
      private var var_1729:IWindowContainer;
      
      private var var_1727:ITextWindow;
      
      private var var_797:IWindowContainer;
      
      private var var_1428:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_675:ITextWindow;
      
      private var var_1427:IWindowContainer;
      
      private var var_1161:IWindowContainer;
      
      private var var_798:ITextWindow;
      
      private var var_965:ITextFieldWindow;
      
      private var var_296:IWindowContainer;
      
      private var var_800:ITextWindow;
      
      private var var_1425:IButtonWindow;
      
      private var var_964:ITextWindow;
      
      private var var_2292:int;
      
      private var var_1160:IContainerButtonWindow;
      
      private var var_799:IWindowContainer;
      
      private var var_1159:ITextWindow;
      
      private var var_1157:IContainerButtonWindow;
      
      private var var_1426:ITextWindow;
      
      private var var_1424:IButtonWindow;
      
      private var var_847:TagRenderer;
      
      private var var_1726:ITextWindow;
      
      private var var_336:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_664:ITextWindow;
      
      private var var_254:RoomThumbnailCtrl;
      
      private var var_1158:IContainerButtonWindow;
      
      private var var_1728:IWindowContainer;
      
      private var var_253:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_336 = new RoomEventViewCtrl(_navigator);
         var_186 = new RoomSettingsCtrl(_navigator,this,true);
         var_254 = new RoomThumbnailCtrl(_navigator);
         var_847 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_186);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_186.active = true;
         this.var_336.active = false;
         this.var_254.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1428.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1424.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1427.visible = Util.hasVisibleChildren(var_1427);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_675.text = param1.roomName;
         var_675.height = NaN;
         _ownerName.text = param1.ownerName;
         var_798.text = param1.description;
         var_847.refreshTags(var_337,param1.tags);
         var_798.visible = false;
         if(param1.description != "")
         {
            var_798.height = NaN;
            var_798.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_337,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_337,"thumb_down",_loc3_,onThumbDown,0);
         var_1727.visible = _loc3_;
         var_800.visible = !_loc3_;
         var_1426.visible = !_loc3_;
         var_1426.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_337,"home",param2,null,0);
         _navigator.refreshButton(var_337,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_337,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_675.y,0);
         var_337.visible = true;
         var_337.height = Util.getLowestPoint(var_337);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_453,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1425.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1155.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1158.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1160.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1157.visible = _navigator.data.canEditRoomSettings && param1;
         var_1161.visible = Util.hasVisibleChildren(var_1161);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_336.active = false;
         this.var_186.active = false;
         this.var_254.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_336.active = false;
         this.var_186.active = false;
         this.var_254.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_453,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_296);
         var_296.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_186.refresh(var_296);
         this.var_254.refresh(var_296);
         Util.moveChildrenToColumn(var_296,["room_details","room_buttons"],0,2);
         var_296.height = Util.getLowestPoint(var_296);
         var_296.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_965.setSelection(0,var_965.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_253);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_336.refresh(var_253);
         if(Util.hasVisibleChildren(var_253) && !this.var_254.active)
         {
            Util.moveChildrenToColumn(var_253,["event_details","event_buttons"],0,2);
            var_253.height = Util.getLowestPoint(var_253);
            var_253.visible = true;
         }
         else
         {
            var_253.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_336.active = true;
         this.var_186.active = false;
         this.var_254.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_966.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_966.height = NaN;
         var_1156.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1156.height = NaN;
         Util.moveChildrenToColumn(var_663,["public_space_name","public_space_desc"],var_966.y,0);
         var_663.visible = true;
         var_663.height = Math.max(86,Util.getLowestPoint(var_663));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_799.visible = true;
            var_965.text = this.getEmbedData();
         }
         else
         {
            var_799.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_186.load(param1);
         this.var_186.active = true;
         this.var_336.active = false;
         this.var_254.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_186.active = false;
         this.var_336.active = false;
         this.var_254.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_70,false);
         _window.setParamFlag(HabboWindowParam.const_1317,true);
         _window.visible = false;
         var_296 = IWindowContainer(find("room_info"));
         var_337 = IWindowContainer(find("room_details"));
         var_663 = IWindowContainer(find("public_space_details"));
         var_1728 = IWindowContainer(find("owner_name_cont"));
         var_1729 = IWindowContainer(find("rating_cont"));
         var_1161 = IWindowContainer(find("room_buttons"));
         var_675 = ITextWindow(find("room_name"));
         var_966 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_798 = ITextWindow(find("room_desc"));
         var_1156 = ITextWindow(find("public_space_desc"));
         var_964 = ITextWindow(find("owner_caption"));
         var_800 = ITextWindow(find("rating_caption"));
         var_1727 = ITextWindow(find("rate_caption"));
         var_1426 = ITextWindow(find("rating_txt"));
         var_253 = IWindowContainer(find("event_info"));
         var_797 = IWindowContainer(find("event_details"));
         var_1427 = IWindowContainer(find("event_buttons"));
         var_1726 = ITextWindow(find("event_name"));
         var_664 = ITextWindow(find("event_desc"));
         var_1155 = IContainerButtonWindow(find("add_favourite_button"));
         var_1158 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1160 = IContainerButtonWindow(find("make_home_button"));
         var_1157 = IContainerButtonWindow(find("unmake_home_button"));
         var_1425 = IButtonWindow(find("room_settings_button"));
         var_1428 = IButtonWindow(find("create_event_button"));
         var_1424 = IButtonWindow(find("edit_event_button"));
         var_799 = IWindowContainer(find("embed_info"));
         var_1159 = ITextWindow(find("embed_info_txt"));
         var_965 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1155,onAddFavouriteClick);
         Util.setProcDirectly(var_1158,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1425,onRoomSettingsClick);
         Util.setProcDirectly(var_1160,onMakeHomeClick);
         Util.setProcDirectly(var_1157,onUnmakeHomeClick);
         Util.setProcDirectly(var_1428,onEventSettingsClick);
         Util.setProcDirectly(var_1424,onEventSettingsClick);
         Util.setProcDirectly(var_965,onEmbedSrcClick);
         _navigator.refreshButton(var_1155,"favourite",true,null,0);
         _navigator.refreshButton(var_1158,"favourite",true,null,0);
         _navigator.refreshButton(var_1160,"home",true,null,0);
         _navigator.refreshButton(var_1157,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_296,onHover);
         Util.setProcDirectly(var_253,onHover);
         var_964.width = var_964.textWidth;
         Util.moveChildrenToRow(var_1728,["owner_caption","owner_name"],var_964.x,var_964.y,3);
         var_800.width = var_800.textWidth;
         Util.moveChildrenToRow(var_1729,["rating_caption","rating_txt"],var_800.x,var_800.y,3);
         var_1159.height = NaN;
         Util.moveChildrenToColumn(var_799,["embed_info_txt","embed_src_txt"],var_1159.y,2);
         var_799.height = Util.getLowestPoint(var_799) + 5;
         var_2292 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1726.text = param1.eventName;
         var_664.text = param1.eventDescription;
         var_847.refreshTags(var_797,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_664.visible = false;
         if(param1.eventDescription != "")
         {
            var_664.height = NaN;
            var_664.y = Util.getLowestPoint(var_797) + 2;
            var_664.visible = true;
         }
         var_797.visible = true;
         var_797.height = Util.getLowestPoint(var_797);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_822,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}

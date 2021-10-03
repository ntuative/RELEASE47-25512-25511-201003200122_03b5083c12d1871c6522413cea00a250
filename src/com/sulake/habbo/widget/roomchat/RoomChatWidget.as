package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatSelectAvatarMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class RoomChatWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_745:int = 10;
      
      private static const const_488:int = 25;
      
      private static const const_1036:int = 6000;
      
      private static const const_1032:int = 9;
      
      private static const const_744:int = 4000;
      
      private static const const_1033:int = 3;
      
      private static const const_98:int = 18;
      
      private static const const_1035:int = 25;
      
      private static const const_1034:int = 1;
      
      private static const const_278:int = 9;
      
      private static const const_489:int = 8;
      
      private static const const_341:int = 0;
      
      private static const const_487:int = (const_489 + const_341) * const_98 + const_98;
       
      
      private var var_773:Number = 1;
      
      private var _disposed:Boolean = false;
      
      private var var_537:int = 18;
      
      private var var_329:IItemListWindow;
      
      private var var_644:int = 0;
      
      private var var_40:IWindowContainer;
      
      private var _isAnimating:Boolean = false;
      
      private var var_146:int;
      
      private var var_1668:int = 0;
      
      private var var_1134:Boolean = false;
      
      private var var_121:IWindowContainer;
      
      private var _itemList:Array;
      
      private var var_26:RoomChatHistoryViewer;
      
      private var var_1670:int = 150;
      
      private var var_452:Number = 1;
      
      private var var_64:Array;
      
      private var var_212:Array;
      
      private var var_642:int = 0;
      
      private var var_1669:int;
      
      private var var_643:Point;
      
      private var var_1409:Number = 0;
      
      private var var_23:Component = null;
      
      public function RoomChatWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager, param5:int, param6:Component)
      {
         _itemList = new Array();
         var_64 = new Array();
         var_212 = new Array();
         var_643 = new Point();
         var_146 = const_487 + const_278;
         super(param1,param2,param3);
         var_1669 = param5;
         var_40 = param1.createWindow("chat_container","",HabboWindowType.const_59,HabboWindowStyle.const_38,HabboWindowParam.const_41,new Rectangle(0,0,200,var_146 + RoomChatHistoryPulldown.const_74),null,0) as IWindowContainer;
         var_40.background = true;
         var_40.color = 33554431;
         var_40.tags.push("room_widget_chat");
         var_329 = param1.createWindow("chat_contentlist","",HabboWindowType.const_957,HabboWindowStyle.const_41,0 | 0,new Rectangle(0,0,200,var_146),null,0) as IItemListWindow;
         var_40.addChild(var_329);
         var_121 = param1.createWindow("chat_active_content","",HabboWindowType.const_59,HabboWindowStyle.const_41,HabboWindowParam.const_70,new Rectangle(0,0,200,var_146),null,0) as IWindowContainer;
         var_329.addListItem(var_121);
         var_26 = new RoomChatHistoryViewer(this,param1,var_40,param2);
         var_1670 = int(param4.getKey("chat.history.item.max.count","150"));
         var _loc7_:Boolean = int(param4.getKey("chat.history.disabled","0")) == 1 ? true : false;
         if(var_26 != null)
         {
            var_26.disabled = _loc7_;
         }
         if(param6 != null)
         {
            var_23 = param6;
            var_23.registerUpdateReceiver(this,1);
         }
      }
      
      public function onPulldownCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(var_26 != null)
         {
            var_26.hideHistoryViewer();
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetChatUpdateEvent.const_689,onChatMessage);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_273,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_600,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_556,onRoomViewUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return var_40;
      }
      
      public function onItemMouseOver(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      public function resetArea() : void
      {
         if(var_26 == null)
         {
            return;
         }
         animationStop();
         var_146 = const_487 + const_278;
         var_40.height = var_146 + var_26.pulldownBarHeight;
         var_329.width = 0 - 0;
         var_329.height = var_146;
         var_121.width = 0 - 0;
         if(historyViewerActive())
         {
            var_121.height = getTotalContentHeight() + const_278;
         }
         else
         {
            var_121.height = var_146;
         }
         var_329.scrollV = 1;
         if(!historyViewerActive())
         {
            var_26.containerResized(var_40.rectangle);
         }
         purgeItems();
         alignItems();
      }
      
      public function resizeContainerToLowestItem() : void
      {
         var _loc4_:* = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc4_ = _itemList[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_64.length)
         {
            _loc4_ = var_64[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc1_ += const_488;
         _loc1_ = _loc1_ < 0 ? 0 : int(_loc1_);
         var _loc3_:int = var_40.rectangle.bottom;
         stretchAreaBottomTo(var_40.rectangle.top + _loc1_);
         _loc3_ -= var_40.rectangle.bottom;
         if(Math.abs(_loc3_) < RoomChatHistoryViewer.const_797)
         {
            resetArea();
            return;
         }
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc4_ = _itemList[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_64.length)
         {
            _loc4_ = var_64[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         var_1134 = true;
      }
      
      private function processBuffer() : void
      {
         if(_isAnimating)
         {
            return;
         }
         if(false)
         {
            return;
         }
         while(var_64.length > const_1034 || historyViewerActive() && false)
         {
            activateItemFromBuffer();
         }
         var _loc1_:Boolean = false;
         if(false)
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = checkLastItemAllowsAdding(var_64[0]);
         }
         if(_loc1_)
         {
            activateItemFromBuffer();
            var_644 = getTimer() + const_744;
         }
         else
         {
            if(false && false)
            {
               var_537 = getItemSpacing(_itemList["-1"],var_64[0]);
            }
            else
            {
               var_537 = const_98;
            }
            animationStart();
         }
      }
      
      private function setChatItemLocHorizontal(param1:RoomChatItem) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(param1 == null || var_26 == null)
         {
            return;
         }
         var _loc2_:Number = (param1.senderX + var_643.x) * var_773;
         var _loc3_:Number = _loc2_ - param1.width / 2;
         var _loc4_:Number = _loc3_ + param1.width;
         var _loc5_:Number = 0 - const_745;
         var _loc6_:Number = 0 + const_745 - 0;
         var _loc7_:Boolean = _loc3_ >= _loc5_ && _loc3_ <= _loc6_;
         var _loc8_:Boolean = _loc4_ >= _loc5_ && _loc4_ <= _loc6_;
         if(_loc7_ && _loc8_)
         {
            _loc9_ = _loc3_;
            _loc10_ = _loc9_;
         }
         else if(_loc2_ >= 0)
         {
            _loc9_ = _loc6_ - param1.width;
         }
         else
         {
            _loc9_ = _loc5_;
         }
         param1.x = _loc9_ + 0 + var_40.x;
         if(_loc2_ < _loc5_ || _loc2_ > _loc6_)
         {
            param1.hidePointer();
         }
         else
         {
            param1.setPointerOffset(_loc3_ - _loc9_);
         }
      }
      
      public function onItemMouseOut(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      private function checkLastItemAllowsAdding(param1:RoomChatItem) : Boolean
      {
         if(false)
         {
            return true;
         }
         var _loc2_:RoomChatItem = _itemList["-1"];
         if(param1 == null || _loc2_ == null)
         {
            return false;
         }
         if(_loc2_.view == null)
         {
            return true;
         }
         if(var_121.rectangle.bottom - (var_121.y + _loc2_.y + _loc2_.height) <= getItemSpacing(_loc2_,param1))
         {
            return false;
         }
         return true;
      }
      
      public function mouseUp() : void
      {
         var _loc1_:Number = var_40.rectangle.bottom - 0;
         if(_loc1_ < const_487)
         {
            if(_loc1_ <= var_146 + var_40.y)
            {
               if(historyViewerActive())
               {
                  hideHistoryViewer();
               }
               resetArea();
               return;
            }
         }
         if(var_1134 && !historyViewerActive())
         {
            resetArea();
            var_1134 = false;
         }
      }
      
      private function getFreeItemId() : String
      {
         return "chat_" + var_1669.toString() + "_item_" + (var_1668++).toString();
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         while(false)
         {
            _loc1_ = var_212.shift();
         }
         var_26.dispose();
         var_26 = null;
         while(false)
         {
            _loc1_ = _itemList.shift();
            _loc1_.dispose();
         }
         while(false)
         {
            _loc1_ = var_64.shift();
            _loc1_.dispose();
         }
         var_40.dispose();
         if(var_23 != null)
         {
            var_23.removeUpdateReceiver(this);
            var_23 = null;
         }
         super.dispose();
         _disposed = true;
      }
      
      private function animationStop() : void
      {
         _isAnimating = false;
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetChatUpdateEvent.const_689,onChatMessage);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_273,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_600,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_556,onRoomViewUpdate);
      }
      
      public function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(var_26 != null)
         {
            var_26.beginDrag(param1.stageY,true);
         }
      }
      
      private function alignItems() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(var_26 == null)
         {
            return;
         }
         _loc1_ = -1;
         while(_loc1_ >= 0)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemLocHorizontal(_loc2_);
               setChatItemLocVertical(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < _itemList.length)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemRenderable(_loc2_);
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < var_64.length)
         {
            _loc2_ = var_64[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemLocHorizontal(_loc2_);
            }
            _loc1_++;
         }
      }
      
      private function onChatMessage(param1:RoomWidgetChatUpdateEvent) : void
      {
         var _loc2_:RoomChatItem = new RoomChatItem(this,windowManager,assets,getFreeItemId(),localizations);
         _loc2_.define(param1);
         if(var_773 != 1)
         {
            _loc2_.senderX /= var_773;
         }
         _loc2_.senderX -= 0;
         setChatItemLocHorizontal(_loc2_);
         var_64.push(_loc2_);
         processBuffer();
      }
      
      private function setChatItemLocVertical(param1:RoomChatItem) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 != null)
         {
            _loc2_ = _itemList.indexOf(param1);
            _loc3_ = !!historyViewerActive() ? 0 : Number(var_452);
            if(_loc2_ == -1)
            {
               param1.y = getAreaBottom() - (_loc3_ + 1) * const_98 - const_278;
            }
            else
            {
               _loc4_ = _itemList[_loc2_ + 1].aboveLevels;
               if(_loc4_ < 2)
               {
                  param1.y = _itemList[_loc2_ + 1].y - getItemSpacing(param1,_itemList[_loc2_ + 1]);
               }
               else
               {
                  param1.y = _itemList[_loc2_ + 1].y - _loc4_ * const_98;
               }
            }
         }
      }
      
      public function disableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_64.length)
         {
            _loc1_ = var_64[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
      }
      
      private function animationStart() : void
      {
         if(_isAnimating)
         {
            return;
         }
         selectItemsToMove();
         _isAnimating = true;
      }
      
      public function hideHistoryViewer() : void
      {
         if(var_26 != null)
         {
            var_26.hideHistoryViewer();
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         if(getTimer() > var_644 && var_644 > 0)
         {
            var_644 = -1;
            animationStart();
         }
         if(_isAnimating)
         {
            _loc2_ = param1 / const_1035 * const_1033;
            if(_loc2_ + var_642 > var_537)
            {
               _loc2_ = var_537 - var_642;
            }
            if(_loc2_ > 0)
            {
               moveItemsUp(_loc2_);
               var_642 += _loc2_;
            }
            if(var_642 >= var_537)
            {
               var_537 = const_98;
               var_642 = 0;
               animationStop();
               processBuffer();
               var_644 = getTimer() + const_744;
            }
         }
         if(var_26 != null)
         {
            var_26.update(param1);
         }
      }
      
      public function getTotalContentHeight() : int
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc3_];
            if(_loc1_ != null)
            {
               if(_loc3_ == 0)
               {
                  _loc2_ += const_98;
               }
               else
               {
                  _loc2_ += getItemSpacing(_itemList[_loc3_ - 1],_loc1_);
               }
               _loc2_ += (_loc1_.aboveLevels - 1) * const_98;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         var _loc2_:Rectangle = param1.rect;
         if(param1.scale > 0)
         {
            if(var_1409 == 0)
            {
               var_1409 = param1.scale;
            }
            else
            {
               var_773 = param1.scale / var_1409;
            }
         }
         if(param1.positionDelta != null)
         {
            var_643.x += param1.positionDelta.x / var_773;
            var_643.y += param1.positionDelta.y / var_773;
         }
         if(param1.rect != null)
         {
            if(var_26 == null)
            {
               return;
            }
            var_40.width = _loc2_.width;
            var_40.height = var_146 + var_26.pulldownBarHeight;
            var_329.width = 0 - 0;
            var_329.height = var_146;
            var_329.x = var_40.x;
            var_329.y = var_40.y;
            var_121.width = 0 - 0;
            var_121.height = var_146;
            if(historyViewerActive())
            {
               reAlignItemsToHistoryContent();
            }
            var_26.containerResized(var_40.rectangle,true);
         }
         alignItems();
      }
      
      private function getAreaBottom() : Number
      {
         if(historyViewerActive())
         {
            return var_121.height;
         }
         return var_146 + var_40.y;
      }
      
      private function purgeItems() : void
      {
         var _loc2_:* = null;
         if(historyViewerActive())
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         while(_itemList.length > var_1670)
         {
            _loc2_ = _itemList.shift();
            _loc3_ = var_212.indexOf(_loc2_);
            if(_loc3_ > -1)
            {
               var_212.splice(_loc3_,1);
            }
            if(_loc2_.view != null)
            {
               var_121.removeChild(_loc2_.view);
               _loc2_.hideView();
            }
            _loc2_.dispose();
            _loc2_ = null;
         }
         var _loc4_:Boolean = false;
         _loc1_ = 0;
         for(; _loc1_ < _itemList.length; _loc1_++)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               if(_loc2_.y > -const_488)
               {
                  _loc4_ = true;
               }
               _loc2_.aboveLevels = 1;
               if(_loc2_.view != null)
               {
                  _loc3_ = var_212.indexOf(_loc2_);
                  if(_loc3_ > -1)
                  {
                     var_212.splice(_loc3_,1);
                  }
                  var_121.removeChild(_loc2_.view);
                  _loc2_.hideView();
               }
               continue;
               break;
            }
         }
         if(false)
         {
            _loc4_ = true;
         }
         if(getTotalContentHeight() > const_98 && !_loc4_ && !historyViewerActive())
         {
            if(var_26 != null)
            {
               stretchAreaBottomTo(var_40.y);
               alignItems();
               if(!historyViewerActive())
               {
                  var_26.showHistoryViewer();
               }
               if(!historyViewerVisible())
               {
                  var_26.visible = true;
               }
            }
         }
         else if(historyViewerVisible())
         {
            var_26.visible = false;
         }
      }
      
      public function stretchAreaBottomBy(param1:Number) : void
      {
         var _loc2_:Number = var_40.rectangle.bottom + param1 - 0;
         stretchAreaBottomTo(_loc2_);
      }
      
      private function activateItemFromBuffer() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(false)
         {
            return;
         }
         if(historyViewerMinimized())
         {
            resetArea();
            hideHistoryViewer();
         }
         if(!checkLastItemAllowsAdding(var_64[0]))
         {
            selectItemsToMove();
            moveItemsUp(getItemSpacing(_itemList["-1"],var_64[0]));
            if(!checkLastItemAllowsAdding(var_64[0]))
            {
               var_121.height += const_98;
               if(var_26 != null)
               {
                  var_26.containerResized(var_40.rectangle);
               }
            }
         }
         _loc1_ = var_64.shift();
         if(_loc1_ != null)
         {
            _loc1_.renderView();
            _loc2_ = _loc1_.view;
            if(_loc2_ != null)
            {
               var_121.addChild(_loc2_);
               _loc1_.timestamp = new Date().time;
               _itemList.push(_loc1_);
               _loc3_ = 0;
               if(false)
               {
                  _loc3_ = _itemList["-2"].screenLevel;
                  if(historyViewerActive())
                  {
                     _loc1_.screenLevel = _loc3_ + 1;
                  }
                  else
                  {
                     _loc1_.screenLevel = _loc3_ + Math.max(var_452,1);
                  }
               }
               else
               {
                  _loc1_.screenLevel = 100;
               }
               _loc1_.aboveLevels = var_452;
               if(_loc1_.aboveLevels > const_489 + const_341 + 2)
               {
                  _loc1_.aboveLevels = const_489 + const_341 + 2;
               }
               var_452 = 0;
               setChatItemLocHorizontal(_loc1_);
               setChatItemLocVertical(_loc1_);
               setChatItemRenderable(_loc1_);
            }
         }
      }
      
      public function stretchAreaBottomTo(param1:Number) : void
      {
         var _loc2_:int = var_40.context.getDesktopWindow().height - 0;
         param1 = Math.min(param1,_loc2_);
         var_146 = param1 - 0;
         var_40.height = var_146 + RoomChatHistoryPulldown.const_74;
         if(var_26 != null)
         {
            var_26.containerResized(var_40.rectangle);
         }
      }
      
      public function onItemMouseClick(param1:int, param2:String, param3:int, param4:int, param5:int, param6:WindowMouseEvent) : void
      {
         if(param6.shiftKey)
         {
            if(var_26 != null)
            {
               var_26.toggleHistoryViewer();
            }
            return;
         }
         var _loc7_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_331,param1,param3);
         messageListener.processWidgetMessage(_loc7_);
         var _loc8_:RoomWidgetChatSelectAvatarMessage = new RoomWidgetChatSelectAvatarMessage(RoomWidgetChatSelectAvatarMessage.const_727,param1,param2,param4,param5);
         messageListener.processWidgetMessage(_loc8_);
      }
      
      private function selectItemsToMove() : void
      {
         var _loc4_:* = null;
         if(_isAnimating)
         {
            return;
         }
         purgeItems();
         var_212 = new Array();
         var _loc1_:int = new Date().time;
         var _loc2_:int = 0;
         if(false)
         {
            var_452 = 1;
            return;
         }
         if(historyViewerActive())
         {
            return;
         }
         ++var_452;
         var _loc3_:int = -1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _itemList[_loc3_];
            if(_loc4_.view != null)
            {
               if(_loc4_.screenLevel > const_341 || _loc4_.screenLevel == _loc2_ - 1 || _loc1_ - _loc4_.timestamp >= const_1036)
               {
                  _loc4_.timestamp = _loc1_;
                  _loc2_ = _loc4_.screenLevel;
                  --_loc4_.screenLevel;
                  var_212.push(_loc4_);
               }
            }
            _loc3_--;
         }
      }
      
      public function enableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_64.length)
         {
            _loc1_ = var_64[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
      }
      
      public function reAlignItemsToHistoryContent() : void
      {
         if(historyViewerActive())
         {
            var_121.height = getTotalContentHeight() + const_278;
            alignItems();
         }
      }
      
      private function setChatItemRenderable(param1:RoomChatItem) : void
      {
         if(param1 != null)
         {
            if(param1.y < -const_488)
            {
               if(param1.view != null)
               {
                  var_121.removeChild(param1.view);
                  param1.hideView();
               }
            }
            else if(param1.view == null)
            {
               param1.renderView();
               if(param1.view != null)
               {
                  var_121.addChild(param1.view);
               }
            }
         }
      }
      
      private function historyViewerMinimized() : Boolean
      {
         return true;
      }
      
      private function moveItemsUp(param1:int) : void
      {
         var _loc3_:Boolean = false;
         if(var_212 == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc2_:* = null;
         var _loc4_:int = -1;
         var _loc5_:int = -1;
         while(_loc5_ >= 0)
         {
            _loc2_ = var_212[_loc5_];
            if(_loc2_ != null)
            {
               if(_loc4_ == -1)
               {
                  _loc4_ = _itemList.indexOf(_loc2_);
               }
               else
               {
                  _loc4_++;
               }
               _loc3_ = true;
               if(historyViewerActive())
               {
                  if(_loc2_.y - param1 + _loc2_.height < 0)
                  {
                     _loc3_ = false;
                  }
               }
               if(_loc4_ > 0)
               {
                  if(_itemList[_loc4_ - 1].view != null)
                  {
                     if(_loc2_.y - param1 - _itemList[_loc4_ - 1].y < getItemSpacing(_itemList[_loc4_ - 1],_loc2_))
                     {
                        _loc3_ = false;
                     }
                  }
               }
               if(_loc3_)
               {
                  _loc2_.y -= param1;
               }
            }
            _loc5_--;
         }
      }
      
      private function historyViewerActive() : Boolean
      {
         return var_26 == null ? false : Boolean(var_26.active);
      }
      
      private function getItemSpacing(param1:RoomChatItem, param2:RoomChatItem) : Number
      {
         if(param1.method_9(param2.x,param1.y,param2.width,param2.height))
         {
            return const_98;
         }
         return const_1032;
      }
      
      public function onItemMouseDown(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
         if(historyViewerVisible())
         {
            return;
         }
         if(var_26 != null)
         {
            var_26.beginDrag(param5.stageY);
         }
      }
      
      private function historyViewerVisible() : Boolean
      {
         return var_26 == null ? false : Boolean(var_26.visible);
      }
   }
}

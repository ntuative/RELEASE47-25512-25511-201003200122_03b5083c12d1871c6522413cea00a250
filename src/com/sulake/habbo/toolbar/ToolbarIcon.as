package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_446:ToolbarIconGroup;
      
      private var var_942:Boolean = false;
      
      private var var_1620:String;
      
      private var var_768:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_941:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_36:String = "-1";
      
      private var var_96:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_632:String;
      
      private var var_1621:int;
      
      private var var_631:Timer;
      
      private var var_1389:Array;
      
      private var var_944:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2284:Array;
      
      private var var_245:ToolbarBarMenuAnimator;
      
      private var var_375:ToolbarIconAnimator;
      
      private var var_532:Array;
      
      private var var_758:Array;
      
      private var var_757:String = "-1";
      
      private var var_2355:Boolean = true;
      
      private var var_943:Array;
      
      private var var_1112:Timer;
      
      private var var_1619:int;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_532 = new Array();
         var_758 = new Array();
         var_2284 = new Array();
         var_944 = new ToolbarIconBouncer(0.8,1);
         super();
         var_446 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_632 = param4;
         _events = param5;
         var_245 = param6;
         var_1112 = new Timer(40,40);
         var_1112.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_96 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_448,HabboWindowStyle.const_41,HabboWindowParam.const_40,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_96.background = true;
         var_96.alphaTreshold = 0;
         var_96.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_41,HabboWindowParam.const_41,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_96.addChild(_window);
         _window.addEventListener(WindowEvent.const_45,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1389[var_943.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1619;
      }
      
      public function get iconId() : String
      {
         return var_632;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_768 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_36 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_96 == null || _window == null)
         {
            return;
         }
         var_96.width = _window.width;
         var_96.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_84 = (0 - 0) / 2;
            _y = var_768 + (0 - 0) / 2;
         }
         else
         {
            var_84 = var_768 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_96.x = var_84;
         var_96.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_96 != null)
         {
            var_96.dispose();
            var_96 = null;
         }
         var_532 = null;
         var_758 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_245 = null;
         var_375 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_532.indexOf(param1) < 0)
         {
            var_532.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_758.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_942)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_245)
               {
                  var_245.repositionWindow(var_632,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_58);
                  _loc4_.iconId = var_632;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_941;
                  }
               }
               break;
            case WindowMouseEvent.const_29:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_757;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_532.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_758[var_532.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_942 = param1;
         if(var_96 != null)
         {
            var_96.visible = var_942;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_96 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_96.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_96.toolTipCaption = "${toolbar.icon.tooltip." + var_1620.toLowerCase() + "}";
         }
         var_96.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_245 != null)
         {
            var_245.animateWindowIn(this,param1,param2,var_632,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_375 != null && _window != null)
         {
            var_375.update(_window);
            if(var_375.hasNextState())
            {
               state = var_375.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1389 = new Array();
         var_943 = new Array();
         var_1620 = param1.@id;
         var_1619 = int(param1.@window_offset_from_icon);
         var_1621 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_941 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_757 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_943.push(_loc5_.id);
               var_1389.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_941 == "-1")
                  {
                     var_941 = _loc5_.id;
                  }
                  if(var_757 == "-1")
                  {
                     var_757 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_36 = var_757;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_245 != null)
         {
            var_245.hideWindow(param1,param2,var_632,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_245 != null)
         {
            var_245.positionWindow(this,param1,param2,var_632,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_245 != null)
         {
            var_245.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_942;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_944 != null && _window != null)
         {
            var_944.update();
            _window.y = var_944.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_631 != null)
         {
            var_631.stop();
            var_631 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_942)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_375 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_84,_y,_bitmapData);
            if(false)
            {
               var_631 = new Timer(_loc1_.timer);
               var_631.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_631.start();
            }
            if(_loc1_.bounce)
            {
               var_944.reset(-7);
               var_1112.reset();
               var_1112.start();
            }
         }
         else
         {
            var_375 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1621 + var_446.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_36);
      }
      
      public function get window() : IWindow
      {
         return var_96;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_758[var_532.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_446;
      }
   }
}

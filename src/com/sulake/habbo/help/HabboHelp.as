package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_1968:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_131:TutorialUI;
      
      private var var_699:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_58:HelpUI;
      
      private var var_700:IHabboConfigurationManager;
      
      private var var_182:IHabboToolbar;
      
      private var var_581:HotelMergeUI;
      
      private var var_315:IHabboCommunicationManager;
      
      private var var_853:FaqIndex;
      
      private var var_1969:String = "";
      
      private var var_1043:IncomingMessages;
      
      private var var_1242:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1242 = new CallForHelpData();
         var_1968 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_853 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_182;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_58 != null)
         {
            var_58.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_58 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_58.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_131 != null)
         {
            var_131.dispose();
            var_131 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1969;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_58 != null)
         {
            var_58.dispose();
            var_58 = null;
         }
         if(var_131 != null)
         {
            var_131.dispose();
            var_131 = null;
         }
         if(var_581)
         {
            var_581.dispose();
            var_581 = null;
         }
         if(var_853 != null)
         {
            var_853.dispose();
            var_853 = null;
         }
         var_1043 = null;
         if(var_182)
         {
            var_182.release(new IIDHabboToolbar());
            var_182 = null;
         }
         if(var_699)
         {
            var_699.release(new IIDHabboLocalizationManager());
            var_699 = null;
         }
         if(var_315)
         {
            var_315.release(new IIDHabboCommunicationManager());
            var_315 = null;
         }
         if(var_700)
         {
            var_700.release(new IIDHabboConfigurationManager());
            var_700 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_699;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_96:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(true);
               }
               if(var_131 != null)
               {
                  var_131.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_100:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(false);
               }
               if(var_131 != null)
               {
                  var_131.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_1968;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_581)
         {
            var_581 = new HotelMergeUI(this);
         }
         var_581.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_131 == null && _assetLibrary != null && _windowManager != null)
         {
            var_131 = new TutorialUI(this);
         }
         return var_131 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_58 == null && _assetLibrary != null && _windowManager != null)
         {
            var_58 = new HelpUI(this,_assetLibrary,_windowManager,var_699,var_182);
         }
         return var_58 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1242;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1242.reportedUserId = param1;
         var_1242.reportedUserName = param2;
         var_58.showUI(HabboHelpViewEnum.const_295);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1969 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_182 != null)
         {
            var_182.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_132,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_699 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_131 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_131.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_315 = IHabboCommunicationManager(param2);
         var_1043 = new IncomingMessages(this,var_315);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_58 != null)
         {
            var_58.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_58 != null)
         {
            var_58.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_315 != null && param1 != null)
         {
            var_315.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_853;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_182 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_700 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_131;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_84)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_58)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_581;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_96,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_100,onRoomSessionEvent);
         var_182.events.addEventListener(HabboToolbarEvent.const_84,onHabboToolbarEvent);
         var_182.events.addEventListener(HabboToolbarEvent.const_58,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_700 == null)
         {
            return param1;
         }
         return var_700.getKey(param1,param2,param3);
      }
   }
}

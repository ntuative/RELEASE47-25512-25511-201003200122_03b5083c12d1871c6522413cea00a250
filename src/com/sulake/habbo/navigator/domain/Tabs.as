package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_606:int = 6;
      
      public static const const_232:int = 5;
      
      public static const const_626:int = 2;
      
      public static const const_305:int = 9;
      
      public static const const_318:int = 4;
      
      public static const const_257:int = 2;
      
      public static const const_571:int = 4;
      
      public static const const_194:int = 8;
      
      public static const const_535:int = 7;
      
      public static const const_264:int = 3;
      
      public static const const_287:int = 1;
      
      public static const const_221:int = 5;
      
      public static const const_370:int = 12;
      
      public static const const_328:int = 1;
      
      public static const const_732:int = 11;
      
      public static const const_629:int = 3;
      
      public static const const_1576:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_412:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_412 = new Array();
         var_412.push(new Tab(_navigator,const_287,const_370,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_452));
         var_412.push(new Tab(_navigator,const_257,const_328,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_452));
         var_412.push(new Tab(_navigator,const_318,const_732,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_804));
         var_412.push(new Tab(_navigator,const_264,const_232,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_452));
         var_412.push(new Tab(_navigator,const_221,const_194,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_601));
         setSelectedTab(const_287);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_412)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_412)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_412)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_318;
      }
      
      public function get tabs() : Array
      {
         return var_412;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
